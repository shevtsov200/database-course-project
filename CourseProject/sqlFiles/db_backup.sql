USE [CourseProject]
GO
/****** Object:  StoredProcedure [dbo].[TransferFunds]    Script Date: 22.12.2017 1:22:47 ******/
DROP PROCEDURE [dbo].[TransferFunds]
GO
/****** Object:  StoredProcedure [dbo].[SelectUserTransactions]    Script Date: 22.12.2017 1:22:47 ******/
DROP PROCEDURE [dbo].[SelectUserTransactions]
GO
/****** Object:  StoredProcedure [dbo].[SelectUserRole]    Script Date: 22.12.2017 1:22:47 ******/
DROP PROCEDURE [dbo].[SelectUserRole]
GO
/****** Object:  StoredProcedure [dbo].[SelectUserLogin]    Script Date: 22.12.2017 1:22:47 ******/
DROP PROCEDURE [dbo].[SelectUserLogin]
GO
/****** Object:  StoredProcedure [dbo].[SelectUserBankAccountsNumbers]    Script Date: 22.12.2017 1:22:47 ******/
DROP PROCEDURE [dbo].[SelectUserBankAccountsNumbers]
GO
/****** Object:  StoredProcedure [dbo].[SelectUserBankAccounts]    Script Date: 22.12.2017 1:22:47 ******/
DROP PROCEDURE [dbo].[SelectUserBankAccounts]
GO
/****** Object:  StoredProcedure [dbo].[SelectPositions]    Script Date: 22.12.2017 1:22:47 ******/
DROP PROCEDURE [dbo].[SelectPositions]
GO
/****** Object:  StoredProcedure [dbo].[SelectManagersRating]    Script Date: 22.12.2017 1:22:47 ******/
DROP PROCEDURE [dbo].[SelectManagersRating]
GO
/****** Object:  StoredProcedure [dbo].[SelectManagers]    Script Date: 22.12.2017 1:22:47 ******/
DROP PROCEDURE [dbo].[SelectManagers]
GO
/****** Object:  StoredProcedure [dbo].[SelectEmployees]    Script Date: 22.12.2017 1:22:47 ******/
DROP PROCEDURE [dbo].[SelectEmployees]
GO
/****** Object:  StoredProcedure [dbo].[SelectCurrentManagerFeedback]    Script Date: 22.12.2017 1:22:47 ******/
DROP PROCEDURE [dbo].[SelectCurrentManagerFeedback]
GO
/****** Object:  StoredProcedure [dbo].[SelectCurrentManager]    Script Date: 22.12.2017 1:22:47 ******/
DROP PROCEDURE [dbo].[SelectCurrentManager]
GO
/****** Object:  StoredProcedure [dbo].[SelectCurrentClient]    Script Date: 22.12.2017 1:22:47 ******/
DROP PROCEDURE [dbo].[SelectCurrentClient]
GO
/****** Object:  StoredProcedure [dbo].[SelectClientsWithPassport]    Script Date: 22.12.2017 1:22:47 ******/
DROP PROCEDURE [dbo].[SelectClientsWithPassport]
GO
/****** Object:  StoredProcedure [dbo].[SelectCities]    Script Date: 22.12.2017 1:22:47 ******/
DROP PROCEDURE [dbo].[SelectCities]
GO
/****** Object:  StoredProcedure [dbo].[SelectBanksWhereCity]    Script Date: 22.12.2017 1:22:47 ******/
DROP PROCEDURE [dbo].[SelectBanksWhereCity]
GO
/****** Object:  StoredProcedure [dbo].[RegisterEmployee]    Script Date: 22.12.2017 1:22:47 ******/
DROP PROCEDURE [dbo].[RegisterEmployee]
GO
/****** Object:  StoredProcedure [dbo].[RegisterClient]    Script Date: 22.12.2017 1:22:47 ******/
DROP PROCEDURE [dbo].[RegisterClient]
GO
/****** Object:  StoredProcedure [dbo].[InsertTransactionToHistory]    Script Date: 22.12.2017 1:22:47 ******/
DROP PROCEDURE [dbo].[InsertTransactionToHistory]
GO
/****** Object:  StoredProcedure [dbo].[InsertFeedback]    Script Date: 22.12.2017 1:22:47 ******/
DROP PROCEDURE [dbo].[InsertFeedback]
GO
/****** Object:  StoredProcedure [dbo].[InsertEmployee]    Script Date: 22.12.2017 1:22:47 ******/
DROP PROCEDURE [dbo].[InsertEmployee]
GO
/****** Object:  StoredProcedure [dbo].[InsertClient]    Script Date: 22.12.2017 1:22:47 ******/
DROP PROCEDURE [dbo].[InsertClient]
GO
/****** Object:  StoredProcedure [dbo].[InsertBankAccountUsingPassport]    Script Date: 22.12.2017 1:22:47 ******/
DROP PROCEDURE [dbo].[InsertBankAccountUsingPassport]
GO
/****** Object:  StoredProcedure [dbo].[InsertBankAccount]    Script Date: 22.12.2017 1:22:47 ******/
DROP PROCEDURE [dbo].[InsertBankAccount]
GO
/****** Object:  StoredProcedure [dbo].[DeleteEmployee]    Script Date: 22.12.2017 1:22:47 ******/
DROP PROCEDURE [dbo].[DeleteEmployee]
GO
ALTER TABLE [dbo].[BankAccounts] DROP CONSTRAINT [CK_BankAccounts]
GO
ALTER TABLE [dbo].[Transactions] DROP CONSTRAINT [FK_Transactions_BankAccounts1]
GO
ALTER TABLE [dbo].[Transactions] DROP CONSTRAINT [FK_Transactions_BankAccounts]
GO
ALTER TABLE [dbo].[Positions] DROP CONSTRAINT [FK_Positions_Roles]
GO
ALTER TABLE [dbo].[Feedback] DROP CONSTRAINT [FK_Feedback_Employees]
GO
ALTER TABLE [dbo].[Feedback] DROP CONSTRAINT [FK_Feedback_Clients]
GO
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_Employees_Positions]
GO
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [FK_Employees_Banks]
GO
ALTER TABLE [dbo].[Clients] DROP CONSTRAINT [FK_Clients_Cities]
GO
ALTER TABLE [dbo].[Banks] DROP CONSTRAINT [FK_Cities_Banks]
GO
ALTER TABLE [dbo].[BankAccounts] DROP CONSTRAINT [FK_BankAccounts_Clients]
GO
/****** Object:  Index [U_Username]    Script Date: 22.12.2017 1:22:47 ******/
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [U_Username]
GO
/****** Object:  Index [U_Passport]    Script Date: 22.12.2017 1:22:47 ******/
ALTER TABLE [dbo].[Employees] DROP CONSTRAINT [U_Passport]
GO
/****** Object:  Index [U_ClientUsername]    Script Date: 22.12.2017 1:22:47 ******/
ALTER TABLE [dbo].[Clients] DROP CONSTRAINT [U_ClientUsername]
GO
/****** Object:  Index [U_CLientPassport]    Script Date: 22.12.2017 1:22:47 ******/
ALTER TABLE [dbo].[Clients] DROP CONSTRAINT [U_CLientPassport]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 22.12.2017 1:22:47 ******/
DROP TABLE [dbo].[Transactions]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 22.12.2017 1:22:47 ******/
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[Positions]    Script Date: 22.12.2017 1:22:47 ******/
DROP TABLE [dbo].[Positions]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 22.12.2017 1:22:47 ******/
DROP TABLE [dbo].[Feedback]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 22.12.2017 1:22:47 ******/
DROP TABLE [dbo].[Employees]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 22.12.2017 1:22:47 ******/
DROP TABLE [dbo].[Clients]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 22.12.2017 1:22:47 ******/
DROP TABLE [dbo].[Cities]
GO
/****** Object:  Table [dbo].[Banks]    Script Date: 22.12.2017 1:22:47 ******/
DROP TABLE [dbo].[Banks]
GO
/****** Object:  Table [dbo].[BankAccounts]    Script Date: 22.12.2017 1:22:47 ******/
DROP TABLE [dbo].[BankAccounts]
GO

DECLARE @RoleName sysname
set @RoleName = N'db_client'

IF @RoleName <> N'public' and (select is_fixed_role from sys.database_principals where name = @RoleName) = 0
BEGIN
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id
		from sys.database_role_members
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName AND type = 'R'))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName
	
	DECLARE @SQL NVARCHAR(4000)

	WHILE @@FETCH_STATUS = 0
	BEGIN
		
		SET @SQL = 'ALTER ROLE '+ QUOTENAME(@RoleName,'[') +' DROP MEMBER '+ QUOTENAME(@RoleMemberName,'[')
		EXEC(@SQL)
		
		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
END
/****** Object:  DatabaseRole [db_client]    Script Date: 22.12.2017 1:22:47 ******/
DROP ROLE [db_client]
GO

DECLARE @RoleName sysname
set @RoleName = N'db_HR'

IF @RoleName <> N'public' and (select is_fixed_role from sys.database_principals where name = @RoleName) = 0
BEGIN
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id
		from sys.database_role_members
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName AND type = 'R'))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName
	
	DECLARE @SQL NVARCHAR(4000)

	WHILE @@FETCH_STATUS = 0
	BEGIN
		
		SET @SQL = 'ALTER ROLE '+ QUOTENAME(@RoleName,'[') +' DROP MEMBER '+ QUOTENAME(@RoleMemberName,'[')
		EXEC(@SQL)
		
		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
END
/****** Object:  DatabaseRole [db_HR]    Script Date: 22.12.2017 1:22:47 ******/
DROP ROLE [db_HR]
GO

DECLARE @RoleName sysname
set @RoleName = N'db_hr_administrator'

IF @RoleName <> N'public' and (select is_fixed_role from sys.database_principals where name = @RoleName) = 0
BEGIN
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id
		from sys.database_role_members
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName AND type = 'R'))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName
	
	DECLARE @SQL NVARCHAR(4000)

	WHILE @@FETCH_STATUS = 0
	BEGIN
		
		SET @SQL = 'ALTER ROLE '+ QUOTENAME(@RoleName,'[') +' DROP MEMBER '+ QUOTENAME(@RoleMemberName,'[')
		EXEC(@SQL)
		
		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
END
/****** Object:  DatabaseRole [db_hr_administrator]    Script Date: 22.12.2017 1:22:47 ******/
DROP ROLE [db_hr_administrator]
GO

DECLARE @RoleName sysname
set @RoleName = N'db_manager'

IF @RoleName <> N'public' and (select is_fixed_role from sys.database_principals where name = @RoleName) = 0
BEGIN
	DECLARE @RoleMemberName sysname
	DECLARE Member_Cursor CURSOR FOR
	select [name]
	from sys.database_principals 
	where principal_id in ( 
		select member_principal_id
		from sys.database_role_members
		where role_principal_id in (
			select principal_id
			FROM sys.database_principals where [name] = @RoleName AND type = 'R'))

	OPEN Member_Cursor;

	FETCH NEXT FROM Member_Cursor
	into @RoleMemberName
	
	DECLARE @SQL NVARCHAR(4000)

	WHILE @@FETCH_STATUS = 0
	BEGIN
		
		SET @SQL = 'ALTER ROLE '+ QUOTENAME(@RoleName,'[') +' DROP MEMBER '+ QUOTENAME(@RoleMemberName,'[')
		EXEC(@SQL)
		
		FETCH NEXT FROM Member_Cursor
		into @RoleMemberName
	END;

	CLOSE Member_Cursor;
	DEALLOCATE Member_Cursor;
END
/****** Object:  DatabaseRole [db_manager]    Script Date: 22.12.2017 1:22:47 ******/
DROP ROLE [db_manager]
GO
/****** Object:  User [adsfasd]    Script Date: 22.12.2017 1:22:47 ******/
DROP USER [adsfasd]
GO
/****** Object:  User [client]    Script Date: 22.12.2017 1:22:47 ******/
DROP USER [client]
GO
/****** Object:  User [gfgfgfg]    Script Date: 22.12.2017 1:22:47 ******/
DROP USER [gfgfgfg]
GO
/****** Object:  User [gt]    Script Date: 22.12.2017 1:22:47 ******/
DROP USER [gt]
GO
/****** Object:  User [hr]    Script Date: 22.12.2017 1:22:47 ******/
DROP USER [hr]
GO
/****** Object:  User [mr]    Script Date: 22.12.2017 1:22:47 ******/
DROP USER [mr]
GO
/****** Object:  User [mrB]    Script Date: 22.12.2017 1:22:47 ******/
DROP USER [mrB]
GO
/****** Object:  User [mrC]    Script Date: 22.12.2017 1:22:47 ******/
DROP USER [mrC]
GO
/****** Object:  User [mrT]    Script Date: 22.12.2017 1:22:47 ******/
DROP USER [mrT]
GO
/****** Object:  User [sdfdsds]    Script Date: 22.12.2017 1:22:47 ******/
DROP USER [sdfdsds]
GO
/****** Object:  User [toddot]    Script Date: 22.12.2017 1:22:47 ******/
DROP USER [toddot]
GO
USE [master]
GO
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [##MS_PolicyEventProcessingLogin##]
GO
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [##MS_PolicyTsqlExecutionLogin##]
GO
/****** Object:  Login [adsfasd]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [adsfasd]
GO
/****** Object:  Login [ASUSN551JM\user]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [ASUSN551JM\user]
GO
/****** Object:  Login [BUILTIN\Пользователи]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [BUILTIN\Пользователи]
GO
/****** Object:  Login [client]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [client]
GO
/****** Object:  Login [fgsdfg]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [fgsdfg]
GO
/****** Object:  Login [fgsdfgyytty]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [fgsdfgyytty]
GO
/****** Object:  Login [fgsdfgyyttytt]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [fgsdfgyyttytt]
GO
/****** Object:  Login [fgsdfgyyttyyyy]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [fgsdfgyyttyyyy]
GO
/****** Object:  Login [fgsdfgyyttyyyyu]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [fgsdfgyyttyyyyu]
GO
/****** Object:  Login [gfgfgfg]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [gfgfgfg]
GO
/****** Object:  Login [gt]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [gt]
GO
/****** Object:  Login [hr]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [hr]
GO
/****** Object:  Login [mr]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [mr]
GO
/****** Object:  Login [mrB]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [mrB]
GO
/****** Object:  Login [mrC]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [mrC]
GO
/****** Object:  Login [mrT]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [mrT]
GO
/****** Object:  Login [NT AUTHORITY\СИСТЕМА]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [NT AUTHORITY\СИСТЕМА]
GO
/****** Object:  Login [NT Service\MSSQLSERVER]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [NT Service\MSSQLSERVER]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [NT SERVICE\SQLWriter]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [NT SERVICE\Winmgmt]
GO
/****** Object:  Login [sdfdsds]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [sdfdsds]
GO
/****** Object:  Login [toddot]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [toddot]
GO
/****** Object:  Login [trtrt]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [trtrt]
GO
/****** Object:  Login [trtrtt]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [trtrtt]
GO
/****** Object:  Login [tttttttt]    Script Date: 22.12.2017 1:22:47 ******/
DROP LOGIN [tttttttt]
GO
/****** Object:  Database [CourseProject]    Script Date: 22.12.2017 1:22:47 ******/
DROP DATABASE [CourseProject]
GO
/****** Object:  Database [CourseProject]    Script Date: 22.12.2017 1:22:47 ******/
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
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [tttttttt]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [tttttttt] WITH PASSWORD=N'àI¼zòV¶?Ù1Y»RªÃ)Ýú"#Ãð1Þj', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [tttttttt] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [trtrtt]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [trtrtt] WITH PASSWORD=N'ÄhMuÐ¾üpý3ØsE6eÕe¹3GÆ¬RW²¶u', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [trtrtt] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [trtrt]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [trtrt] WITH PASSWORD=N'UÔØUhKYzö#\NJò°-mðK.Y`Öé1D', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [trtrt] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [toddot]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [toddot] WITH PASSWORD=N'äiØI@Èg~<?¦83mäV¿
k1ÛkB±', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [toddot] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [sdfdsds]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [sdfdsds] WITH PASSWORD=N'Aê»¾plJ7õmà÷ªNµ¹ÚJSF"WF', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [sdfdsds] DISABLE
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT Service\MSSQLSERVER]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [NT Service\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\СИСТЕМА]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [NT AUTHORITY\СИСТЕМА] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [mrT]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [mrT] WITH PASSWORD=N'{«=õ+g=¼ÏçSkàC±"µKtÙÒË9', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [mrT] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [mrC]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [mrC] WITH PASSWORD=N'Åì¨Rägú-F\Ä*×nÿ(Z£iæCBndt^Î', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [mrC] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [mrB]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [mrB] WITH PASSWORD=N'ô©99¢_~&[o8®rñt:aÐôAºc', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [mrB] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [mr]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [mr] WITH PASSWORD=N'ÚM2³cÑwã²V(gælMÅHPÄ½ªÔ+8Ð', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [mr] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [hr]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [hr] WITH PASSWORD=N'\D¶W$­Jicú;é´vÿ4Ð©éÖ³©Ê', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [hr] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [gt]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [gt] WITH PASSWORD=N'+3&Òëeå®²É6?
ÙgÎ·H·4R!y', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [gt] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [gfgfgfg]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [gfgfgfg] WITH PASSWORD=N'ûÊ éL©è>uÒ<q!¨O
´`SÖ|ÌzÂ)', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [gfgfgfg] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [fgsdfgyyttyyyyu]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [fgsdfgyyttyyyyu] WITH PASSWORD=N'4ø2Ç`¿À·y¸ / ''¤!ª,Ö(&¿', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [fgsdfgyyttyyyyu] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [fgsdfgyyttyyyy]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [fgsdfgyyttyyyy] WITH PASSWORD=N'×#àäãeý:%8''¨C}ææ+ûFyº§', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [fgsdfgyyttyyyy] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [fgsdfgyyttytt]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [fgsdfgyyttytt] WITH PASSWORD=N'SûÍ ''Ct¨Ãw$C 7CÇRÂW"GlãCRÀ', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [fgsdfgyyttytt] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [fgsdfgyytty]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [fgsdfgyytty] WITH PASSWORD=N'GQhákå*{yi´yó4!µRÒ/Ç', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [fgsdfgyytty] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [fgsdfg]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [fgsdfg] WITH PASSWORD=N'AÛ5	Ûk:M­Èø©®?bñíÜýr;ç', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [fgsdfg] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [client]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [client] WITH PASSWORD=N'¶³ÙHÞX=¯B~ÃðÁKÄÔûpÄ', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [client] DISABLE
GO
/****** Object:  Login [BUILTIN\Пользователи]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [BUILTIN\Пользователи] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [ASUSN551JM\user]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [ASUSN551JM\user] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [adsfasd]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [adsfasd] WITH PASSWORD=N'0ÙTñ*DDvGrmÕkönù_Ôµ,}_ô', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [adsfasd] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'@;Þ!.Öá¤s:Éc¼!''c¼É±|@°Å', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 22.12.2017 1:22:47 ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'«Wª)[[Ý)dñ`y´;ÈØ5íVôcÞ', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER AUTHORIZATION ON DATABASE::[CourseProject] TO [ASUSN551JM\user]
GO
ALTER SERVER ROLE [securityadmin] ADD MEMBER [tttttttt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQLSERVER]
GO
ALTER SERVER ROLE [securityadmin] ADD MEMBER [mrB]
GO
ALTER SERVER ROLE [securityadmin] ADD MEMBER [mr]
GO
ALTER SERVER ROLE [securityadmin] ADD MEMBER [hr]
GO
ALTER SERVER ROLE [setupadmin] ADD MEMBER [hr]
GO
ALTER SERVER ROLE [securityadmin] ADD MEMBER [fgsdfgyyttyyyyu]
GO
ALTER SERVER ROLE [securityadmin] ADD MEMBER [fgsdfgyyttyyyy]
GO
ALTER SERVER ROLE [securityadmin] ADD MEMBER [fgsdfgyyttytt]
GO
ALTER SERVER ROLE [securityadmin] ADD MEMBER [fgsdfgyytty]
GO
ALTER SERVER ROLE [securityadmin] ADD MEMBER [fgsdfg]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [ASUSN551JM\user]
GO
ALTER SERVER ROLE [securityadmin] ADD MEMBER [adsfasd]
GO
ALTER SERVER ROLE [setupadmin] ADD MEMBER [adsfasd]
GO
USE [CourseProject]
GO
/****** Object:  User [toddot]    Script Date: 22.12.2017 1:22:48 ******/
CREATE USER [toddot] FOR LOGIN [toddot] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [sdfdsds]    Script Date: 22.12.2017 1:22:48 ******/
CREATE USER [sdfdsds] FOR LOGIN [sdfdsds] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [mrT]    Script Date: 22.12.2017 1:22:48 ******/
CREATE USER [mrT] FOR LOGIN [mrT] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [mrC]    Script Date: 22.12.2017 1:22:48 ******/
CREATE USER [mrC] FOR LOGIN [mrC] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [mrB]    Script Date: 22.12.2017 1:22:48 ******/
CREATE USER [mrB] FOR LOGIN [mrB] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [mr]    Script Date: 22.12.2017 1:22:48 ******/
CREATE USER [mr] FOR LOGIN [mr] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [hr]    Script Date: 22.12.2017 1:22:48 ******/
CREATE USER [hr] FOR LOGIN [hr] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [gt]    Script Date: 22.12.2017 1:22:48 ******/
CREATE USER [gt] FOR LOGIN [gt] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [gfgfgfg]    Script Date: 22.12.2017 1:22:48 ******/
CREATE USER [gfgfgfg] FOR LOGIN [gfgfgfg] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [client]    Script Date: 22.12.2017 1:22:48 ******/
CREATE USER [client] FOR LOGIN [client] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [adsfasd]    Script Date: 22.12.2017 1:22:48 ******/
CREATE USER [adsfasd] FOR LOGIN [adsfasd] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_manager]    Script Date: 22.12.2017 1:22:48 ******/
CREATE ROLE [db_manager]
GO
/****** Object:  DatabaseRole [db_hr_administrator]    Script Date: 22.12.2017 1:22:48 ******/
CREATE ROLE [db_hr_administrator]
GO
/****** Object:  DatabaseRole [db_HR]    Script Date: 22.12.2017 1:22:48 ******/
CREATE ROLE [db_HR]
GO
/****** Object:  DatabaseRole [db_client]    Script Date: 22.12.2017 1:22:48 ******/
CREATE ROLE [db_client]
GO
ALTER AUTHORIZATION ON ROLE::[db_manager] TO [dbo]
GO
ALTER AUTHORIZATION ON ROLE::[db_hr_administrator] TO [dbo]
GO
ALTER AUTHORIZATION ON ROLE::[db_HR] TO [dbo]
GO
ALTER AUTHORIZATION ON ROLE::[db_client] TO [dbo]
GO
ALTER ROLE [db_HR] ADD MEMBER [toddot]
GO
ALTER ROLE [db_manager] ADD MEMBER [sdfdsds]
GO
ALTER ROLE [db_manager] ADD MEMBER [mrT]
GO
ALTER ROLE [db_manager] ADD MEMBER [mrC]
GO
ALTER ROLE [db_manager] ADD MEMBER [mrB]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [mrB]
GO
ALTER ROLE [db_manager] ADD MEMBER [mr]
GO
ALTER ROLE [db_owner] ADD MEMBER [mr]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [mr]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [mr]
GO
ALTER ROLE [db_HR] ADD MEMBER [hr]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [hr]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [hr]
GO
ALTER ROLE [db_client] ADD MEMBER [gt]
GO
ALTER ROLE [db_manager] ADD MEMBER [gfgfgfg]
GO
ALTER ROLE [db_client] ADD MEMBER [client]
GO
ALTER ROLE [db_manager] ADD MEMBER [adsfasd]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [adsfasd]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [adsfasd]
GO
GRANT CONNECT TO [adsfasd] AS [dbo]
GO
GRANT CONNECT TO [client] AS [dbo]
GO
GRANT ALTER ANY USER TO [db_manager] AS [dbo]
GO
GRANT CONNECT TO [gfgfgfg] AS [dbo]
GO
GRANT CONNECT TO [gt] AS [dbo]
GO
GRANT CONNECT TO [hr] AS [dbo]
GO
GRANT CONNECT TO [mr] AS [dbo]
GO
GRANT CONNECT TO [mrB] AS [dbo]
GO
GRANT CONNECT TO [mrC] AS [dbo]
GO
GRANT CONNECT TO [mrT] AS [dbo]
GO
GRANT CONNECT TO [sdfdsds] AS [dbo]
GO
GRANT CONNECT TO [toddot] AS [dbo]
GO
/****** Object:  Table [dbo].[BankAccounts]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BankAccounts](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[client_id] [int] NOT NULL,
	[balance] [decimal](18, 0) NOT NULL,
	[interest] [decimal](7, 4) NULL,
 CONSTRAINT [PK_BankAccounts] PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[BankAccounts] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Banks]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banks](
	[bank_id] [int] IDENTITY(1,1) NOT NULL,
	[city_id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[address] [nvarchar](80) NOT NULL,
 CONSTRAINT [PK_Banks] PRIMARY KEY CLUSTERED 
(
	[bank_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Banks] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[city_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](20) NOT NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Cities] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clients](
	[client_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[city_id] [int] NOT NULL,
	[client_address] [nvarchar](80) NOT NULL,
	[passport_number] [nvarchar](50) NOT NULL,
	[phone_number] [varchar](20) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[client_password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Clients] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[Clients] TO [db_client] AS [dbo]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employees](
	[employee_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](40) NOT NULL,
	[salary] [decimal](18, 4) NOT NULL,
	[bank_id] [int] NOT NULL,
	[passport_number] [varchar](20) NOT NULL,
	[phone_number] [varchar](20) NOT NULL,
	[employee_address] [nvarchar](50) NOT NULL,
	[username] [varchar](20) NOT NULL,
	[employee_password] [varchar](20) NOT NULL,
	[position_id] [int] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[employee_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Employees] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[feedback_id] [int] IDENTITY(1,1) NOT NULL,
	[manager_id] [int] NOT NULL,
	[rating] [int] NOT NULL,
	[client_id] [int] NOT NULL,
	[feedback_date] [date] NOT NULL,
	[feedback_text] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Feedback] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Positions]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Positions](
	[position_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](40) NOT NULL,
	[role_id] [int] NOT NULL,
 CONSTRAINT [PK_Positions] PRIMARY KEY CLUSTERED 
(
	[position_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Positions] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](40) NOT NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Roles] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transactions](
	[transfer_id] [int] IDENTITY(1,1) NOT NULL,
	[source_id] [int] NOT NULL,
	[destination_id] [int] NOT NULL,
	[amount] [decimal](18, 4) NOT NULL,
 CONSTRAINT [PK_BankTransfers] PRIMARY KEY CLUSTERED 
(
	[transfer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Transactions] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[BankAccounts] ON 

INSERT [dbo].[BankAccounts] ([account_id], [client_id], [balance], [interest]) VALUES (5, 38, CAST(27826 AS Decimal(18, 0)), CAST(0.1300 AS Decimal(7, 4)))
INSERT [dbo].[BankAccounts] ([account_id], [client_id], [balance], [interest]) VALUES (7, 38, CAST(365 AS Decimal(18, 0)), CAST(0.2525 AS Decimal(7, 4)))
INSERT [dbo].[BankAccounts] ([account_id], [client_id], [balance], [interest]) VALUES (8, 43, CAST(89975 AS Decimal(18, 0)), CAST(0.2525 AS Decimal(7, 4)))
SET IDENTITY_INSERT [dbo].[BankAccounts] OFF
SET IDENTITY_INSERT [dbo].[Banks] ON 

INSERT [dbo].[Banks] ([bank_id], [city_id], [name], [address]) VALUES (1, 1, N'тыцтыц', N'где-то там')
INSERT [dbo].[Banks] ([bank_id], [city_id], [name], [address]) VALUES (2, 2, N'бумсбумс      ', N'ку-ку')
INSERT [dbo].[Banks] ([bank_id], [city_id], [name], [address]) VALUES (3, 1, N'рататата', N'брумбрум')
SET IDENTITY_INSERT [dbo].[Banks] OFF
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([city_id], [name]) VALUES (1, N'Санкт-Петербург     ')
INSERT [dbo].[Cities] ([city_id], [name]) VALUES (2, N'Москва              ')
INSERT [dbo].[Cities] ([city_id], [name]) VALUES (3, N'Владик              ')
INSERT [dbo].[Cities] ([city_id], [name]) VALUES (4, N'Челябинск           ')
SET IDENTITY_INSERT [dbo].[Cities] OFF
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (38, N'bob', 1, N'112341234', N'12 34 312412', N'(123) 421-3423', N'gt                  ', N'gt                  ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (43, N'клиент Вася', 1, N'Земля', N'55 55 555555', N'(111) 111-1111', N'client', N'cilent')
SET IDENTITY_INSERT [dbo].[Clients] OFF
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([employee_id], [name], [salary], [bank_id], [passport_number], [phone_number], [employee_address], [username], [employee_password], [position_id]) VALUES (11, N'Василий Пупкин', CAST(234234.0000 AS Decimal(18, 4)), 1, N'12 34 112342', N'(342) 542-3523', N'asdfasdf', N'mr', N'mr', 1)
INSERT [dbo].[Employees] ([employee_id], [name], [salary], [bank_id], [passport_number], [phone_number], [employee_address], [username], [employee_password], [position_id]) VALUES (12, N'Сан Саныч', CAST(999999.9900 AS Decimal(18, 4)), 2, N'12 12 432423', N'(342) 542-3523', N'ыфваыфвафыв', N'mrT', N'mrT', 1)
INSERT [dbo].[Employees] ([employee_id], [name], [salary], [bank_id], [passport_number], [phone_number], [employee_address], [username], [employee_password], [position_id]) VALUES (13, N'Купер', CAST(999999.9900 AS Decimal(18, 4)), 3, N'56 12 432423', N'(342) 542-3523', N'ыфваыфвафыв', N'mrC', N'mrC', 1)
INSERT [dbo].[Employees] ([employee_id], [name], [salary], [bank_id], [passport_number], [phone_number], [employee_address], [username], [employee_password], [position_id]) VALUES (14, N'Тоби', CAST(345345.0000 AS Decimal(18, 4)), 2, N'54 54 545454', N'(342) 542-3523', N'скрэнтон', N'hr', N'hr', 2)
INSERT [dbo].[Employees] ([employee_id], [name], [salary], [bank_id], [passport_number], [phone_number], [employee_address], [username], [employee_password], [position_id]) VALUES (29, N'менеджер боб', CAST(343214.2300 AS Decimal(18, 4)), 1, N'12 12 123213', N'(997) 843-2432', N'фывафыва', N'mrB', N'mrB', 1)
SET IDENTITY_INSERT [dbo].[Employees] OFF
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([feedback_id], [manager_id], [rating], [client_id], [feedback_date], [feedback_text]) VALUES (4, 11, 1, 38, CAST(N'2017-12-21' AS Date), N'g')
INSERT [dbo].[Feedback] ([feedback_id], [manager_id], [rating], [client_id], [feedback_date], [feedback_text]) VALUES (5, 11, 5, 38, CAST(N'2017-12-21' AS Date), N'Война и мир

Первый вариант романа

   Источник: Издательство: Захаров, 2007 г. Твердый переплет, 800 стр. ISBN   978-5-8159-0748-5 Тираж: 5000 экз.
   Текст предоставлен издателем.
При подготовке этого издания использованы тексты, опубликованные Э.Е.Зайденшнур в 94-м томе "Литературного наследства", рукописные материалы к роману из томов 13--16 юбилейного 90-томного собрания сочинений Л.Толстого, а также 3-е прижизненное издание романа, опубликованное в 4-х томах в 1873 году.

От издателя

  
   "1. В два раза короче и в пять раз интереснее.
   2. Почти нет философических отступлений.
   3. В сто раз легче читать: весь французский текст заменен русским в переводе самого Толстого.
   4. Гораздо больше мира и меньше войны.
   5. Хеппи-энд...".
  
   Эти слова я поместил семь лет назад на обложку предыдущего издания, указав в аннотации: "Первая полная редакция великого романа, созданная к концу 1866 года, до того как Толстой переделал его в 1867--1869 годах", -- и что я использовал такие-то публикации.
   Думая, что все всё знают, я не объяснил, откуда взялась эта "первая редакция".
   Я оказался неправ, и в результате оголтелые и невежественные критики, выдающие себя за знатоков русской литературы, публично стали обвинять меня и в фальсификации ("это Захаров сам всё сляпал"), и в надругательстве над Толстым ("ведь вот же Лев Николаевич не напечатал этот первый вариант, а вы...").
   Я по-прежнему не считаю необходимым подробно излагать в предисловиях всё то, что можно найти в специальной литературе, но в нескольких строках объясню.
   Итак, Л.Н.Толстой писал этот роман с 1863 года и к концу 1866 года, поставив на 726-й странице слово "конец", повез его в Москву печатать. К этому времени он уже опубликовал две первые части романа ("1805" и "Война") в журнале "Русский Вестник" и отдельной книгой, и заказал художнику М.С.Башилову иллюстрации для полного книжного издания.
   Но издать книгу Толстой не смог. Катков уговаривал его продолжать печатать кусками в своем "Русском Вестнике", другие издатели, смущаясь объемом и "неактуальностью произведения", в лучшем случае предлагали автору печатать роман за свой счет. Художник Башилов работал очень неспешно, а переделывал -- в соответствии с письменными указаниями Толстого, -- еще медленнее.
   Оставшаяся в Ясной Поляне жена Софья Андреевна настоятельно требовала, чтобы муж скорее возвращался: и дети плачут, и зима на носу, и с делами по хозяйству ей одной трудно справиться.
   Ну и, наконец, в только что открывшейся тогда для публичного пользования Чертковской библиотеке Бартенев (будущий редактор "Войны и мира") показал Толстому много материалов, которые писатель захотел использовать в своей книге.
В результате Толстой, заявив, что "всё к лучшему" (это он обыграл первоначальное название своего романа -- "Всё хорошо, что хорошо кончается"), уехал с рукописью домой в Ясную Поляну и работал над текстом еще два года; "Война и мир" была впервые издана целиком в шести томах в 1868--1869 годах. Причём без иллюстраций Башилова, который так и не завершил свою работу, неизлечимо заболел и умер в 1870 году в Тироле.
   Вот, собственно, и вся история. Теперь два слова о происхождении самого текста. Вернувшись в конце 1866 года в Ясную Поляну, Толстой, естественно, не убирал на полку свою 726-страничную рукопись, чтоб начать всё с начала, с первой страницы. Он работал с той же рукописью -- дописывал, вычёркивал, переставлял страницы, писал на обороте, добавлял новые листы...
   Спустя пятьдесят лет в музее Толстого на Остоженке в Москве, где хранились все рукописи писателя, начала работать -- и проработала там несколько десятилетий -- Эвелина Ефимовна Зайденшнур: она расшифровывала и распечатывала эти рукописи для полного собрания сочинений Толстого. Ей-то мы и обязаны возможностью прочитать первый вариант "Войны и мира", -- она реконструировала первоначальную рукопись романа, сличая почерк Толстого, цвет чернил, бумагу и т.д., и в 1983 году он был опубликован в 94-м томе')
INSERT [dbo].[Feedback] ([feedback_id], [manager_id], [rating], [client_id], [feedback_date], [feedback_text]) VALUES (6, 12, 5, 38, CAST(N'2017-12-21' AS Date), N'10 Санов / 10 Санычей')
INSERT [dbo].[Feedback] ([feedback_id], [manager_id], [rating], [client_id], [feedback_date], [feedback_text]) VALUES (7, 13, 3, 38, CAST(N'2017-12-21' AS Date), N'ДЭМН ГУД КОФИ')
INSERT [dbo].[Feedback] ([feedback_id], [manager_id], [rating], [client_id], [feedback_date], [feedback_text]) VALUES (8, 11, 1, 43, CAST(N'2017-12-22' AS Date), N'Вася из да ворст')
SET IDENTITY_INSERT [dbo].[Feedback] OFF
SET IDENTITY_INSERT [dbo].[Positions] ON 

INSERT [dbo].[Positions] ([position_id], [name], [role_id]) VALUES (1, N'Manager', 2)
INSERT [dbo].[Positions] ([position_id], [name], [role_id]) VALUES (2, N'HR', 3)
SET IDENTITY_INSERT [dbo].[Positions] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([role_id], [name]) VALUES (1, N'db_client')
INSERT [dbo].[Roles] ([role_id], [name]) VALUES (2, N'db_manager')
INSERT [dbo].[Roles] ([role_id], [name]) VALUES (3, N'db_hr')
SET IDENTITY_INSERT [dbo].[Roles] OFF
SET IDENTITY_INSERT [dbo].[Transactions] ON 

INSERT [dbo].[Transactions] ([transfer_id], [source_id], [destination_id], [amount]) VALUES (5, 5, 7, CAST(34.0000 AS Decimal(18, 4)))
INSERT [dbo].[Transactions] ([transfer_id], [source_id], [destination_id], [amount]) VALUES (6, 5, 7, CAST(34.0000 AS Decimal(18, 4)))
INSERT [dbo].[Transactions] ([transfer_id], [source_id], [destination_id], [amount]) VALUES (7, 5, 7, CAST(34.0000 AS Decimal(18, 4)))
INSERT [dbo].[Transactions] ([transfer_id], [source_id], [destination_id], [amount]) VALUES (8, 5, 7, CAST(98.0000 AS Decimal(18, 4)))
INSERT [dbo].[Transactions] ([transfer_id], [source_id], [destination_id], [amount]) VALUES (9, 8, 5, CAST(10.0000 AS Decimal(18, 4)))
INSERT [dbo].[Transactions] ([transfer_id], [source_id], [destination_id], [amount]) VALUES (10, 8, 7, CAST(15.0000 AS Decimal(18, 4)))
SET IDENTITY_INSERT [dbo].[Transactions] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [U_CLientPassport]    Script Date: 22.12.2017 1:22:48 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [U_CLientPassport] UNIQUE NONCLUSTERED 
(
	[passport_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [U_ClientUsername]    Script Date: 22.12.2017 1:22:48 ******/
ALTER TABLE [dbo].[Clients] ADD  CONSTRAINT [U_ClientUsername] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [U_Passport]    Script Date: 22.12.2017 1:22:48 ******/
ALTER TABLE [dbo].[Employees] ADD  CONSTRAINT [U_Passport] UNIQUE NONCLUSTERED 
(
	[passport_number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [U_Username]    Script Date: 22.12.2017 1:22:48 ******/
ALTER TABLE [dbo].[Employees] ADD  CONSTRAINT [U_Username] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BankAccounts]  WITH CHECK ADD  CONSTRAINT [FK_BankAccounts_Clients] FOREIGN KEY([client_id])
REFERENCES [dbo].[Clients] ([client_id])
GO
ALTER TABLE [dbo].[BankAccounts] CHECK CONSTRAINT [FK_BankAccounts_Clients]
GO
ALTER TABLE [dbo].[Banks]  WITH CHECK ADD  CONSTRAINT [FK_Cities_Banks] FOREIGN KEY([city_id])
REFERENCES [dbo].[Cities] ([city_id])
GO
ALTER TABLE [dbo].[Banks] CHECK CONSTRAINT [FK_Cities_Banks]
GO
ALTER TABLE [dbo].[Clients]  WITH CHECK ADD  CONSTRAINT [FK_Clients_Cities] FOREIGN KEY([city_id])
REFERENCES [dbo].[Cities] ([city_id])
GO
ALTER TABLE [dbo].[Clients] CHECK CONSTRAINT [FK_Clients_Cities]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Banks] FOREIGN KEY([bank_id])
REFERENCES [dbo].[Banks] ([bank_id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Banks]
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD  CONSTRAINT [FK_Employees_Positions] FOREIGN KEY([position_id])
REFERENCES [dbo].[Positions] ([position_id])
GO
ALTER TABLE [dbo].[Employees] CHECK CONSTRAINT [FK_Employees_Positions]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Clients] FOREIGN KEY([client_id])
REFERENCES [dbo].[Clients] ([client_id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Clients]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Employees] FOREIGN KEY([manager_id])
REFERENCES [dbo].[Employees] ([employee_id])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Employees]
GO
ALTER TABLE [dbo].[Positions]  WITH CHECK ADD  CONSTRAINT [FK_Positions_Roles] FOREIGN KEY([role_id])
REFERENCES [dbo].[Roles] ([role_id])
GO
ALTER TABLE [dbo].[Positions] CHECK CONSTRAINT [FK_Positions_Roles]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_BankAccounts] FOREIGN KEY([source_id])
REFERENCES [dbo].[BankAccounts] ([account_id])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_BankAccounts]
GO
ALTER TABLE [dbo].[Transactions]  WITH CHECK ADD  CONSTRAINT [FK_Transactions_BankAccounts1] FOREIGN KEY([destination_id])
REFERENCES [dbo].[BankAccounts] ([account_id])
GO
ALTER TABLE [dbo].[Transactions] CHECK CONSTRAINT [FK_Transactions_BankAccounts1]
GO
ALTER TABLE [dbo].[BankAccounts]  WITH CHECK ADD  CONSTRAINT [CK_BankAccounts] CHECK  (([interest]>=(0) AND [interest]<=(1)))
GO
ALTER TABLE [dbo].[BankAccounts] CHECK CONSTRAINT [CK_BankAccounts]
GO
/****** Object:  StoredProcedure [dbo].[DeleteEmployee]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteEmployee]
(
	@EmployeeId integer
)
AS
BEGIN
	DELETE FROM Employees
	WHERE employee_id = @EmployeeId
END
GO
ALTER AUTHORIZATION ON [dbo].[DeleteEmployee] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[DeleteEmployee] TO [db_HR] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[InsertBankAccount]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[InsertBankAccount]
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
ALTER AUTHORIZATION ON [dbo].[InsertBankAccount] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[InsertBankAccount] TO [db_client] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[InsertBankAccountUsingPassport]    Script Date: 22.12.2017 1:22:48 ******/
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
ALTER AUTHORIZATION ON [dbo].[InsertBankAccountUsingPassport] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[InsertClient]    Script Date: 22.12.2017 1:22:48 ******/
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
ALTER AUTHORIZATION ON [dbo].[InsertClient] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[InsertClient] TO [db_client] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[InsertClient] TO [db_manager] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[InsertEmployee]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertEmployee]
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
ALTER AUTHORIZATION ON [dbo].[InsertEmployee] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[InsertEmployee] TO [db_HR] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[InsertFeedback]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertFeedback]
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
ALTER AUTHORIZATION ON [dbo].[InsertFeedback] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[InsertFeedback] TO [db_client] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[InsertTransactionToHistory]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertTransactionToHistory]
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
ALTER AUTHORIZATION ON [dbo].[InsertTransactionToHistory] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[InsertTransactionToHistory] TO [db_client] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[RegisterClient]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RegisterClient]
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
ALTER AUTHORIZATION ON [dbo].[RegisterClient] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[RegisterClient] TO [db_client] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[RegisterClient] TO [db_manager] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[RegisterEmployee]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[RegisterEmployee]
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
				--+ ' exec sp_addsrvrolemember '+ @UserName +',''setupadmin'';'
				--+ ' exec sp_addrolemember '+ '''db_securityadmin'''+',''' + @UserName + ''';'
				--+ ' exec sp_addrolemember '+ '''db_accessadmin'''+',''' + @UserName + ''';'
				--+ ' exec sp_addsrvrolemember '+ @UserName +',''securityadmin'';'  
	execute(@SQL);
ENd

GO
ALTER AUTHORIZATION ON [dbo].[RegisterEmployee] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[RegisterEmployee] TO [db_HR] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[SelectBanksWhereCity]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectBanksWhereCity]
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
ALTER AUTHORIZATION ON [dbo].[SelectBanksWhereCity] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[SelectBanksWhereCity] TO [db_HR] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[SelectCities]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectCities]
AS
BEGIN
	SELECT city_id, name
	FROM Cities
END

GO
ALTER AUTHORIZATION ON [dbo].[SelectCities] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[SelectCities] TO [db_HR] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[SelectCities] TO [db_manager] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[SelectClientsWithPassport]    Script Date: 22.12.2017 1:22:48 ******/
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
ALTER AUTHORIZATION ON [dbo].[SelectClientsWithPassport] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[SelectCurrentClient]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectCurrentClient]
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

GO
ALTER AUTHORIZATION ON [dbo].[SelectCurrentClient] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[SelectCurrentClient] TO [db_client] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[SelectCurrentManager]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectCurrentManager]
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
ALTER AUTHORIZATION ON [dbo].[SelectCurrentManager] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[SelectCurrentManager] TO [db_manager] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[SelectCurrentManagerFeedback]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectCurrentManagerFeedback]
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
ALTER AUTHORIZATION ON [dbo].[SelectCurrentManagerFeedback] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[SelectCurrentManagerFeedback] TO [db_manager] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[SelectEmployees]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectEmployees]
AS
BEGIN
	SELECT name, employee_id
	FROM Employees
END

GO
ALTER AUTHORIZATION ON [dbo].[SelectEmployees] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[SelectEmployees] TO [db_HR] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[SelectManagers]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectManagers]
AS
BEGIN
	SELECT employee_id, name
	FROM Employees
	WHERE Employees.position_id = 1
END

GO
ALTER AUTHORIZATION ON [dbo].[SelectManagers] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[SelectManagers] TO [db_client] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[SelectManagersRating]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectManagersRating]
AS
BEGIN
	SELECT name, ISNULL(t.rating,0)
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
ALTER AUTHORIZATION ON [dbo].[SelectManagersRating] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[SelectManagersRating] TO [db_HR] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[SelectPositions]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectPositions]
AS
BEGIN
	SELECT position_id, name
	FROM Positions
END

GO
ALTER AUTHORIZATION ON [dbo].[SelectPositions] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[SelectPositions] TO [db_HR] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[SelectUserBankAccounts]    Script Date: 22.12.2017 1:22:48 ******/
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
END

GO
ALTER AUTHORIZATION ON [dbo].[SelectUserBankAccounts] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[SelectUserBankAccounts] TO [db_client] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[SelectUserBankAccountsNumbers]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectUserBankAccountsNumbers]
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
ALTER AUTHORIZATION ON [dbo].[SelectUserBankAccountsNumbers] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[SelectUserBankAccountsNumbers] TO [db_client] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[SelectUserLogin]    Script Date: 22.12.2017 1:22:48 ******/
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
ALTER AUTHORIZATION ON [dbo].[SelectUserLogin] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[SelectUserLogin] TO [db_client] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[SelectUserRole]    Script Date: 22.12.2017 1:22:48 ******/
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
	WHERE members.NAME = @UserName and roles.NAME in ('db_client', 'db_manager', 'db_hr'))
END

GO
ALTER AUTHORIZATION ON [dbo].[SelectUserRole] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[SelectUserRole] TO [db_client] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[SelectUserRole] TO [db_HR] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[SelectUserRole] TO [db_manager] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[SelectUserTransactions]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SelectUserTransactions]
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
ALTER AUTHORIZATION ON [dbo].[SelectUserTransactions] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[SelectUserTransactions] TO [db_client] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[TransferFunds]    Script Date: 22.12.2017 1:22:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TransferFunds]
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
ALTER AUTHORIZATION ON [dbo].[TransferFunds] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[TransferFunds] TO [db_client] AS [dbo]
GO
USE [master]
GO
ALTER DATABASE [CourseProject] SET  READ_WRITE 
GO
