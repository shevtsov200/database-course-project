USE [master]
GO
/****** Object:  Database [CourseProject]    Script Date: 12.12.2017 18:34:47 ******/
CREATE DATABASE [CourseProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CourseProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\CourseProject.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CourseProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\CourseProject_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CourseProject] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CourseProject].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CourseProject] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CourseProject] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CourseProject] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CourseProject] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CourseProject] SET ARITHABORT OFF 
GO
ALTER DATABASE [CourseProject] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CourseProject] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CourseProject] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CourseProject] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CourseProject] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CourseProject] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CourseProject] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CourseProject] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CourseProject] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CourseProject] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CourseProject] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CourseProject] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CourseProject] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CourseProject] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CourseProject] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CourseProject] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CourseProject] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CourseProject] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CourseProject] SET  MULTI_USER 
GO
ALTER DATABASE [CourseProject] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CourseProject] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CourseProject] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CourseProject] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [CourseProject]
GO
/****** Object:  User [nonquery]    Script Date: 12.12.2017 18:34:47 ******/
CREATE USER [nonquery] FOR LOGIN [nonquery] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [gt]    Script Date: 12.12.2017 18:34:47 ******/
CREATE USER [gt] FOR LOGIN [gt] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [bob]    Script Date: 12.12.2017 18:34:47 ******/
CREATE USER [bob] FOR LOGIN [bob] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_manager]    Script Date: 12.12.2017 18:34:47 ******/
CREATE ROLE [db_manager]
GO
/****** Object:  DatabaseRole [db_hr_administrator]    Script Date: 12.12.2017 18:34:47 ******/
CREATE ROLE [db_hr_administrator]
GO
/****** Object:  DatabaseRole [db_client]    Script Date: 12.12.2017 18:34:47 ******/
CREATE ROLE [db_client]
GO
ALTER ROLE [db_client] ADD MEMBER [nonquery]
GO
ALTER ROLE [db_client] ADD MEMBER [gt]
GO
ALTER ROLE [db_client] ADD MEMBER [bob]
GO
/****** Object:  Table [dbo].[BankAccounts]    Script Date: 12.12.2017 18:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BankAccounts](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[account_number] [varchar](16) NULL,
	[client_id] [int] NULL,
	[balance] [decimal](18, 0) NULL,
	[interest] [decimal](7, 4) NULL,
 CONSTRAINT [PK_BankAccounts] PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 12.12.2017 18:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[city_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](20) NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Clients]    Script Date: 12.12.2017 18:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clients](
	[client_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](40) NULL,
	[city_id] [int] NULL,
	[client_address] [nchar](80) NULL,
	[passport_number] [nchar](25) NULL,
	[phone_number] [varchar](20) NULL,
	[username] [nchar](20) NULL,
	[client_password] [nchar](20) NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 12.12.2017 18:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[employee_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](40) NULL,
	[salary] [int] NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Loans]    Script Date: 12.12.2017 18:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Loans](
	[loan_id] [int] IDENTITY(1,1) NOT NULL,
	[account_number] [varchar](16) NULL,
	[credit] [decimal](18, 0) NULL,
	[interest] [decimal](7, 4) NULL,
	[loan_term] [int] NULL,
 CONSTRAINT [PK_Loans] PRIMARY KEY CLUSTERED 
(
	[loan_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 12.12.2017 18:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Transactions](
	[transfer_id] [int] IDENTITY(1,1) NOT NULL,
	[source_acc_num] [varchar](16) NULL,
	[destination_acc_num] [varchar](16) NULL,
	[amount] [decimal](18, 0) NULL,
 CONSTRAINT [PK_BankTransfers] PRIMARY KEY CLUSTERED 
(
	[transfer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[BankAccounts]  WITH CHECK ADD  CONSTRAINT [CK_BankAccounts] CHECK  (([interest]>=(0) AND [interest]<=(1)))
GO
ALTER TABLE [dbo].[BankAccounts] CHECK CONSTRAINT [CK_BankAccounts]
GO
ALTER TABLE [dbo].[Loans]  WITH CHECK ADD  CONSTRAINT [CK_Loans] CHECK  (([interest]>=(0) AND [interest]<=(1)))
GO
ALTER TABLE [dbo].[Loans] CHECK CONSTRAINT [CK_Loans]
GO
/****** Object:  StoredProcedure [dbo].[InsertBankAccount]    Script Date: 12.12.2017 18:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[InsertBankAccount]
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
/****** Object:  StoredProcedure [dbo].[InsertBankAccountUsingPassport]    Script Date: 12.12.2017 18:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[InsertBankAccountUsingPassport]
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
/****** Object:  StoredProcedure [dbo].[InsertClient]    Script Date: 12.12.2017 18:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[InsertClient]
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
/****** Object:  StoredProcedure [dbo].[RegisterClient]    Script Date: 12.12.2017 18:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[RegisterClient]
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
/****** Object:  StoredProcedure [dbo].[SelectClientsWithPassport]    Script Date: 12.12.2017 18:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SelectClientsWithPassport]
(
	@PassportNumber nvarchar(25)
)
As
Begin
	SELECT count(*) FROM Clients WHERE CLients.passport_number = @PassportNumber
End

GO
/****** Object:  StoredProcedure [dbo].[SelectUserBankAccounts]    Script Date: 12.12.2017 18:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectUserBankAccounts]
AS
BEGIN
	SELECT *
	FROM BankAccounts
	WHERE BankAccounts.client_id = (
	SELECT client_id
	FROM Clients
	WHERE clients.username = SUSER_NAME(SUSER_ID()))

	SELECT ORIGINAL_LOGIN();
SELECT SUSER_NAME(SUSER_ID());
SELECT SUSER_SNAME(SUSER_SID());
SELECT SYSTEM_USER;
SELECT CURRENT_USER;
SELECT USER_NAME(USER_ID());
SELECT SESSION_USER;
SELECT USER;
END
GO
/****** Object:  StoredProcedure [dbo].[SelectUserLogin]    Script Date: 12.12.2017 18:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectUserLogin]
(
	@ReturnValue nvarchar(256) OUTPUT
)	
AS
BEGIN
	SET @ReturnValue = (SELECT suser_sname())
END

GO
/****** Object:  StoredProcedure [dbo].[SelectUserRole]    Script Date: 12.12.2017 18:34:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectUserRole]
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
USE [master]
GO
ALTER DATABASE [CourseProject] SET  READ_WRITE 
GO
