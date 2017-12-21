use CourseProject;

go
Alter Procedure InsertClient
(
	@ClientName nvarchar(40),
	@ClientCityId integer,
	@ClientAddress nvarchar(80),
	@PassportNumber nvarchar(25),
	@PhoneNumber varchar(20),
	@UserName varchar(20),
	@Password varchar(20)
)
As
Begin
	INSERT INTO Clients (name, city_id, client_address, passport_number, 
		phone_number, username, client_password) 
	VALUES (@ClientName, @ClientCityId, @ClientAddress, @PassportNumber, 
		@PhoneNumber, @UserName, @Password)
	EXEC RegisterClient @UserName, @Password, 'db_client'
End
GO
ALTER PROCEDURE SelectCurrentClient
(
	@ReturnValue integer OUTPUT
)
AS
BEGIN
	SET @ReturnValue = (
		SELECT client_id
		FROM Clients
		WHERE clients.username = SUSER_NAME(SUSER_ID()))
END
go
Alter Procedure InsertBankAccount
(
	@Interest decimal(7,4)
)
As
Begin
	DECLARE @ClientId integer
	exec SelectCurrentClient @ClientId OUTPUT
	
	INSERT INTO BankAccounts (client_id,balance,interest)
	VALUES (@ClientId, 0, @Interest)
End
GO
Alter Procedure SelectClientsWithPassport
(
	@PassportNumber nvarchar(25)
)
As
Begin
	SELECT count(*) FROM Clients WHERE CLients.passport_number = @PassportNumber
End
GO
Alter Procedure InsertBankAccountUsingPassport
(
	@PassportNumber nvarchar(25),
	@Interest decimal(7,4)
)
As
Begin
	DECLARE @ClientId integer

	SELECT @ClientId = Clients.client_id FROM Clients WHERE Clients.passport_number = @PassportNumber
	EXEC InsertBankAccount @ClientId,@Interest
End
GO
Alter Procedure RegisterClient
(
	@UserName nvarchar(20),
	@Password nvarchar(20),
	@Role nvarchar(20)
)
As
Begin
	DECLARE @SQL NVARCHAR(1500);

  set @SQL =  'create login ' + @UserName + 
               ' with password = ''' + @Password + ''';'
   EXECUTE(@SQL);
   set @SQL = 'create user ' + @UserName + ' for login ' +
				@UserName + '; exec sp_addrolemember '+ ''''+ @Role + '''' +
				',''' + @UserName + ''';'
	execute(@SQL);
ENd
GO
ALTER PROCEDURE SelectUserRole
(
	@UserName nvarchar(20),
	@ReturnValue nvarchar(256) OUTPUT
)
AS
BEGIN
	SET @ReturnValue = (SELECT roles.NAME
	FROM sys.database_role_members role_members
	JOIN sys.database_principals roles
	ON role_members.role_principal_id = roles.principal_id
	JOIN sys.database_principals members
	ON role_members.member_principal_id = members.principal_id
	WHERE members.NAME = @UserName and roles.NAME in ('db_client', 'db_manager', 'db_hr'))
END
GO
ALTER PROCEDURE SelectUserLogin
(
	@ReturnValue nvarchar(256) OUTPUT
)	
AS
BEGIN
	SET @ReturnValue = (SELECT suser_sname())
END
GO
ALTER PROCEDURE SelectUserBankAccounts
AS
BEGIN
	SELECT *
	FROM BankAccounts
	WHERE BankAccounts.client_id = (
	SELECT client_id
	FROM Clients
	WHERE clients.username = SUSER_NAME(SUSER_ID()))
END
GO
ALTER PROCEDURE TransferFunds
(
@sourceId INT, 
@destinationId INT,
@amount DECIMAL(18,0)
)
AS
BEGIN
	DECLARE @sourceCount INT, @destinationCount INT
	
	BEGIN TRANSACTION
	UPDATE BankAccounts
	SET balance = balance - @amount
	WHERE account_id = @sourceId

	SET @sourceCount = @@ROWCOUNT

	UPDATE BankAccounts
	SET balance = balance + @amount
	WHERE account_id = @destinationId

	SET @destinationCount = @@ROWCOUNT

	IF @destinationCount = @sourceCount
	BEGIN
		COMMIT
		exec insertTransactionToHistory @sourceId, @destinationId, @amount
	END
	ELSE
		ROLLBACK
END
GO
ALTER PROCEDURE SelectUserBankAccountsNumbers
AS
BEGIN
	SELECT account_id
	FROM BankAccounts
	WHERE BankAccounts.client_id = (
	SELECT client_id
	FROM Clients
	WHERE clients.username = SUSER_NAME(SUSER_ID()))
END
GO
ALTER PROCEDURE SelectCities
AS
BEGIN
	SELECT city_id, name
	FROM Cities
END
GO
ALTER PROCEDURE SelectBanksWhereCity
(
@cityId integer
)
AS
BEGIN
	SELECT bank_id, name
	FROM Banks
	WHERE Banks.city_id = @cityId
END
GO
ALTER PROCEDURE InsertEmployee
(
	@EmployeeName nvarchar(40),
	@BankId integer,
	@EmployeeAddress nvarchar(80),
	@Salary decimal(18,4),
	@PassportNumber nvarchar(25),
	@PhoneNumber varchar(20),
	@UserName varchar(20),
	@Password varchar(20),
	@PositionId integer
)
As
Begin
	DECLARE @RoleName varchar(40)

	SET @RoleName = (
		SELECT name 
		FROM Roles 
		WHERE role_id = (
			SELECT role_id
			FROM Positions
			WHERE position_id = @PositionId))

	INSERT INTO Employees (name, bank_id, employee_address, passport_number,
		salary, phone_number, username, employee_password, position_id)
	VALUES (@EmployeeName, @BankId, @EmployeeAddress, @PassportNumber, 
		@Salary, @PhoneNumber, @UserName, @Password, @PositionId)
	
	EXEC RegisterClient @UserName, @Password, @RoleName
End
GO
ALTER PROCEDURE SelectPositions
AS
BEGIN
	SELECT position_id, name
	FROM Positions
END
GO
ALTER PROCEDURE SelectUserTransactions
AS
BEGIN
	DECLARE @ClientId integer
	SET @ClientId = (
		SELECT client_id
		FROM Clients
		WHERE clients.username = SUSER_NAME(SUSER_ID()))

	select source_id, c1.name,  destination_id, c2.name, amount 
	from Transactions t
	inner join BankAccounts t1 on t1.account_id = source_id
	inner join BankAccounts t2 on t2.account_id = destination_id
	INNER JOIN Clients c1 ON c1.client_id = t1.client_id
	INNER JOIN Clients c2 ON c2.client_id = t2.client_id
	WHERE t1.client_id = @ClientId OR t2.client_id = @ClientId
END
GO
ALTER PROCEDURE InsertTransactionToHistory
(
	@SourceId integer,
	@DestinationId integer,
	@Amount decimal(18,4)
)
AS
BEGIN
	INSERT INTO Transactions(source_id, destination_id, amount)
	VALUES (@SourceId, @DestinationId, @Amount)
END