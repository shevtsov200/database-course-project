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
	EXEC RegisterClient @UserName, @Password
End

go
Alter Procedure InsertBankAccount
(
	@ClientId integer,
	@Interest decimal(7,4)
)
As
Begin
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
	@Password nvarchar(20)
)
As
Begin
	DECLARE @SQL NVARCHAR(1500);

  set @SQL =  'create login ' + @UserName + 
               ' with password = ''' + @Password + ''';'
   EXECUTE(@SQL);
   set @SQL = 'create user ' + @UserName + ' for login ' +
				@UserName + '; exec sp_addrolemember ''db_client''' +
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
	WHERE members.NAME = @UserName)
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
		COMMIT
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