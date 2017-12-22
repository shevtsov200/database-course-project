use CourseProject;

GO
-- Добавить клиента
ALTER PROCEDURE InsertClient
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
GO
-- Получить id клиента, который соединён с базой
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
-- Добавить банковский аккаунт
Alter Procedure InsertBankAccount
(
	@Interest decimal(7,4)
)
As
Begin
	DECLARE @ClientId integer
	exec SelectCurrentClient @ClientId OUTPUT
	
	INSERT INTO BankAccounts (client_id,balance,interest)
	VALUES (@ClientId, 15000, @Interest)
End
GO
-- Зарегистрировать клиента в базе данных
ALTER PROCEDURE RegisterClient
(
	@UserName varchar(20),
	@Password varchar(20)
)
AS
BEGIN
	DECLARE @SQL NVARCHAR(1500);

	set @SQL =  'create login ' + @UserName + 
               ' with password = ''' + @Password + ''';'
	EXECUTE(@SQL);
	set @SQL = 'create user ' + @UserName + ' for login ' +
				@UserName 
				+ '; exec sp_addrolemember '+ '''db_client''' +',''' + @UserName + ''';' 
	execute(@SQL);
END
GO
-- Зарегистрировать сотрудника в базе данных
ALTER Procedure RegisterEmployee
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
				@UserName 
				+ '; exec sp_addrolemember '+ ''''+ @Role + '''' +',''' + @UserName + ''';' 
	execute(@SQL);
END
GO
-- Получить роль пользователя, соединённого с базой данных
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
-- Получить логин пользователя, соединённого с базой данных
ALTER PROCEDURE SelectUserLogin
(
	@ReturnValue nvarchar(256) OUTPUT
)	
AS
BEGIN
	SET @ReturnValue = (SELECT suser_sname())
END
GO
-- Получить все банковские счета клиента, соединённого с базой данных
ALTER PROCEDURE SelectUserBankAccounts
AS
BEGIN
	SELECT account_id, balance, interest
	FROM BankAccounts
	WHERE BankAccounts.client_id = (
	SELECT client_id
	FROM Clients
	WHERE clients.username = SUSER_NAME(SUSER_ID()))
END
GO
-- Совершить транзакцию
ALTER PROCEDURE TransferFunds
(
@sourceId INT, 
@destinationId INT,
@amount DECIMAL(18,0)
)
AS
BEGIN
	DECLARE @sourceCount INT, @destinationCount INT
	
	IF (SELECT balance FROM BankAccounts WHERE account_id = @sourceId) < @amount
		RETURN

	BEGIN TRANSACTION

	UPDATE BankAccounts
	SET balance = balance - @amount
	WHERE account_id = @sourceId

	SET @sourceCount = @@ROWCOUNT

	UPDATE BankAccounts
	SET balance = balance + @amount
	WHERE account_id = @destinationId

	SET @destinationCount = @@ROWCOUNT

	IF (SELECT balance FROM BankAccounts WHERE account_id = @sourceId) < @amount
		ROLLBACK
	ELSE IF @destinationCount = @sourceCount
	BEGIN
		COMMIT
		exec insertTransactionToHistory @sourceId, @destinationId, @amount
	END
	ELSE
		ROLLBACK
END
GO
-- Получить id всех банковских счетов клиента, соединённого с базой данных
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
-- Получить города
ALTER PROCEDURE SelectCities
AS
BEGIN
	SELECT city_id, name
	FROM Cities
END
GO
-- Получить все банки в городе
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
-- Добавить сотрудника в базу данных
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
	
	EXEC RegisterEmployee @UserName, @Password, @RoleName
End
GO
-- Получить все должности
ALTER PROCEDURE SelectPositions
AS
BEGIN
	SELECT position_id, name
	FROM Positions
END
GO
-- Получить исторю транзакций пользователя, соединённого с базой данных
ALTER PROCEDURE SelectUserTransactions
AS
BEGIN
	DECLARE @ClientId integer
	SET @ClientId = (
		SELECT client_id
		FROM Clients
		WHERE clients.username = SUSER_NAME(SUSER_ID()))

	select source_id, c1.name as 'sender name',  destination_id, c2.name as 'recipient name', amount 
	from Transactions t
	inner join BankAccounts t1 on t1.account_id = source_id
	inner join BankAccounts t2 on t2.account_id = destination_id
	INNER JOIN Clients c1 ON c1.client_id = t1.client_id
	INNER JOIN Clients c2 ON c2.client_id = t2.client_id
	WHERE t1.client_id = @ClientId OR t2.client_id = @ClientId
END
GO
-- Добавить транзакцию в историю транзакций
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
GO
-- Получить всех менеджеров
ALTER PROCEDURE SelectManagers
AS
BEGIN
	SELECT employee_id, name
	FROM Employees
	WHERE Employees.position_id = 1
END
GO
-- Добавить отзыв в базу данных
ALTER PROCEDURE InsertFeedback
(
	@ManagerId integer,
	@FeedbackText nvarchar(4000),
	@Rating integer
)
AS
BEGIN
	DECLARE @ClientId integer
	exec SelectCurrentClient @ClientId OUTPUT
	
	DECLARE @CurrentDate date
	SET @CurrentDate = GETDATE()

	INSERT INTO Feedback (manager_id, feedback_text, rating, client_id,feedback_date)
	VALUES (@ManagerId, @FeedbackText, @Rating, @ClientId,@CurrentDate) 
END
GO
-- Получить id менеджера, соединённого с базой данных
ALTER PROCEDURE SelectCurrentManager
(
	@ReturnValue integer OUTPUT
)
AS
BEGIN
	SET @ReturnValue = (
		SELECT employee_id
		FROM Employees
		WHERE username = SUSER_NAME(SUSER_ID()))
END
GO
-- Получить все отызвы о менеджере, соединённом с базой данных
ALTER PROCEDURE SelectCurrentManagerFeedback
AS
BEGIN
	DECLARE @ManagerId integer
	exec SelectCurrentManager @ManagerId OUTPUT

	SELECT feedback_date, rating, name, feedback_text
	FROM Feedback
	JOIN Clients ON Clients.client_id = Feedback.Client_id
	WHERE manager_id = @ManagerId
END
GO
-- Получить менеджеров и суммарный рейтинг для каждого
ALTER PROCEDURE SelectManagersRating
AS
BEGIN
	SELECT name, ISNULL(t.rating,0) as rating
	FROM Employees
	JOIN
	(SELECT employee_id, sum(rating) as rating
	FROM Employees
	LEFT JOIN Feedback ON Employees.employee_id = Feedback.manager_id
	WHERE position_id = 1
	GROUP BY employee_id) as t
	ON t.employee_id = Employees.employee_id
	ORDER BY t.rating DESC
END
GO
-- Получить всех сотрудников
ALTER PROCEDURE SelectEmployees
AS
BEGIN
	SELECT name, employee_id
	FROM Employees
END
GO
-- Уволить сотрудника
ALTER PROCEDURE DeleteEmployee
(
	@EmployeeId integer
)
AS
BEGIN
	DELETE FROM Employees
	WHERE employee_id = @EmployeeId
END
GO
ALTER PROCEDURE SelectClientInformation
(
	@ClientId integer
)
AS
BEGIN
	SELECT *
	FROM Clients
	WHERE client_id = @ClientId
END
GO
ALTER PROCEDURE SelectEmployeeInformation
(
	@EmployeeId integer
)
AS
BEGIN
	SELECT *
	FROM Employees
	WHERE employee_id = @EmployeeId
END
GO
ALTER PROCEDURE SelectClients
AS
BEGIN
	SELECT name, client_id
	FROM Clients
END
GO
CREATE PROCEDURE UpdateClient
(
	@ClientId int,
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
	UPDATE Clients
	SET name = @ClientName,
		city_id = @ClientCityId,
		client_address = @ClientAddress,
		passport_number = @PassportNumber,
		phone_number = @PhoneNumber,
		username = @UserName,
		client_password = @Password
	WHERE client_id = @ClientId
END
	/*INSERT INTO Clients (name, city_id, client_address, passport_number, 
		phone_number, username, client_password) 
	VALUES (@ClientName, @ClientCityId, @ClientAddress, @PassportNumber, 
		@PhoneNumber, @UserName, @Password)
	EXEC RegisterClient @UserName, @Password*/