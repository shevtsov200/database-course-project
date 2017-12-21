USE [CourseProject]
GO
/****** Object:  StoredProcedure [dbo].[TransferFunds]    Script Date: 21.12.2017 12:35:02 ******/
DROP PROCEDURE [dbo].[TransferFunds]
GO
/****** Object:  StoredProcedure [dbo].[SelectUserRole]    Script Date: 21.12.2017 12:35:02 ******/
DROP PROCEDURE [dbo].[SelectUserRole]
GO
/****** Object:  StoredProcedure [dbo].[SelectUserLogin]    Script Date: 21.12.2017 12:35:02 ******/
DROP PROCEDURE [dbo].[SelectUserLogin]
GO
/****** Object:  StoredProcedure [dbo].[SelectUserBankAccountsNumbers]    Script Date: 21.12.2017 12:35:02 ******/
DROP PROCEDURE [dbo].[SelectUserBankAccountsNumbers]
GO
/****** Object:  StoredProcedure [dbo].[SelectUserBankAccounts]    Script Date: 21.12.2017 12:35:02 ******/
DROP PROCEDURE [dbo].[SelectUserBankAccounts]
GO
/****** Object:  StoredProcedure [dbo].[SelectPositions]    Script Date: 21.12.2017 12:35:02 ******/
DROP PROCEDURE [dbo].[SelectPositions]
GO
/****** Object:  StoredProcedure [dbo].[SelectClientsWithPassport]    Script Date: 21.12.2017 12:35:02 ******/
DROP PROCEDURE [dbo].[SelectClientsWithPassport]
GO
/****** Object:  StoredProcedure [dbo].[SelectCities]    Script Date: 21.12.2017 12:35:02 ******/
DROP PROCEDURE [dbo].[SelectCities]
GO
/****** Object:  StoredProcedure [dbo].[SelectBanksWhereCity]    Script Date: 21.12.2017 12:35:02 ******/
DROP PROCEDURE [dbo].[SelectBanksWhereCity]
GO
/****** Object:  StoredProcedure [dbo].[RegisterClient]    Script Date: 21.12.2017 12:35:02 ******/
DROP PROCEDURE [dbo].[RegisterClient]
GO
/****** Object:  StoredProcedure [dbo].[InsertEmployee]    Script Date: 21.12.2017 12:35:02 ******/
DROP PROCEDURE [dbo].[InsertEmployee]
GO
/****** Object:  StoredProcedure [dbo].[InsertClient]    Script Date: 21.12.2017 12:35:02 ******/
DROP PROCEDURE [dbo].[InsertClient]
GO
/****** Object:  StoredProcedure [dbo].[InsertBankAccountUsingPassport]    Script Date: 21.12.2017 12:35:02 ******/
DROP PROCEDURE [dbo].[InsertBankAccountUsingPassport]
GO
/****** Object:  StoredProcedure [dbo].[InsertBankAccount]    Script Date: 21.12.2017 12:35:02 ******/
DROP PROCEDURE [dbo].[InsertBankAccount]
GO
ALTER TABLE [dbo].[Loans] DROP CONSTRAINT [CK_Loans]
GO
ALTER TABLE [dbo].[BankAccounts] DROP CONSTRAINT [CK_BankAccounts]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 21.12.2017 12:35:02 ******/
DROP TABLE [dbo].[Transactions]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 21.12.2017 12:35:02 ******/
DROP TABLE [dbo].[Roles]
GO
/****** Object:  Table [dbo].[Positions]    Script Date: 21.12.2017 12:35:02 ******/
DROP TABLE [dbo].[Positions]
GO
/****** Object:  Table [dbo].[Loans]    Script Date: 21.12.2017 12:35:02 ******/
DROP TABLE [dbo].[Loans]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 21.12.2017 12:35:02 ******/
DROP TABLE [dbo].[Employees]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 21.12.2017 12:35:02 ******/
DROP TABLE [dbo].[Clients]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 21.12.2017 12:35:02 ******/
DROP TABLE [dbo].[Cities]
GO
/****** Object:  Table [dbo].[Banks]    Script Date: 21.12.2017 12:35:02 ******/
DROP TABLE [dbo].[Banks]
GO
/****** Object:  Table [dbo].[BankAccounts]    Script Date: 21.12.2017 12:35:02 ******/
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
/****** Object:  DatabaseRole [db_client]    Script Date: 21.12.2017 12:35:02 ******/
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
/****** Object:  DatabaseRole [db_HR]    Script Date: 21.12.2017 12:35:02 ******/
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
/****** Object:  DatabaseRole [db_hr_administrator]    Script Date: 21.12.2017 12:35:02 ******/
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
/****** Object:  DatabaseRole [db_manager]    Script Date: 21.12.2017 12:35:02 ******/
DROP ROLE [db_manager]
GO
/****** Object:  User [bob]    Script Date: 21.12.2017 12:35:02 ******/
DROP USER [bob]
GO
/****** Object:  User [ggggt]    Script Date: 21.12.2017 12:35:02 ******/
DROP USER [ggggt]
GO
/****** Object:  User [gt]    Script Date: 21.12.2017 12:35:02 ******/
DROP USER [gt]
GO
/****** Object:  User [hr]    Script Date: 21.12.2017 12:35:02 ******/
DROP USER [hr]
GO
/****** Object:  User [hr2]    Script Date: 21.12.2017 12:35:02 ******/
DROP USER [hr2]
GO
/****** Object:  User [manager_bob]    Script Date: 21.12.2017 12:35:02 ******/
DROP USER [manager_bob]
GO
/****** Object:  User [manager_bobb]    Script Date: 21.12.2017 12:35:02 ******/
DROP USER [manager_bobb]
GO
/****** Object:  User [manager_bot]    Script Date: 21.12.2017 12:35:02 ******/
DROP USER [manager_bot]
GO
/****** Object:  User [mr]    Script Date: 21.12.2017 12:35:02 ******/
DROP USER [mr]
GO
/****** Object:  User [newt]    Script Date: 21.12.2017 12:35:02 ******/
DROP USER [newt]
GO
/****** Object:  User [newuser]    Script Date: 21.12.2017 12:35:02 ******/
DROP USER [newuser]
GO
/****** Object:  User [newuserrr]    Script Date: 21.12.2017 12:35:02 ******/
DROP USER [newuserrr]
GO
/****** Object:  User [nonquery]    Script Date: 21.12.2017 12:35:02 ******/
DROP USER [nonquery]
GO
/****** Object:  User [sdfg]    Script Date: 21.12.2017 12:35:02 ******/
DROP USER [sdfg]
GO
/****** Object:  User [testtes4]    Script Date: 21.12.2017 12:35:02 ******/
DROP USER [testtes4]
GO
/****** Object:  User [ttt]    Script Date: 21.12.2017 12:35:02 ******/
DROP USER [ttt]
GO
/****** Object:  User [tttt]    Script Date: 21.12.2017 12:35:02 ******/
DROP USER [tttt]
GO
/****** Object:  User [ttttt56]    Script Date: 21.12.2017 12:35:02 ******/
DROP USER [ttttt56]
GO
USE [master]
GO
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [##MS_PolicyEventProcessingLogin##]
GO
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [##MS_PolicyTsqlExecutionLogin##]
GO
/****** Object:  Login [ASUSN551JM\user]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [ASUSN551JM\user]
GO
/****** Object:  Login [bob]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [bob]
GO
/****** Object:  Login [BUILTIN\Пользователи]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [BUILTIN\Пользователи]
GO
/****** Object:  Login [ggggt]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [ggggt]
GO
/****** Object:  Login [gt]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [gt]
GO
/****** Object:  Login [hr]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [hr]
GO
/****** Object:  Login [hr2]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [hr2]
GO
/****** Object:  Login [manager_bob]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [manager_bob]
GO
/****** Object:  Login [manager_bobb]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [manager_bobb]
GO
/****** Object:  Login [manager_bot]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [manager_bot]
GO
/****** Object:  Login [mr]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [mr]
GO
/****** Object:  Login [newt]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [newt]
GO
/****** Object:  Login [newuser]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [newuser]
GO
/****** Object:  Login [newuserrr]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [newuserrr]
GO
/****** Object:  Login [nonquery]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [nonquery]
GO
/****** Object:  Login [NT AUTHORITY\СИСТЕМА]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [NT AUTHORITY\СИСТЕМА]
GO
/****** Object:  Login [NT Service\MSSQLSERVER]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [NT Service\MSSQLSERVER]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [NT SERVICE\SQLWriter]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [NT SERVICE\Winmgmt]
GO
/****** Object:  Login [sdfg]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [sdfg]
GO
/****** Object:  Login [testtes4]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [testtes4]
GO
/****** Object:  Login [ttt]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [ttt]
GO
/****** Object:  Login [tttt]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [tttt]
GO
/****** Object:  Login [ttttt]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [ttttt]
GO
/****** Object:  Login [ttttt5]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [ttttt5]
GO
/****** Object:  Login [ttttt56]    Script Date: 21.12.2017 12:35:02 ******/
DROP LOGIN [ttttt56]
GO
/****** Object:  Database [CourseProject]    Script Date: 21.12.2017 12:35:02 ******/
DROP DATABASE [CourseProject]
GO
/****** Object:  Database [CourseProject]    Script Date: 21.12.2017 12:35:02 ******/
CREATE DATABASE [CourseProject]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CourseProject', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\CourseProject.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CourseProject_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\CourseProject_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 COLLATE SQL_Latin1_General_CP1_CI_AS
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
/****** Object:  Login [ttttt56]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [ttttt56] WITH PASSWORD=N'ZyiÒd×²Iu~w-íLçhæc×Õ%-N', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [ttttt56] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [ttttt5]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [ttttt5] WITH PASSWORD=N'ækuçQOÔÄ3Êk>/ËFBþå¬ßé­ú*ZD', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [ttttt5] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [ttttt]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [ttttt] WITH PASSWORD=N'+3êÝòz+®"¢Ë+%£/eÄl,Ê§^¶äAè', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [ttttt] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [tttt]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [tttt] WITH PASSWORD=N'3@,bñK{èD$oµz7¯?ÿ`9U+ ¤ú', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [tttt] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [ttt]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [ttt] WITH PASSWORD=N'¢ýðG¼êÂcÅÜúãEkB£)´Uç²/', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [ttt] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [testtes4]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [testtes4] WITH PASSWORD=N'âüÕ¿Ðbë7yÖùÞuÓ~!û¼}"¬ÿQ¤þ', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [testtes4] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [sdfg]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [sdfg] WITH PASSWORD=N'¯}Á:òfÔiÔÙ8¤á§2#:ököEyæ', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [sdfg] DISABLE
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT Service\MSSQLSERVER]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [NT Service\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\СИСТЕМА]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [NT AUTHORITY\СИСТЕМА] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [nonquery]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [nonquery] WITH PASSWORD=N'$´L¬<	Ie­%³öÜÐÑQµF2þµJ', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [nonquery] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [newuserrr]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [newuserrr] WITH PASSWORD=N'³=ûnzæ!½ì:ÅµÑb@Ù}7¬Qm', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [newuserrr] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [newuser]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [newuser] WITH PASSWORD=N'Øø~#sinèKhNÞ 3½a2ùåö''±>', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [newuser] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [newt]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [newt] WITH PASSWORD=N'»Èð[Ou\÷ËÝûº-%"Î 5yW ¼µ;', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [newt] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [mr]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [mr] WITH PASSWORD=N'Í]áà{gC²ÁÚ+gM=ÓÑbénö°º½>=ç¢mnTK=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [mr] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [manager_bot]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [manager_bot] WITH PASSWORD=N'ÈË£[°mßTÂrãGì¥×à§3¨3+"f', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [manager_bot] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [manager_bobb]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [manager_bobb] WITH PASSWORD=N'¦ÌÚcòvkÃÅ	w½µU#(Hy±üà¥`bj', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [manager_bobb] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [manager_bob]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [manager_bob] WITH PASSWORD=N'ãa·ª¬å`e-øQñw×Q±Û -u¯×</$]', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [manager_bob] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [hr2]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [hr2] WITH PASSWORD=N'NÖø/ÜØã8öÃ1í1r\IÅdrøcÆ)è¬J', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [hr2] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [hr]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [hr] WITH PASSWORD=N'ÍóýfÃ÷,b±aKEöäz³¥êhÚ¢­óµÌZ®', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [hr] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [gt]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [gt] WITH PASSWORD=N'ùi þ nç¶{­dü<%5Ä¿"Ë¸ÏEVY', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [gt] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [ggggt]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [ggggt] WITH PASSWORD=N'çß¥¦(.R[¾ëé
*{}Cù¨¨NTç¢¼´8o', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [ggggt] DISABLE
GO
/****** Object:  Login [BUILTIN\Пользователи]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [BUILTIN\Пользователи] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [bob]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [bob] WITH PASSWORD=N'd,vÇ&r_59,íÀE¸ý4ÿP¨úåOÎõa', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [bob] DISABLE
GO
/****** Object:  Login [ASUSN551JM\user]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [ASUSN551JM\user] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'ª»©
0dí=ä«t;óö¤È§^§ôèçá,¶¿K', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 21.12.2017 12:35:02 ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'zßDëÎ49_m$ÉlâÄINÄ«¼YqèôT', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
ALTER AUTHORIZATION ON DATABASE::[CourseProject] TO [ASUSN551JM\user]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQLSERVER]
GO
ALTER SERVER ROLE [securityadmin] ADD MEMBER [mr]
GO
ALTER SERVER ROLE [securityadmin] ADD MEMBER [hr]
GO
ALTER SERVER ROLE [serveradmin] ADD MEMBER [hr]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [ASUSN551JM\user]
GO
USE [CourseProject]
GO
/****** Object:  User [ttttt56]    Script Date: 21.12.2017 12:35:02 ******/
CREATE USER [ttttt56] FOR LOGIN [ttttt56] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [tttt]    Script Date: 21.12.2017 12:35:02 ******/
CREATE USER [tttt] FOR LOGIN [tttt] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ttt]    Script Date: 21.12.2017 12:35:02 ******/
CREATE USER [ttt] FOR LOGIN [ttt] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [testtes4]    Script Date: 21.12.2017 12:35:02 ******/
CREATE USER [testtes4] FOR LOGIN [testtes4] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [sdfg]    Script Date: 21.12.2017 12:35:02 ******/
CREATE USER [sdfg] FOR LOGIN [sdfg] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [nonquery]    Script Date: 21.12.2017 12:35:02 ******/
CREATE USER [nonquery] FOR LOGIN [nonquery] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [newuserrr]    Script Date: 21.12.2017 12:35:02 ******/
CREATE USER [newuserrr] FOR LOGIN [newuserrr] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [newuser]    Script Date: 21.12.2017 12:35:02 ******/
CREATE USER [newuser] FOR LOGIN [newuser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [newt]    Script Date: 21.12.2017 12:35:02 ******/
CREATE USER [newt] FOR LOGIN [newt] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [mr]    Script Date: 21.12.2017 12:35:02 ******/
CREATE USER [mr] FOR LOGIN [mr] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [manager_bot]    Script Date: 21.12.2017 12:35:02 ******/
CREATE USER [manager_bot] FOR LOGIN [manager_bot] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [manager_bobb]    Script Date: 21.12.2017 12:35:02 ******/
CREATE USER [manager_bobb] FOR LOGIN [manager_bobb] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [manager_bob]    Script Date: 21.12.2017 12:35:02 ******/
CREATE USER [manager_bob] FOR LOGIN [manager_bob] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [hr2]    Script Date: 21.12.2017 12:35:02 ******/
CREATE USER [hr2] FOR LOGIN [hr2] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [hr]    Script Date: 21.12.2017 12:35:02 ******/
CREATE USER [hr] FOR LOGIN [hr] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [gt]    Script Date: 21.12.2017 12:35:02 ******/
CREATE USER [gt] FOR LOGIN [gt] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [ggggt]    Script Date: 21.12.2017 12:35:02 ******/
CREATE USER [ggggt] FOR LOGIN [ggggt] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [bob]    Script Date: 21.12.2017 12:35:02 ******/
CREATE USER [bob] FOR LOGIN [bob] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_manager]    Script Date: 21.12.2017 12:35:02 ******/
CREATE ROLE [db_manager]
GO
/****** Object:  DatabaseRole [db_hr_administrator]    Script Date: 21.12.2017 12:35:02 ******/
CREATE ROLE [db_hr_administrator]
GO
/****** Object:  DatabaseRole [db_HR]    Script Date: 21.12.2017 12:35:02 ******/
CREATE ROLE [db_HR]
GO
/****** Object:  DatabaseRole [db_client]    Script Date: 21.12.2017 12:35:02 ******/
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
ALTER ROLE [db_client] ADD MEMBER [ttttt56]
GO
ALTER ROLE [db_client] ADD MEMBER [tttt]
GO
ALTER ROLE [db_client] ADD MEMBER [ttt]
GO
ALTER ROLE [db_client] ADD MEMBER [testtes4]
GO
ALTER ROLE [db_manager] ADD MEMBER [sdfg]
GO
ALTER ROLE [db_client] ADD MEMBER [nonquery]
GO
ALTER ROLE [db_client] ADD MEMBER [newuserrr]
GO
ALTER ROLE [db_client] ADD MEMBER [newuser]
GO
ALTER ROLE [db_client] ADD MEMBER [newt]
GO
ALTER ROLE [db_manager] ADD MEMBER [mr]
GO
ALTER ROLE [db_owner] ADD MEMBER [mr]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [mr]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [mr]
GO
ALTER ROLE [db_manager] ADD MEMBER [manager_bot]
GO
ALTER ROLE [db_manager] ADD MEMBER [manager_bobb]
GO
ALTER ROLE [db_manager] ADD MEMBER [manager_bob]
GO
ALTER ROLE [db_HR] ADD MEMBER [hr2]
GO
ALTER ROLE [db_HR] ADD MEMBER [hr]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [hr]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [hr]
GO
ALTER ROLE [db_client] ADD MEMBER [gt]
GO
ALTER ROLE [db_manager] ADD MEMBER [ggggt]
GO
ALTER ROLE [db_client] ADD MEMBER [bob]
GO
GRANT CONNECT TO [bob] AS [dbo]
GO
GRANT ALTER ANY USER TO [db_manager] AS [dbo]
GO
GRANT CONNECT TO [ggggt] AS [dbo]
GO
GRANT CONNECT TO [gt] AS [dbo]
GO
GRANT CONNECT TO [hr] AS [dbo]
GO
GRANT CONNECT TO [hr2] AS [dbo]
GO
GRANT CONNECT TO [manager_bob] AS [dbo]
GO
GRANT CONNECT TO [manager_bobb] AS [dbo]
GO
GRANT CONNECT TO [manager_bot] AS [dbo]
GO
GRANT CONNECT TO [mr] AS [dbo]
GO
GRANT CONNECT TO [newt] AS [dbo]
GO
GRANT CONNECT TO [newuser] AS [dbo]
GO
GRANT CONNECT TO [newuserrr] AS [dbo]
GO
GRANT CONNECT TO [nonquery] AS [dbo]
GO
GRANT CONNECT TO [sdfg] AS [dbo]
GO
GRANT CONNECT TO [testtes4] AS [dbo]
GO
GRANT CONNECT TO [ttt] AS [dbo]
GO
GRANT CONNECT TO [tttt] AS [dbo]
GO
GRANT CONNECT TO [ttttt56] AS [dbo]
GO
/****** Object:  Table [dbo].[BankAccounts]    Script Date: 21.12.2017 12:35:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BankAccounts](
	[account_id] [int] IDENTITY(1,1) NOT NULL,
	[account_number] [varchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
ALTER AUTHORIZATION ON [dbo].[BankAccounts] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Banks]    Script Date: 21.12.2017 12:35:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banks](
	[bank_id] [int] IDENTITY(1,1) NOT NULL,
	[city_id] [int] NULL,
	[name] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[address] [nvarchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Banks] PRIMARY KEY CLUSTERED 
(
	[bank_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Banks] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 21.12.2017 12:35:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[city_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Cities] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 21.12.2017 12:35:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clients](
	[client_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[city_id] [int] NULL,
	[client_address] [nvarchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[passport_number] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[phone_number] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[username] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[client_password] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
/****** Object:  Table [dbo].[Employees]    Script Date: 21.12.2017 12:35:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Employees](
	[employee_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[salary] [decimal](18, 4) NULL,
	[bank_id] [int] NULL,
	[passport_number] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[phone_number] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[employee_address] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[username] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[employee_password] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[position_id] [int] NULL,
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
/****** Object:  Table [dbo].[Loans]    Script Date: 21.12.2017 12:35:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Loans](
	[loan_id] [int] IDENTITY(1,1) NOT NULL,
	[account_number] [varchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
ALTER AUTHORIZATION ON [dbo].[Loans] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Positions]    Script Date: 21.12.2017 12:35:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Positions](
	[position_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[role_id] [int] NULL,
 CONSTRAINT [PK_Positions] PRIMARY KEY CLUSTERED 
(
	[position_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[Positions] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 21.12.2017 12:35:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
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
/****** Object:  Table [dbo].[Transactions]    Script Date: 21.12.2017 12:35:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Transactions](
	[transfer_id] [int] IDENTITY(1,1) NOT NULL,
	[source_acc_num] [varchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[destination_acc_num] [varchar](16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[amount] [decimal](18, 0) NULL,
 CONSTRAINT [PK_BankTransfers] PRIMARY KEY CLUSTERED 
(
	[transfer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[Transactions] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[BankAccounts] ON 

INSERT [dbo].[BankAccounts] ([account_id], [account_number], [client_id], [balance], [interest]) VALUES (1, NULL, 21, CAST(1000000 AS Decimal(18, 0)), CAST(0.5000 AS Decimal(7, 4)))
INSERT [dbo].[BankAccounts] ([account_id], [account_number], [client_id], [balance], [interest]) VALUES (2, NULL, 21, CAST(12000 AS Decimal(18, 0)), CAST(1.0000 AS Decimal(7, 4)))
INSERT [dbo].[BankAccounts] ([account_id], [account_number], [client_id], [balance], [interest]) VALUES (3, NULL, 21, CAST(500 AS Decimal(18, 0)), CAST(1.0000 AS Decimal(7, 4)))
INSERT [dbo].[BankAccounts] ([account_id], [account_number], [client_id], [balance], [interest]) VALUES (4, NULL, 21, CAST(53623 AS Decimal(18, 0)), CAST(1.0000 AS Decimal(7, 4)))
INSERT [dbo].[BankAccounts] ([account_id], [account_number], [client_id], [balance], [interest]) VALUES (5, NULL, 38, CAST(28166 AS Decimal(18, 0)), CAST(0.1300 AS Decimal(7, 4)))
INSERT [dbo].[BankAccounts] ([account_id], [account_number], [client_id], [balance], [interest]) VALUES (6, NULL, 21, CAST(60000 AS Decimal(18, 0)), CAST(0.0500 AS Decimal(7, 4)))
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
INSERT [dbo].[Cities] ([city_id], [name]) VALUES (5, N'ы                   ')
SET IDENTITY_INSERT [dbo].[Cities] OFF
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (1, N'Вася Клиент                             ', 1, N'Проспект Большевиков 32                                                         ', NULL, NULL, NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (2, N'Клиент Саша                             ', 2, N'пр. Победоносца 28                                                              ', NULL, NULL, NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (3, N'Клиент Дима                             ', 3, N'У чёрта на куличиках                                                            ', NULL, NULL, NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (4, N'ыфвпфаывавфвф                           ', 1, N'фывафыва                                                                        ', NULL, NULL, NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (5, N'фывафыва                                ', 1, N'фвыафыва                                                                        ', NULL, NULL, NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (6, N'202                                     ', 3, N'202                                                                             ', NULL, NULL, NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (7, N'Процедурный Клиент                      ', 3, N'авпывапывап                                                                     ', NULL, NULL, NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (8, N'фывафыа                                 ', 2, N'фывафыа                                                                         ', NULL, NULL, NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (9, N'авыпывап                                ', 1, N'выапывап                                                                        ', NULL, NULL, NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (10, N'                                        ', 1, N'                                                                                ', NULL, NULL, NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (11, N'1ыфвафыв                                ', 1, N'342фыва                                                                         ', NULL, NULL, NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (12, N'Клиент с Паспортом                      ', 1, N'фывафыаыфвафы                                                                   ', N'1234568                  ', NULL, NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (13, N'Клиент с Телефоном                      ', 1, N'афвыпафвыаыфвафыв                                                               ', N'1234213423141234         ', N'', NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (17, N'клиент с тел                            ', 1, N'фывафывавфыа                                                                    ', N'2342                     ', N'(911) 752-', NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (18, N'клиент с телефоном2                     ', 1, N'фывафывавфыа                                                                    ', N'2342234324               ', N'(911) 752-9702', NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (19, N'клиент с маской паспорта                ', 1, N'ывфаыфвафвафыв                                                                  ', N'12 45 193509             ', N'(234) 512-3423', NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (20, N'фывафывафыва                            ', 1, N'фываывфафыва                                                                    ', N'23 42 234566             ', N'(112) 234-1241', NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (21, N'Клиент с паспортом 1                    ', 1, N'фывафываывфаыфва                                                                ', N'11 11 111111             ', N'(111) 111-1111', N'tet                 ', NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (22, N'Основной Клиент                         ', 2, N'БД                                                                              ', N'11 52 999999             ', N'(123)555-6666', NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (23, N'Основной Клиент 2                       ', 1, N'фвыаыфваыфва                                                                    ', N'25 25 252525             ', N'(252) 525-2525', NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (24, N'выапавпыавп                             ', 1, N'ывапывп                                                                         ', N'12 12 341234             ', N'(123) 412-3412', NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (25, N'выапавпыавп                             ', 1, N'ывапывп                                                                         ', N'12 12 341234             ', N'(123) 412-3412', NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (26, N'фывафывафыва                            ', 1, N'12341234123                                                                     ', N'11 11 111341             ', N'', NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (27, N'ывфафыва                                ', 1, N'123412341234                                                                    ', N'11 23 412342             ', N'(112) 342-1342', NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (28, N'Боб                                     ', 1, N'                                                                                ', N'11 11 111111             ', N'(   )    -', N'bob                 ', N'bob                 ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (29, N'                                        ', 1, N'                                                                                ', N'                         ', N'(   )    -', N'                    ', N'                    ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (30, N'123421341                               ', 1, N'12341234                                                                        ', N'23 41 234123             ', N'(132) 412-3412', N'user                ', N'user                ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (31, N'123421341                               ', 1, N'12341234                                                                        ', N'23 41 234123             ', N'(132) 412-3412', N'user                ', N'user                ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (32, N'                                        ', 1, N'                                                                                ', N'                         ', N'(   )    -', N'                    ', N'                    ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (33, N'name                                    ', 1, N'address                                                                         ', N'12 12 121312             ', N'(123) 123-1231', N'nonquery            ', N'nonquery            ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (34, N'12431234213                             ', 1, N'12341234                                                                        ', N'12 34 123421             ', N'(112) 341-2341', N'user                ', N'user                ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (35, N'                                        ', 1, N'                                                                                ', N'                         ', N'(   )    -', N'                    ', N'                    ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (36, N'                                        ', 1, N'                                                                                ', N'                         ', N'(   )    -', N'                    ', N'                    ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (37, N'                                        ', 1, N'                                                                                ', N'                         ', N'(   )    -', N'                    ', N'                    ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (38, N'bob                                     ', 1, N'112341234                                                                       ', N'12 34 312412             ', N'(123) 421-3423', N'gt                  ', N'gt                  ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (39, N'                                        ', 1, N'                                                                                ', N'                         ', N'(   )    -', N'                    ', N'                    ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (40, N'                                        ', 1, N'                                                                                ', N'                         ', N'(   )    -', N'                    ', N'                    ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (41, N'234124                                  ', 1, N'12341234                                                                        ', N'12 34 123412             ', N'( 12) 341-2341', N'12432               ', N'123421              ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (42, N'234124                                  ', 1, N'12341234                                                                        ', N'12 34 123412             ', N'( 12) 341-2341', N'12432               ', N'12342134123421      ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (43, N'newuser                                 ', 1, N'sadfadsf                                                                        ', N'4                        ', N'5', N'newuser             ', N'newpass             ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (44, N'sadfasdf                                ', 1, N'sadfasdfads1                                                                    ', N'42 54 636521             ', N'(234) 523-3643', N'dfsg                ', N'sdfg                ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (45, N'sadfasdf                                ', 1, N'sadfasdfads1                                                                    ', N'42 54 636521             ', N'(234) 523-3643', N'dfsg                ', N'sdfg                ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (46, N'sadfasdf                                ', 1, N'sadfasdfads1                                                                    ', N'42 54 636521             ', N'(234) 523-3643', N'dfsg                ', N'sdfg                ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (47, N'sadfasdf                                ', 1, N'sadfasdfads1                                                                    ', N'42 54 636521             ', N'(234) 523-3643', N'dfsg                ', N'sdfg                ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (48, N'newuserr                                ', 1, N'sadfadsf                                                                        ', N'4                        ', N'5', N'newuserrr           ', N'newpass             ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (49, N'sdfsafsdafadsf1111111                   ', 1, N'sadfsadfsdaf                                                                    ', N'35 23 463562             ', N'(123) 412-5425', N'asdfsadf435         ', N'sadfsadsda          ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (50, N'sdfsafsdafadsf1111111                   ', 1, N'sadfsadfsdaf                                                                    ', N'35 23 463562             ', N'(123) 412-5425', N'asdfsadf435         ', N'sadfsadsda          ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (51, N'sdfsafsdafadsf1111111                   ', 1, N'sadfsadfsdaf                                                                    ', N'35 23 463562             ', N'(123) 412-5425', N'asdfsadf435         ', N'sadfsadsda          ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (52, N'sdfsafsdafadsf1111111                   ', 1, N'sadfsadfsdaf                                                                    ', N'35 23 463562             ', N'(123) 412-5425', N'asdfsadf435         ', N'sadfsadsda          ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (53, N'sdfsafsdafadsf1111111                   ', 1, N'sadfsadfsdaf                                                                    ', N'35 23 463562             ', N'(123) 412-5425', N'asdfsadf435         ', N'sadfsadsda          ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (54, N'sdfsafsdafadsf1111111                   ', 1, N'sadfsadfsdaf                                                                    ', N'35 23 463562             ', N'(123) 412-5425', N'asdfsadf435         ', N'sadfsadsda          ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (55, N'sdfsafsdafadsf1111111                   ', 1, N'sadfsadfsdaf                                                                    ', N'35 23 463562             ', N'(123) 412-5425', N'asdfsadf435         ', N'sadfsadsda          ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (56, N'sdfsafsdafadsf1111111                   ', 1, N'sadfsadfsdaf                                                                    ', N'35 23 463562             ', N'(123) 412-5425', N'asdfsadf435         ', N'sadfsadsda          ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (57, N'sdfsafsdafadsf1111111                   ', 1, N'sadfsadfsdaf                                                                    ', N'35 23 463562             ', N'(123) 412-5425', N'asdfsadf435         ', N'sadfsadsda          ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (58, N'sdfsafsdafadsf1111111                   ', 1, N'sadfsadfsdaf                                                                    ', N'35 23 463562             ', N'(123) 412-5425', N'asdfsadf435         ', N'sadfsadsda          ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (59, N'sdfsafsdafadsf1111111                   ', 1, N'sadfsadfsdaf                                                                    ', N'35 23 463562             ', N'(123) 412-5425', N't                   ', N't                   ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (1055, N'werweqr43243w                           ', 1, N'fdgdfsgdsfg                                                                     ', N'54 67 678423             ', N'(454) 634-6365', N'testtes4            ', N'dsafsdf             ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (1056, N'werweqr43243w                           ', 1, N'fdgdfsgdsfg                                                                     ', N'54 67 678423             ', N'(454) 634-6365', N'testtes4            ', N'dsafsdf             ')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [client_address], [passport_number], [phone_number], [username], [client_password]) VALUES (1057, N'werweqr43243w                           ', 1, N'fdgdfsgdsfg                                                                     ', N'54 67 678423             ', N'(454) 634-6365', N'testtes4            ', N'dsafsdf             ')
SET IDENTITY_INSERT [dbo].[Clients] OFF
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([employee_id], [name], [salary], [bank_id], [passport_number], [phone_number], [employee_address], [username], [employee_password], [position_id]) VALUES (1, N'Василий Пупкин                          ', CAST(5000.0000 AS Decimal(18, 4)), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Employees] ([employee_id], [name], [salary], [bank_id], [passport_number], [phone_number], [employee_address], [username], [employee_password], [position_id]) VALUES (2, N'Сергей Сидоров                          ', CAST(10000.0000 AS Decimal(18, 4)), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Employees] ([employee_id], [name], [salary], [bank_id], [passport_number], [phone_number], [employee_address], [username], [employee_password], [position_id]) VALUES (4, N'adsfsdaf', CAST(1343124.0000 AS Decimal(18, 4)), 1, N'asdfaf', N'sdaf', N'adfasf', N'manager_bob', N'manager_bob', NULL)
INSERT [dbo].[Employees] ([employee_id], [name], [salary], [bank_id], [passport_number], [phone_number], [employee_address], [username], [employee_password], [position_id]) VALUES (5, N'adsfsdaf', CAST(1343124.0000 AS Decimal(18, 4)), 1, N'asdfaf', N'sdaf', N'adfasf', N'manager_bobb', N'manager_bob', NULL)
INSERT [dbo].[Employees] ([employee_id], [name], [salary], [bank_id], [passport_number], [phone_number], [employee_address], [username], [employee_password], [position_id]) VALUES (6, N'adsfsdaf', CAST(1343124.0800 AS Decimal(18, 4)), 1, N'asdfaf', N'sdaf', N'adfasf', N'manager_bobb', N'manager_bob', NULL)
INSERT [dbo].[Employees] ([employee_id], [name], [salary], [bank_id], [passport_number], [phone_number], [employee_address], [username], [employee_password], [position_id]) VALUES (7, N'asdfasdf1', CAST(123123.0000 AS Decimal(18, 4)), 1, N'34 5  ', N'(345)    -', N'asdf', N'manager_bot', N'manager_bot', NULL)
INSERT [dbo].[Employees] ([employee_id], [name], [salary], [bank_id], [passport_number], [phone_number], [employee_address], [username], [employee_password], [position_id]) VALUES (8, N'asdfasdf1', CAST(123123.0000 AS Decimal(18, 4)), 1, N'34 43 254235', N'(345) 324-5432', N'asdfasdfasdfsdf', N'manager_bot', N'manager_bot', NULL)
INSERT [dbo].[Employees] ([employee_id], [name], [salary], [bank_id], [passport_number], [phone_number], [employee_address], [username], [employee_password], [position_id]) VALUES (9, N'asdf', CAST(24566.0000 AS Decimal(18, 4)), 1, N'34 35 363245', N'(345) 423-6532', N'asdf', N'ggggt', N'ggggt', 1)
INSERT [dbo].[Employees] ([employee_id], [name], [salary], [bank_id], [passport_number], [phone_number], [employee_address], [username], [employee_password], [position_id]) VALUES (10, N'hr2', CAST(245664.5400 AS Decimal(18, 4)), 3, N'34 35 366565', N'(345) 423-6532', N'asdf', N'hr2', N'hr2', 2)
SET IDENTITY_INSERT [dbo].[Employees] OFF
SET IDENTITY_INSERT [dbo].[Loans] ON 

INSERT [dbo].[Loans] ([loan_id], [account_number], [credit], [interest], [loan_term]) VALUES (1, N'123', CAST(123 AS Decimal(18, 0)), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Loans] OFF
SET IDENTITY_INSERT [dbo].[Positions] ON 

INSERT [dbo].[Positions] ([position_id], [name], [role_id]) VALUES (1, N'Manager', 2)
INSERT [dbo].[Positions] ([position_id], [name], [role_id]) VALUES (2, N'HR', 3)
SET IDENTITY_INSERT [dbo].[Positions] OFF
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([role_id], [name]) VALUES (1, N'db_client')
INSERT [dbo].[Roles] ([role_id], [name]) VALUES (2, N'db_manager')
INSERT [dbo].[Roles] ([role_id], [name]) VALUES (3, N'db_hr')
SET IDENTITY_INSERT [dbo].[Roles] OFF
ALTER TABLE [dbo].[BankAccounts]  WITH CHECK ADD  CONSTRAINT [CK_BankAccounts] CHECK  (([interest]>=(0) AND [interest]<=(1)))
GO
ALTER TABLE [dbo].[BankAccounts] CHECK CONSTRAINT [CK_BankAccounts]
GO
ALTER TABLE [dbo].[Loans]  WITH CHECK ADD  CONSTRAINT [CK_Loans] CHECK  (([interest]>=(0) AND [interest]<=(1)))
GO
ALTER TABLE [dbo].[Loans] CHECK CONSTRAINT [CK_Loans]
GO
/****** Object:  StoredProcedure [dbo].[InsertBankAccount]    Script Date: 21.12.2017 12:35:02 ******/
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
ALTER AUTHORIZATION ON [dbo].[InsertBankAccount] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[InsertBankAccountUsingPassport]    Script Date: 21.12.2017 12:35:02 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertClient]    Script Date: 21.12.2017 12:35:02 ******/
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
	EXEC RegisterClient @UserName, @Password, 'db_client'
End


GO
ALTER AUTHORIZATION ON [dbo].[InsertClient] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[InsertClient] TO [db_client] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[InsertClient] TO [db_manager] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[InsertEmployee]    Script Date: 21.12.2017 12:35:02 ******/
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
	
	EXEC RegisterClient @UserName, @Password, @RoleName
End

GO
ALTER AUTHORIZATION ON [dbo].[InsertEmployee] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[InsertEmployee] TO [db_HR] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[RegisterClient]    Script Date: 21.12.2017 12:35:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[RegisterClient]
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
ALTER AUTHORIZATION ON [dbo].[RegisterClient] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[RegisterClient] TO [db_client] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[RegisterClient] TO [db_manager] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[SelectBanksWhereCity]    Script Date: 21.12.2017 12:35:02 ******/
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
/****** Object:  StoredProcedure [dbo].[SelectCities]    Script Date: 21.12.2017 12:35:02 ******/
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
/****** Object:  StoredProcedure [dbo].[SelectClientsWithPassport]    Script Date: 21.12.2017 12:35:02 ******/
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
/****** Object:  StoredProcedure [dbo].[SelectPositions]    Script Date: 21.12.2017 12:35:02 ******/
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
/****** Object:  StoredProcedure [dbo].[SelectUserBankAccounts]    Script Date: 21.12.2017 12:35:02 ******/
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
/****** Object:  StoredProcedure [dbo].[SelectUserBankAccountsNumbers]    Script Date: 21.12.2017 12:35:02 ******/
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
/****** Object:  StoredProcedure [dbo].[SelectUserLogin]    Script Date: 21.12.2017 12:35:02 ******/
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
/****** Object:  StoredProcedure [dbo].[SelectUserRole]    Script Date: 21.12.2017 12:35:02 ******/
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
/****** Object:  StoredProcedure [dbo].[TransferFunds]    Script Date: 21.12.2017 12:35:02 ******/
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
		COMMIT
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
