USE [CourseProject]
GO
/****** Object:  StoredProcedure [dbo].[SelectClientsWithPassport]    Script Date: 08.12.2017 15:46:51 ******/
DROP PROCEDURE [dbo].[SelectClientsWithPassport]
GO
/****** Object:  StoredProcedure [dbo].[InsertClient]    Script Date: 08.12.2017 15:46:51 ******/
DROP PROCEDURE [dbo].[InsertClient]
GO
/****** Object:  StoredProcedure [dbo].[InsertBankAccountUsingPassport]    Script Date: 08.12.2017 15:46:51 ******/
DROP PROCEDURE [dbo].[InsertBankAccountUsingPassport]
GO
/****** Object:  StoredProcedure [dbo].[InsertBankAccount]    Script Date: 08.12.2017 15:46:51 ******/
DROP PROCEDURE [dbo].[InsertBankAccount]
GO
ALTER TABLE [dbo].[Loans] DROP CONSTRAINT [CK_Loans]
GO
ALTER TABLE [dbo].[BankAccounts] DROP CONSTRAINT [CK_BankAccounts]
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 08.12.2017 15:46:51 ******/
DROP TABLE [dbo].[Transactions]
GO
/****** Object:  Table [dbo].[Loans]    Script Date: 08.12.2017 15:46:51 ******/
DROP TABLE [dbo].[Loans]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 08.12.2017 15:46:51 ******/
DROP TABLE [dbo].[Employees]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 08.12.2017 15:46:51 ******/
DROP TABLE [dbo].[Clients]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 08.12.2017 15:46:51 ******/
DROP TABLE [dbo].[Cities]
GO
/****** Object:  Table [dbo].[BankAccounts]    Script Date: 08.12.2017 15:46:51 ******/
DROP TABLE [dbo].[BankAccounts]
GO
USE [master]
GO
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 08.12.2017 15:46:51 ******/
DROP LOGIN [##MS_PolicyEventProcessingLogin##]
GO
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 08.12.2017 15:46:51 ******/
DROP LOGIN [##MS_PolicyTsqlExecutionLogin##]
GO
/****** Object:  Login [ASUSN551JM\user]    Script Date: 08.12.2017 15:46:51 ******/
DROP LOGIN [ASUSN551JM\user]
GO
/****** Object:  Login [BUILTIN\Пользователи]    Script Date: 08.12.2017 15:46:51 ******/
DROP LOGIN [BUILTIN\Пользователи]
GO
/****** Object:  Login [NT AUTHORITY\СИСТЕМА]    Script Date: 08.12.2017 15:46:51 ******/
DROP LOGIN [NT AUTHORITY\СИСТЕМА]
GO
/****** Object:  Login [NT Service\MSSQLSERVER]    Script Date: 08.12.2017 15:46:51 ******/
DROP LOGIN [NT Service\MSSQLSERVER]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 08.12.2017 15:46:51 ******/
DROP LOGIN [NT SERVICE\SQLWriter]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 08.12.2017 15:46:51 ******/
DROP LOGIN [NT SERVICE\Winmgmt]
GO
/****** Object:  Database [CourseProject]    Script Date: 08.12.2017 15:46:51 ******/
DROP DATABASE [CourseProject]
GO
/****** Object:  Database [CourseProject]    Script Date: 08.12.2017 15:46:51 ******/
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
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 08.12.2017 15:46:51 ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 08.12.2017 15:46:51 ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT Service\MSSQLSERVER]    Script Date: 08.12.2017 15:46:51 ******/
CREATE LOGIN [NT Service\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\СИСТЕМА]    Script Date: 08.12.2017 15:46:51 ******/
CREATE LOGIN [NT AUTHORITY\СИСТЕМА] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [BUILTIN\Пользователи]    Script Date: 08.12.2017 15:46:51 ******/
CREATE LOGIN [BUILTIN\Пользователи] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [ASUSN551JM\user]    Script Date: 08.12.2017 15:46:51 ******/
CREATE LOGIN [ASUSN551JM\user] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 08.12.2017 15:46:51 ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'¢ÝænZÒë¸Ccb`²!Z6l TÑ¼W½IZ', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 08.12.2017 15:46:51 ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'[ï¶%B·ØN³åþ4ÙvEÿQ¬Ä©Mu¼bhU %Q', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
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
ALTER SERVER ROLE [sysadmin] ADD MEMBER [ASUSN551JM\user]
GO
USE [CourseProject]
GO
/****** Object:  Table [dbo].[BankAccounts]    Script Date: 08.12.2017 15:46:51 ******/
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
ALTER AUTHORIZATION ON [dbo].[BankAccounts] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 08.12.2017 15:46:51 ******/
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
ALTER AUTHORIZATION ON [dbo].[Cities] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 08.12.2017 15:46:51 ******/
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
	[address] [nchar](80) NULL,
	[passport_number] [nchar](25) NULL,
	[phone_number] [varchar](20) NULL,
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
/****** Object:  Table [dbo].[Employees]    Script Date: 08.12.2017 15:46:51 ******/
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
ALTER AUTHORIZATION ON [dbo].[Employees] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Loans]    Script Date: 08.12.2017 15:46:51 ******/
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
ALTER AUTHORIZATION ON [dbo].[Loans] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Transactions]    Script Date: 08.12.2017 15:46:51 ******/
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
ALTER AUTHORIZATION ON [dbo].[Transactions] TO  SCHEMA OWNER 
GO
SET IDENTITY_INSERT [dbo].[BankAccounts] ON 

INSERT [dbo].[BankAccounts] ([account_id], [account_number], [client_id], [balance], [interest]) VALUES (1, NULL, 21, CAST(0 AS Decimal(18, 0)), CAST(0.5000 AS Decimal(7, 4)))
INSERT [dbo].[BankAccounts] ([account_id], [account_number], [client_id], [balance], [interest]) VALUES (2, NULL, 21, CAST(0 AS Decimal(18, 0)), CAST(1.0000 AS Decimal(7, 4)))
INSERT [dbo].[BankAccounts] ([account_id], [account_number], [client_id], [balance], [interest]) VALUES (3, NULL, 21, CAST(0 AS Decimal(18, 0)), CAST(1.0000 AS Decimal(7, 4)))
INSERT [dbo].[BankAccounts] ([account_id], [account_number], [client_id], [balance], [interest]) VALUES (4, NULL, 21, CAST(0 AS Decimal(18, 0)), CAST(1.0000 AS Decimal(7, 4)))
INSERT [dbo].[BankAccounts] ([account_id], [account_number], [client_id], [balance], [interest]) VALUES (5, NULL, NULL, CAST(0 AS Decimal(18, 0)), CAST(0.1300 AS Decimal(7, 4)))
INSERT [dbo].[BankAccounts] ([account_id], [account_number], [client_id], [balance], [interest]) VALUES (6, NULL, 21, CAST(0 AS Decimal(18, 0)), CAST(0.0500 AS Decimal(7, 4)))
SET IDENTITY_INSERT [dbo].[BankAccounts] OFF
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([city_id], [name]) VALUES (1, N'Санкт-Петербург     ')
INSERT [dbo].[Cities] ([city_id], [name]) VALUES (2, N'Москва              ')
INSERT [dbo].[Cities] ([city_id], [name]) VALUES (3, N'Владик              ')
INSERT [dbo].[Cities] ([city_id], [name]) VALUES (4, N'Челябинск           ')
INSERT [dbo].[Cities] ([city_id], [name]) VALUES (5, N'ы                   ')
SET IDENTITY_INSERT [dbo].[Cities] OFF
SET IDENTITY_INSERT [dbo].[Clients] ON 

INSERT [dbo].[Clients] ([client_id], [name], [city_id], [address], [passport_number], [phone_number]) VALUES (1, N'Вася Клиент                             ', 1, N'Проспект Большевиков 32                                                         ', NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [address], [passport_number], [phone_number]) VALUES (2, N'Клиент Саша                             ', 2, N'пр. Победоносца 28                                                              ', NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [address], [passport_number], [phone_number]) VALUES (3, N'Клиент Дима                             ', 3, N'У чёрта на куличиках                                                            ', NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [address], [passport_number], [phone_number]) VALUES (4, N'ыфвпфаывавфвф                           ', 1, N'фывафыва                                                                        ', NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [address], [passport_number], [phone_number]) VALUES (5, N'фывафыва                                ', 1, N'фвыафыва                                                                        ', NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [address], [passport_number], [phone_number]) VALUES (6, N'202                                     ', 3, N'202                                                                             ', NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [address], [passport_number], [phone_number]) VALUES (7, N'Процедурный Клиент                      ', 3, N'авпывапывап                                                                     ', NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [address], [passport_number], [phone_number]) VALUES (8, N'фывафыа                                 ', 2, N'фывафыа                                                                         ', NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [address], [passport_number], [phone_number]) VALUES (9, N'авыпывап                                ', 1, N'выапывап                                                                        ', NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [address], [passport_number], [phone_number]) VALUES (10, N'                                        ', 1, N'                                                                                ', NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [address], [passport_number], [phone_number]) VALUES (11, N'1ыфвафыв                                ', 1, N'342фыва                                                                         ', NULL, NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [address], [passport_number], [phone_number]) VALUES (12, N'Клиент с Паспортом                      ', 1, N'фывафыаыфвафы                                                                   ', N'1234568                  ', NULL)
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [address], [passport_number], [phone_number]) VALUES (13, N'Клиент с Телефоном                      ', 1, N'афвыпафвыаыфвафыв                                                               ', N'1234213423141234         ', N'')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [address], [passport_number], [phone_number]) VALUES (17, N'клиент с тел                            ', 1, N'фывафывавфыа                                                                    ', N'2342                     ', N'(911) 752-')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [address], [passport_number], [phone_number]) VALUES (18, N'клиент с телефоном2                     ', 1, N'фывафывавфыа                                                                    ', N'2342234324               ', N'(911) 752-9702')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [address], [passport_number], [phone_number]) VALUES (19, N'клиент с маской паспорта                ', 1, N'ывфаыфвафвафыв                                                                  ', N'12 45 193509             ', N'(234) 512-3423')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [address], [passport_number], [phone_number]) VALUES (20, N'фывафывафыва                            ', 1, N'фываывфафыва                                                                    ', N'23 42 234566             ', N'(112) 234-1241')
INSERT [dbo].[Clients] ([client_id], [name], [city_id], [address], [passport_number], [phone_number]) VALUES (21, N'Клиент с паспортом 1                    ', 1, N'фывафываывфаыфва                                                                ', N'11 11 111111             ', N'(111) 111-1111')
SET IDENTITY_INSERT [dbo].[Clients] OFF
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([employee_id], [name], [salary]) VALUES (1, N'Василий Пупкин                          ', 5000)
INSERT [dbo].[Employees] ([employee_id], [name], [salary]) VALUES (2, N'Сергей Сидоров                          ', 10000)
SET IDENTITY_INSERT [dbo].[Employees] OFF
SET IDENTITY_INSERT [dbo].[Loans] ON 

INSERT [dbo].[Loans] ([loan_id], [account_number], [credit], [interest], [loan_term]) VALUES (1, N'123', CAST(123 AS Decimal(18, 0)), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Loans] OFF
ALTER TABLE [dbo].[BankAccounts]  WITH CHECK ADD  CONSTRAINT [CK_BankAccounts] CHECK  (([interest]>=(0) AND [interest]<=(1)))
GO
ALTER TABLE [dbo].[BankAccounts] CHECK CONSTRAINT [CK_BankAccounts]
GO
ALTER TABLE [dbo].[Loans]  WITH CHECK ADD  CONSTRAINT [CK_Loans] CHECK  (([interest]>=(0) AND [interest]<=(1)))
GO
ALTER TABLE [dbo].[Loans] CHECK CONSTRAINT [CK_Loans]
GO
/****** Object:  StoredProcedure [dbo].[InsertBankAccount]    Script Date: 08.12.2017 15:46:51 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertBankAccountUsingPassport]    Script Date: 08.12.2017 15:46:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[InsertBankAccountUsingPassport]
(
	@PassportNumber nchar(25),
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
/****** Object:  StoredProcedure [dbo].[InsertClient]    Script Date: 08.12.2017 15:46:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[InsertClient]
(
	@ClientName nchar(40),
	@ClientCityId integer,
	@ClientAddress nchar(80),
	@PassportNumber nchar(25),
	@PhoneNumber varchar(20)
)
As
Begin
	INSERT INTO Clients (name, city_id, address, passport_number, phone_number) 
	VALUES (@ClientName, @ClientCityId, @ClientAddress, @PassportNumber, @PhoneNumber)
End


GO
ALTER AUTHORIZATION ON [dbo].[InsertClient] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[SelectClientsWithPassport]    Script Date: 08.12.2017 15:46:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SelectClientsWithPassport]
(
	@PassportNumber nchar(25)
)
As
Begin
	SELECT count(*) FROM Clients WHERE CLients.passport_number = @PassportNumber
End

GO
ALTER AUTHORIZATION ON [dbo].[SelectClientsWithPassport] TO  SCHEMA OWNER 
GO
USE [master]
GO
ALTER DATABASE [CourseProject] SET  READ_WRITE 
GO
