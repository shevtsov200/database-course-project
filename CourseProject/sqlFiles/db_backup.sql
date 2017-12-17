USE [master]
GO
/****** Object:  Database [CourseProject]    Script Date: 17.12.2017 13:11:28 ******/
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
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 17.12.2017 13:11:28 ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 17.12.2017 13:11:28 ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT Service\MSSQLSERVER]    Script Date: 17.12.2017 13:11:28 ******/
CREATE LOGIN [NT Service\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT AUTHORITY\СИСТЕМА]    Script Date: 17.12.2017 13:11:28 ******/
CREATE LOGIN [NT AUTHORITY\СИСТЕМА] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [nonquery]    Script Date: 17.12.2017 13:11:28 ******/
CREATE LOGIN [nonquery] WITH PASSWORD=N'c<õ¼¼9÷PI_Ác%%*µÈïèûX]!W', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [nonquery] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [mr]    Script Date: 17.12.2017 13:11:28 ******/
CREATE LOGIN [mr] WITH PASSWORD=N'ÂË_·%ð.Be~±?,fe×F¦tk²úÔ=È''', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [mr] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [hr]    Script Date: 17.12.2017 13:11:28 ******/
CREATE LOGIN [hr] WITH PASSWORD=N'Éª
,r¹©°tì7gúpc"c9
È²Åú¨7½o', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [hr] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [gt]    Script Date: 17.12.2017 13:11:28 ******/
CREATE LOGIN [gt] WITH PASSWORD=N'fzA)§g^¬Q{Ö»ª½]0-`¬Kít[HI', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [gt] DISABLE
GO
/****** Object:  Login [BUILTIN\Пользователи]    Script Date: 17.12.2017 13:11:28 ******/
CREATE LOGIN [BUILTIN\Пользователи] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [bob]    Script Date: 17.12.2017 13:11:28 ******/
CREATE LOGIN [bob] WITH PASSWORD=N'}m;F)b¦dO\D°PIîLnñÊ½¤DIÄ-', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [bob] DISABLE
GO
/****** Object:  Login [ASUSN551JM\user]    Script Date: 17.12.2017 13:11:28 ******/
CREATE LOGIN [ASUSN551JM\user] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 17.12.2017 13:11:28 ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'ÀhÈ(Ñ0Òv°UÍS·¸óëXÈeç±&`É}xt{4''', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 17.12.2017 13:11:28 ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'WT:m[¯ãÌµº¤vùáñÖ´/»Æ¡ ©Ýç~', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
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
/****** Object:  User [nonquery]    Script Date: 17.12.2017 13:11:28 ******/
CREATE USER [nonquery] FOR LOGIN [nonquery] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [mr]    Script Date: 17.12.2017 13:11:28 ******/
CREATE USER [mr] FOR LOGIN [mr] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [hr]    Script Date: 17.12.2017 13:11:28 ******/
CREATE USER [hr] FOR LOGIN [hr] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [gt]    Script Date: 17.12.2017 13:11:28 ******/
CREATE USER [gt] FOR LOGIN [gt] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [bob]    Script Date: 17.12.2017 13:11:28 ******/
CREATE USER [bob] FOR LOGIN [bob] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  DatabaseRole [db_manager]    Script Date: 17.12.2017 13:11:28 ******/
CREATE ROLE [db_manager]
GO
/****** Object:  DatabaseRole [db_hr_administrator]    Script Date: 17.12.2017 13:11:28 ******/
CREATE ROLE [db_hr_administrator]
GO
/****** Object:  DatabaseRole [db_HR]    Script Date: 17.12.2017 13:11:28 ******/
CREATE ROLE [db_HR]
GO
/****** Object:  DatabaseRole [db_client]    Script Date: 17.12.2017 13:11:28 ******/
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
ALTER ROLE [db_client] ADD MEMBER [nonquery]
GO
ALTER ROLE [db_manager] ADD MEMBER [mr]
GO
ALTER ROLE [db_HR] ADD MEMBER [hr]
GO
ALTER ROLE [db_client] ADD MEMBER [gt]
GO
ALTER ROLE [db_client] ADD MEMBER [bob]
GO
GRANT CONNECT TO [bob] AS [dbo]
GO
GRANT CONNECT TO [gt] AS [dbo]
GO
GRANT CONNECT TO [hr] AS [dbo]
GO
GRANT CONNECT TO [mr] AS [dbo]
GO
GRANT CONNECT TO [nonquery] AS [dbo]
GO
/****** Object:  Table [dbo].[BankAccounts]    Script Date: 17.12.2017 13:11:29 ******/
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
/****** Object:  Table [dbo].[Cities]    Script Date: 17.12.2017 13:11:29 ******/
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
GRANT SELECT ON [dbo].[Cities] TO [db_client] AS [dbo]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 17.12.2017 13:11:29 ******/
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
ALTER AUTHORIZATION ON [dbo].[Clients] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[Clients] TO [db_client] AS [dbo]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 17.12.2017 13:11:29 ******/
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
/****** Object:  Table [dbo].[Loans]    Script Date: 17.12.2017 13:11:29 ******/
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
/****** Object:  Table [dbo].[Transactions]    Script Date: 17.12.2017 13:11:29 ******/
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

INSERT [dbo].[BankAccounts] ([account_id], [account_number], [client_id], [balance], [interest]) VALUES (1, NULL, 21, CAST(1000000 AS Decimal(18, 0)), CAST(0.5000 AS Decimal(7, 4)))
INSERT [dbo].[BankAccounts] ([account_id], [account_number], [client_id], [balance], [interest]) VALUES (2, NULL, 21, CAST(12000 AS Decimal(18, 0)), CAST(1.0000 AS Decimal(7, 4)))
INSERT [dbo].[BankAccounts] ([account_id], [account_number], [client_id], [balance], [interest]) VALUES (3, NULL, 21, CAST(500 AS Decimal(18, 0)), CAST(1.0000 AS Decimal(7, 4)))
INSERT [dbo].[BankAccounts] ([account_id], [account_number], [client_id], [balance], [interest]) VALUES (4, NULL, 21, CAST(53623 AS Decimal(18, 0)), CAST(1.0000 AS Decimal(7, 4)))
INSERT [dbo].[BankAccounts] ([account_id], [account_number], [client_id], [balance], [interest]) VALUES (5, NULL, 38, CAST(28166 AS Decimal(18, 0)), CAST(0.1300 AS Decimal(7, 4)))
INSERT [dbo].[BankAccounts] ([account_id], [account_number], [client_id], [balance], [interest]) VALUES (6, NULL, 21, CAST(60000 AS Decimal(18, 0)), CAST(0.0500 AS Decimal(7, 4)))
SET IDENTITY_INSERT [dbo].[BankAccounts] OFF
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
/****** Object:  StoredProcedure [dbo].[InsertBankAccount]    Script Date: 17.12.2017 13:11:29 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertBankAccountUsingPassport]    Script Date: 17.12.2017 13:11:29 ******/
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
/****** Object:  StoredProcedure [dbo].[InsertClient]    Script Date: 17.12.2017 13:11:29 ******/
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
/****** Object:  StoredProcedure [dbo].[RegisterClient]    Script Date: 17.12.2017 13:11:29 ******/
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
ALTER AUTHORIZATION ON [dbo].[RegisterClient] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[SelectCities]    Script Date: 17.12.2017 13:11:29 ******/
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
GRANT EXECUTE ON [dbo].[SelectCities] TO [db_manager] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[SelectClientsWithPassport]    Script Date: 17.12.2017 13:11:29 ******/
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
/****** Object:  StoredProcedure [dbo].[SelectUserBankAccounts]    Script Date: 17.12.2017 13:11:29 ******/
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
/****** Object:  StoredProcedure [dbo].[SelectUserBankAccountsNumbers]    Script Date: 17.12.2017 13:11:29 ******/
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
/****** Object:  StoredProcedure [dbo].[SelectUserLogin]    Script Date: 17.12.2017 13:11:29 ******/
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
/****** Object:  StoredProcedure [dbo].[SelectUserRole]    Script Date: 17.12.2017 13:11:29 ******/
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
ALTER AUTHORIZATION ON [dbo].[SelectUserRole] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [dbo].[SelectUserRole] TO [db_client] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[SelectUserRole] TO [db_HR] AS [dbo]
GO
GRANT EXECUTE ON [dbo].[SelectUserRole] TO [db_manager] AS [dbo]
GO
/****** Object:  StoredProcedure [dbo].[TransferFunds]    Script Date: 17.12.2017 13:11:29 ******/
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
