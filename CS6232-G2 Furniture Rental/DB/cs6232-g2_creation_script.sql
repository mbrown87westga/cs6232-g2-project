USE [master]
GO
IF DB_ID('cs6232-g2') IS NOT NULL
    DROP DATABASE [cs6232-g2]
GO
/****** Object:  Database [cs6232-g2]    Script Date: 3/12/2022 12:27:20 PM ******/
CREATE DATABASE [cs6232-g2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'cs6232-g2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\cs6232-g2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'cs6232-g2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\cs6232-g2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [cs6232-g2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [cs6232-g2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [cs6232-g2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [cs6232-g2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [cs6232-g2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [cs6232-g2] SET ARITHABORT OFF 
GO
ALTER DATABASE [cs6232-g2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [cs6232-g2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [cs6232-g2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [cs6232-g2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [cs6232-g2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [cs6232-g2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [cs6232-g2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [cs6232-g2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [cs6232-g2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [cs6232-g2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [cs6232-g2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [cs6232-g2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [cs6232-g2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [cs6232-g2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [cs6232-g2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [cs6232-g2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [cs6232-g2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [cs6232-g2] SET RECOVERY FULL 
GO
ALTER DATABASE [cs6232-g2] SET  MULTI_USER 
GO
ALTER DATABASE [cs6232-g2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [cs6232-g2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [cs6232-g2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [cs6232-g2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [cs6232-g2] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'cs6232-g2', N'ON'
GO
ALTER DATABASE [cs6232-g2] SET QUERY_STORE = OFF
GO
USE [cs6232-g2]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/12/2022 12:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[categoryDescription] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[categoryDescription] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 3/12/2022 12:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[employeeID] [int] IDENTITY(1,1) NOT NULL,
	[birthdate] [date] NOT NULL,
	[firstName] [varchar](50) NOT NULL,
	[lastName] [varchar](50) NOT NULL,
	[phone] [char](10) NOT NULL,
	[address1] [varchar](150) NOT NULL,
	[address2] [varchar](150) NULL,
	[city] [varchar](50) NOT NULL,
	[state] [char](2) NOT NULL,
	[zipcode] [varchar](10) NOT NULL,
	[userName] [varchar](45) NOT NULL,
	[password] [varchar](45) NOT NULL,
	[isAdmin] [bit] NOT NULL,
	[sex] [char](1) NOT NULL,
	[deactivatedDate] [date] NULL
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[employeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Furniture]    Script Date: 3/12/2022 12:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Furniture](
	[furnitureID] [int] IDENTITY(1,1) NOT NULL,
	[description] [varchar](500) NOT NULL,
	[dailyRentalRate] [decimal](9, 2) NOT NULL,
	[quantityOwned] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[categoryDescription] [varchar](50) NOT NULL,
	[styleDescription] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Furniture] PRIMARY KEY CLUSTERED 
(
	[furnitureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member]    Script Date: 3/12/2022 12:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member](
	[memberID] [int] IDENTITY(1,1) NOT NULL,
	[birthDate] [date] NOT NULL,
	[firstName] [varchar](50) NOT NULL,
	[lastName] [varchar](50) NOT NULL,
	[phone] [char](10) NOT NULL,
	[address1] [varchar](150) NOT NULL,
	[address2] [varchar](150) NULL,
	[city] [varchar](50) NOT NULL,
	[state] [char](2) NOT NULL,
	[zipcode] [varchar](10) NOT NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[memberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RentalItem]    Script Date: 3/12/2022 12:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentalItem](
	[rentalTransactionID] [int] NOT NULL,
	[furnitureID] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[dailyRentalRate] [decimal](9, 2) NOT NULL,
 CONSTRAINT [PK_RentalItem] PRIMARY KEY CLUSTERED 
(
	[rentalTransactionID] ASC,
	[furnitureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RentalTransaction]    Script Date: 3/12/2022 12:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RentalTransaction](
	[rentalTransactionID] [int] IDENTITY(1,1) NOT NULL,
	[rentalTimestamp] [datetime] NOT NULL,
	[dueDateTime] [datetime] NOT NULL,
	[memberID] [int] NOT NULL,
	[employeeID] [int] NOT NULL,
 CONSTRAINT [PK_RentalTransaction] PRIMARY KEY CLUSTERED 
(
	[rentalTransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReturnItem]    Script Date: 3/12/2022 12:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnItem](
	[rentalTransactionID] [int] NOT NULL,
	[furnitureID] [int] NOT NULL,
	[returnTransactionID] [int] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_ReturnItem] PRIMARY KEY CLUSTERED 
(
	[rentalTransactionID] ASC,
	[furnitureID] ASC,
	[returnTransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReturnTransaction]    Script Date: 3/12/2022 12:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnTransaction](
	[returnTransactionID] [int] IDENTITY(1,1) NOT NULL,
	[returnTimestamp] [datetime] NOT NULL,
	[employeeID] [int] NOT NULL,
 CONSTRAINT [PK_ReturnTransaction] PRIMARY KEY CLUSTERED 
(
	[returnTransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Style]    Script Date: 3/12/2022 12:27:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Style](
	[styleDescription] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Style] PRIMARY KEY CLUSTERED 
(
	[styleDescription] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [EmployeeIdx]    Script Date: 3/28/2022 7:36:54 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [EmployeeIdx] ON [dbo].[Employee] 
(
	[userName] ASC
)
GO
INSERT [dbo].[Category] ([categoryDescription]) VALUES (N'bean bag')
INSERT [dbo].[Category] ([categoryDescription]) VALUES (N'bed')
INSERT [dbo].[Category] ([categoryDescription]) VALUES (N'bookcase')
INSERT [dbo].[Category] ([categoryDescription]) VALUES (N'chair')
INSERT [dbo].[Category] ([categoryDescription]) VALUES (N'chest')
INSERT [dbo].[Category] ([categoryDescription]) VALUES (N'couch')
INSERT [dbo].[Category] ([categoryDescription]) VALUES (N'crib')
INSERT [dbo].[Category] ([categoryDescription]) VALUES (N'desk')
INSERT [dbo].[Category] ([categoryDescription]) VALUES (N'futon')
INSERT [dbo].[Category] ([categoryDescription]) VALUES (N'lamp')
INSERT [dbo].[Category] ([categoryDescription]) VALUES (N'piano')
INSERT [dbo].[Category] ([categoryDescription]) VALUES (N'playpen')
INSERT [dbo].[Category] ([categoryDescription]) VALUES (N'stool')
INSERT [dbo].[Category] ([categoryDescription]) VALUES (N'table')
INSERT [dbo].[Category] ([categoryDescription]) VALUES (N'wardrobe')
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([employeeID], [birthdate], [firstName], [lastName], [phone], [address1], [address2], [city], [state], [zipcode], [userName], [password], [isAdmin], [sex], [deactivatedDate]) VALUES (1, CAST(N'1986-08-04' AS Date), N'Herb', N'Robison', N'5125598754', N'150 main st', NULL, N'smalltown', N'GA', N'30010', N'HRobinson', N'0VM1MA/EL5V1bvDnAcw5xko6nD2hmTJj9bOptfmEDto=', 1, N'm', NULL)
INSERT [dbo].[Employee] ([employeeID], [birthdate], [firstName], [lastName], [phone], [address1], [address2], [city], [state], [zipcode], [userName], [password], [isAdmin], [sex], [deactivatedDate]) VALUES (2, CAST(N'1979-01-10' AS Date), N'Chadena', N'Vader', N'5128593407', N'2300 s temple st', NULL, N'someville', N'GA', N'30016', N'CVader', N'0VM1MA/EL5V1bvDnAcw5xko6nD2hmTJj9bOptfmEDto=', 1, N'f', NULL)
INSERT [dbo].[Employee] ([employeeID], [birthdate], [firstName], [lastName], [phone], [address1], [address2], [city], [state], [zipcode], [userName], [password], [isAdmin], [sex], [deactivatedDate]) VALUES (3, CAST(N'1990-01-01' AS Date), N'Smek', N'Crabbs', N'5195987374', N'457 fragola ct', N'apt 2', N'smalltown', N'GA', N'30008', N'SCrabbs', N'0VM1MA/EL5V1bvDnAcw5xko6nD2hmTJj9bOptfmEDto=', 0, N'f', NULL)
INSERT [dbo].[Employee] ([employeeID], [birthdate], [firstName], [lastName], [phone], [address1], [address2], [city], [state], [zipcode], [userName], [password], [isAdmin], [sex], [deactivatedDate]) VALUES (4, CAST(N'1986-10-10' AS Date), N'Wesley', N'Crusher', N'5987989875', N'68221 87th st', N'bsmt', N'someville', N'GA', N'30016', N'WCrusher', N'0VM1MA/EL5V1bvDnAcw5xko6nD2hmTJj9bOptfmEDto=', 0, N'm', NULL)
SET IDENTITY_INSERT [dbo].[Employee] OFF
SET IDENTITY_INSERT [dbo].[Furniture] ON 

INSERT [dbo].[Furniture] ([furnitureID], [description], [dailyRentalRate], [quantityOwned], [name], [categoryDescription], [styleDescription]) VALUES (1, N'this is a wooden chair', CAST(5.00 AS Decimal(9, 2)), 100, N'wooden chair', N'chair', N'simple')
INSERT [dbo].[Furniture] ([furnitureID], [description], [dailyRentalRate], [quantityOwned], [name], [categoryDescription], [styleDescription]) VALUES (2, N'this is a basic sofa', CAST(25.00 AS Decimal(9, 2)), 10, N'cloth sofa', N'couch', N'simple')
INSERT [dbo].[Furniture] ([furnitureID], [description], [dailyRentalRate], [quantityOwned], [name], [categoryDescription], [styleDescription]) VALUES (3, N'this is a card table', CAST(10.00 AS Decimal(9, 2)), 50, N'cheap table', N'table', N'simple')
INSERT [dbo].[Furniture] ([furnitureID], [description], [dailyRentalRate], [quantityOwned], [name], [categoryDescription], [styleDescription]) VALUES (4, N'this is a no-frills book case', CAST(40.00 AS Decimal(9, 2)), 45, N'basic book case', N'bookcase', N'simple')
INSERT [dbo].[Furniture] ([furnitureID], [description], [dailyRentalRate], [quantityOwned], [name], [categoryDescription], [styleDescription]) VALUES (5, N'this is a solid quality table which looks nice', CAST(35.00 AS Decimal(9, 2)), 40, N'nice table', N'table', N'modern')
INSERT [dbo].[Furniture] ([furnitureID], [description], [dailyRentalRate], [quantityOwned], [name], [categoryDescription], [styleDescription]) VALUES (6, N'this is a good looking leather couch', CAST(50.00 AS Decimal(9, 2)), 10, N'leather couch', N'couch', N'modern')
INSERT [dbo].[Furniture] ([furnitureID], [description], [dailyRentalRate], [quantityOwned], [name], [categoryDescription], [styleDescription]) VALUES (7, N'this is a chair that is of solid construction quality, and also attractive', CAST(15.00 AS Decimal(9, 2)), 60, N'attractive chair', N'chair', N'modern')
INSERT [dbo].[Furniture] ([furnitureID], [description], [dailyRentalRate], [quantityOwned], [name], [categoryDescription], [styleDescription]) VALUES (8, N'this is some funky hippie type chair. I don''t know what art deco means', CAST(11.00 AS Decimal(9, 2)), 10, N'retro chair', N'chair', N'art deco')
INSERT [dbo].[Furniture] ([furnitureID], [description], [dailyRentalRate], [quantityOwned], [name], [categoryDescription], [styleDescription]) VALUES (9, N'this is an old rocking chair made from wicker, which is some sort of wood-like stuff. Keep away from cats.', CAST(20.00 AS Decimal(9, 2)), 4, N'wicker rocking chair', N'chair', N'antique')
INSERT [dbo].[Furniture] ([furnitureID], [description], [dailyRentalRate], [quantityOwned], [name], [categoryDescription], [styleDescription]) VALUES (10, N'this is a throne that we took out of a pyramid. There was a mummy there that came back to life and chased us around. We are not responsible for what happens to you if you rent it and then sit in it. It is made of gold.', CAST(50000.00 AS Decimal(9, 2)), 1, N'king tut''s throne', N'chair', N'ancient egyptian')
SET IDENTITY_INSERT [dbo].[Furniture] OFF
SET IDENTITY_INSERT [dbo].[Member] ON 

INSERT [dbo].[Member] ([memberID], [birthDate], [firstName], [lastName], [phone], [address1], [address2], [city], [state], [zipcode]) VALUES (1, CAST(N'1980-10-01' AS Date), N'Joe', N'Smith', N'5555551212', N'123 main st', NULL, N'smalltown', N'GA', N'30008')
INSERT [dbo].[Member] ([memberID], [birthDate], [firstName], [lastName], [phone], [address1], [address2], [city], [state], [zipcode]) VALUES (2, CAST(N'1990-05-12' AS Date), N'Bob', N'Robertson', N'5555551213', N'129 main st', N'Apt 623', N'smalltown', N'GA', N'30008')
INSERT [dbo].[Member] ([memberID], [birthDate], [firstName], [lastName], [phone], [address1], [address2], [city], [state], [zipcode]) VALUES (3, CAST(N'1985-03-07' AS Date), N'Anne', N'Jackson', N'5555551255', N'10 Ave A', NULL, N'smalltown', N'GA', N'30008')
INSERT [dbo].[Member] ([memberID], [birthDate], [firstName], [lastName], [phone], [address1], [address2], [city], [state], [zipcode]) VALUES (4, CAST(N'1995-01-05' AS Date), N'Jill', N'Taylor', N'5585551000', N'2579 state st', N'Unit B', N'someville', N'GA', N'30016')
INSERT [dbo].[Member] ([memberID], [birthDate], [firstName], [lastName], [phone], [address1], [address2], [city], [state], [zipcode]) VALUES (5, CAST(N'2000-08-03' AS Date), N'Taylor', N'Bryce', N'5585551001', N'1790 state st', NULL, N'someville', N'GA', N'30016')
SET IDENTITY_INSERT [dbo].[Member] OFF
INSERT [dbo].[RentalItem] ([rentalTransactionID], [furnitureID], [quantity], [dailyRentalRate]) VALUES (1, 1, 5, CAST(5.00 AS Decimal(9, 2)))
INSERT [dbo].[RentalItem] ([rentalTransactionID], [furnitureID], [quantity], [dailyRentalRate]) VALUES (1, 3, 1, CAST(10.00 AS Decimal(9, 2)))
INSERT [dbo].[RentalItem] ([rentalTransactionID], [furnitureID], [quantity], [dailyRentalRate]) VALUES (1, 4, 1, CAST(40.00 AS Decimal(9, 2)))
INSERT [dbo].[RentalItem] ([rentalTransactionID], [furnitureID], [quantity], [dailyRentalRate]) VALUES (2, 1, 4, CAST(5.00 AS Decimal(9, 2)))
INSERT [dbo].[RentalItem] ([rentalTransactionID], [furnitureID], [quantity], [dailyRentalRate]) VALUES (3, 5, 1, CAST(35.00 AS Decimal(9, 2)))
INSERT [dbo].[RentalItem] ([rentalTransactionID], [furnitureID], [quantity], [dailyRentalRate]) VALUES (4, 6, 1, CAST(50.00 AS Decimal(9, 2)))
INSERT [dbo].[RentalItem] ([rentalTransactionID], [furnitureID], [quantity], [dailyRentalRate]) VALUES (4, 7, 1, CAST(13.55 AS Decimal(9, 2)))
INSERT [dbo].[RentalItem] ([rentalTransactionID], [furnitureID], [quantity], [dailyRentalRate]) VALUES (5, 5, 5, CAST(35.00 AS Decimal(9, 2)))
INSERT [dbo].[RentalItem] ([rentalTransactionID], [furnitureID], [quantity], [dailyRentalRate]) VALUES (5, 10, 1, CAST(50000.00 AS Decimal(9, 2)))
INSERT [dbo].[RentalItem] ([rentalTransactionID], [furnitureID], [quantity], [dailyRentalRate]) VALUES (6, 1, 4, CAST(5.00 AS Decimal(9, 2)))
INSERT [dbo].[RentalItem] ([rentalTransactionID], [furnitureID], [quantity], [dailyRentalRate]) VALUES (6, 4, 1, CAST(40.00 AS Decimal(9, 2)))
INSERT [dbo].[RentalItem] ([rentalTransactionID], [furnitureID], [quantity], [dailyRentalRate]) VALUES (6, 6, 1, CAST(50.00 AS Decimal(9, 2)))
INSERT [dbo].[RentalItem] ([rentalTransactionID], [furnitureID], [quantity], [dailyRentalRate]) VALUES (7, 2, 7, CAST(25.00 AS Decimal(9, 2)))
INSERT [dbo].[RentalItem] ([rentalTransactionID], [furnitureID], [quantity], [dailyRentalRate]) VALUES (8, 1, 6, CAST(5.00 AS Decimal(9, 2)))
INSERT [dbo].[RentalItem] ([rentalTransactionID], [furnitureID], [quantity], [dailyRentalRate]) VALUES (9, 9, 1, CAST(20.00 AS Decimal(9, 2)))
INSERT [dbo].[RentalItem] ([rentalTransactionID], [furnitureID], [quantity], [dailyRentalRate]) VALUES (10, 2, 1, CAST(25.00 AS Decimal(9, 2)))
INSERT [dbo].[RentalItem] ([rentalTransactionID], [furnitureID], [quantity], [dailyRentalRate]) VALUES (10, 4, 1, CAST(40.00 AS Decimal(9, 2)))
INSERT [dbo].[RentalItem] ([rentalTransactionID], [furnitureID], [quantity], [dailyRentalRate]) VALUES (10, 6, 1, CAST(50.00 AS Decimal(9, 2)))
SET IDENTITY_INSERT [dbo].[RentalTransaction] ON 

INSERT [dbo].[RentalTransaction] ([rentalTransactionID], [rentalTimestamp], [dueDateTime], [memberID], [employeeID]) VALUES (1, CAST(N'2022-02-25T00:00:00.000' AS DateTime), CAST(N'2022-03-04T00:00:00.000' AS DateTime), 1, 3)
INSERT [dbo].[RentalTransaction] ([rentalTransactionID], [rentalTimestamp], [dueDateTime], [memberID], [employeeID]) VALUES (2, CAST(N'2022-03-02T00:00:00.000' AS DateTime), CAST(N'2022-03-09T00:00:00.000' AS DateTime), 1, 4)
INSERT [dbo].[RentalTransaction] ([rentalTransactionID], [rentalTimestamp], [dueDateTime], [memberID], [employeeID]) VALUES (3, CAST(N'2022-03-03T00:00:00.000' AS DateTime), CAST(N'2022-03-10T00:00:00.000' AS DateTime), 2, 3)
INSERT [dbo].[RentalTransaction] ([rentalTransactionID], [rentalTimestamp], [dueDateTime], [memberID], [employeeID]) VALUES (4, CAST(N'2022-03-03T00:00:00.000' AS DateTime), CAST(N'2022-03-10T00:00:00.000' AS DateTime), 3, 4)
INSERT [dbo].[RentalTransaction] ([rentalTransactionID], [rentalTimestamp], [dueDateTime], [memberID], [employeeID]) VALUES (5, CAST(N'2022-03-03T00:00:00.000' AS DateTime), CAST(N'2022-03-10T00:00:00.000' AS DateTime), 4, 3)
INSERT [dbo].[RentalTransaction] ([rentalTransactionID], [rentalTimestamp], [dueDateTime], [memberID], [employeeID]) VALUES (6, CAST(N'2022-03-04T00:00:00.000' AS DateTime), CAST(N'2022-03-11T00:00:00.000' AS DateTime), 5, 4)
INSERT [dbo].[RentalTransaction] ([rentalTransactionID], [rentalTimestamp], [dueDateTime], [memberID], [employeeID]) VALUES (7, CAST(N'2022-03-05T00:00:00.000' AS DateTime), CAST(N'2022-03-12T00:00:00.000' AS DateTime), 1, 3)
INSERT [dbo].[RentalTransaction] ([rentalTransactionID], [rentalTimestamp], [dueDateTime], [memberID], [employeeID]) VALUES (8, CAST(N'2022-03-08T00:00:00.000' AS DateTime), CAST(N'2022-03-15T00:00:00.000' AS DateTime), 1, 4)
INSERT [dbo].[RentalTransaction] ([rentalTransactionID], [rentalTimestamp], [dueDateTime], [memberID], [employeeID]) VALUES (9, CAST(N'2022-03-08T00:00:00.000' AS DateTime), CAST(N'2022-03-15T00:00:00.000' AS DateTime), 2, 3)
INSERT [dbo].[RentalTransaction] ([rentalTransactionID], [rentalTimestamp], [dueDateTime], [memberID], [employeeID]) VALUES (10, CAST(N'2022-03-10T00:00:00.000' AS DateTime), CAST(N'2022-03-17T00:00:00.000' AS DateTime), 2, 4)
SET IDENTITY_INSERT [dbo].[RentalTransaction] OFF
INSERT [dbo].[ReturnItem] ([rentalTransactionID], [furnitureID], [returnTransactionID], [quantity]) VALUES (1, 1, 1, 2)
INSERT [dbo].[ReturnItem] ([rentalTransactionID], [furnitureID], [returnTransactionID], [quantity]) VALUES (1, 1, 2, 3)
INSERT [dbo].[ReturnItem] ([rentalTransactionID], [furnitureID], [returnTransactionID], [quantity]) VALUES (1, 3, 1, 1)
INSERT [dbo].[ReturnItem] ([rentalTransactionID], [furnitureID], [returnTransactionID], [quantity]) VALUES (1, 4, 1, 1)
INSERT [dbo].[ReturnItem] ([rentalTransactionID], [furnitureID], [returnTransactionID], [quantity]) VALUES (2, 1, 2, 2)
INSERT [dbo].[ReturnItem] ([rentalTransactionID], [furnitureID], [returnTransactionID], [quantity]) VALUES (2, 1, 3, 2)
INSERT [dbo].[ReturnItem] ([rentalTransactionID], [furnitureID], [returnTransactionID], [quantity]) VALUES (3, 5, 4, 1)
INSERT [dbo].[ReturnItem] ([rentalTransactionID], [furnitureID], [returnTransactionID], [quantity]) VALUES (4, 6, 5, 1)
INSERT [dbo].[ReturnItem] ([rentalTransactionID], [furnitureID], [returnTransactionID], [quantity]) VALUES (4, 7, 5, 1)
SET IDENTITY_INSERT [dbo].[ReturnTransaction] ON 

INSERT [dbo].[ReturnTransaction] ([returnTransactionID], [returnTimestamp], [employeeID]) VALUES (1, CAST(N'2022-02-28T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[ReturnTransaction] ([returnTransactionID], [returnTimestamp], [employeeID]) VALUES (2, CAST(N'2022-03-04T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[ReturnTransaction] ([returnTransactionID], [returnTimestamp], [employeeID]) VALUES (3, CAST(N'2022-03-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[ReturnTransaction] ([returnTransactionID], [returnTimestamp], [employeeID]) VALUES (4, CAST(N'2022-03-09T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[ReturnTransaction] ([returnTransactionID], [returnTimestamp], [employeeID]) VALUES (5, CAST(N'2022-03-10T00:00:00.000' AS DateTime), 4)
SET IDENTITY_INSERT [dbo].[ReturnTransaction] OFF
INSERT [dbo].[Style] ([styleDescription]) VALUES (N'ancient egyptian')
INSERT [dbo].[Style] ([styleDescription]) VALUES (N'antique')
INSERT [dbo].[Style] ([styleDescription]) VALUES (N'art deco')
INSERT [dbo].[Style] ([styleDescription]) VALUES (N'contemporary')
INSERT [dbo].[Style] ([styleDescription]) VALUES (N'modern')
INSERT [dbo].[Style] ([styleDescription]) VALUES (N'simple')
ALTER TABLE [dbo].[Furniture]  WITH CHECK ADD  CONSTRAINT [FK_Furniture_Category] FOREIGN KEY([categoryDescription])
REFERENCES [dbo].[Category] ([categoryDescription])
GO
ALTER TABLE [dbo].[Furniture] CHECK CONSTRAINT [FK_Furniture_Category]
GO
ALTER TABLE [dbo].[Furniture]  WITH CHECK ADD  CONSTRAINT [FK_Furniture_Style] FOREIGN KEY([styleDescription])
REFERENCES [dbo].[Style] ([styleDescription])
GO
ALTER TABLE [dbo].[Furniture] CHECK CONSTRAINT [FK_Furniture_Style]
GO
ALTER TABLE [dbo].[RentalItem]  WITH CHECK ADD  CONSTRAINT [FK_RentalItem_Furniture] FOREIGN KEY([furnitureID])
REFERENCES [dbo].[Furniture] ([furnitureID])
GO
ALTER TABLE [dbo].[RentalItem] CHECK CONSTRAINT [FK_RentalItem_Furniture]
GO
ALTER TABLE [dbo].[RentalItem]  WITH CHECK ADD  CONSTRAINT [FK_RentalItem_RentalTransaction] FOREIGN KEY([rentalTransactionID])
REFERENCES [dbo].[RentalTransaction] ([rentalTransactionID])
GO
ALTER TABLE [dbo].[RentalItem] CHECK CONSTRAINT [FK_RentalItem_RentalTransaction]
GO
ALTER TABLE [dbo].[RentalTransaction]  WITH CHECK ADD  CONSTRAINT [FK_RentalTransaction_Employee] FOREIGN KEY([employeeID])
REFERENCES [dbo].[Employee] ([employeeID])
GO
ALTER TABLE [dbo].[RentalTransaction] CHECK CONSTRAINT [FK_RentalTransaction_Employee]
GO
ALTER TABLE [dbo].[RentalTransaction]  WITH CHECK ADD  CONSTRAINT [FK_RentalTransaction_Member] FOREIGN KEY([memberID])
REFERENCES [dbo].[Member] ([memberID])
GO
ALTER TABLE [dbo].[RentalTransaction] CHECK CONSTRAINT [FK_RentalTransaction_Member]
GO
ALTER TABLE [dbo].[ReturnItem]  WITH CHECK ADD  CONSTRAINT [FK_ReturItem_ReturnTransaction] FOREIGN KEY([returnTransactionID])
REFERENCES [dbo].[ReturnTransaction] ([returnTransactionID])
GO
ALTER TABLE [dbo].[ReturnItem] CHECK CONSTRAINT [FK_ReturItem_ReturnTransaction]
GO
ALTER TABLE [dbo].[ReturnItem]  WITH CHECK ADD  CONSTRAINT [FK_ReturnItem_RentalItem] FOREIGN KEY([rentalTransactionID], [furnitureID])
REFERENCES [dbo].[RentalItem] ([rentalTransactionID], [furnitureID])
GO
ALTER TABLE [dbo].[ReturnItem] CHECK CONSTRAINT [FK_ReturnItem_RentalItem]
GO
ALTER TABLE [dbo].[ReturnTransaction]  WITH CHECK ADD  CONSTRAINT [FK_ReturnTransaction_Employee] FOREIGN KEY([employeeID])
REFERENCES [dbo].[Employee] ([employeeID])
GO
ALTER TABLE [dbo].[ReturnTransaction] CHECK CONSTRAINT [FK_ReturnTransaction_Employee]
GO
USE [cs6232-g2]

/* Stored Procedure */
DROP PROCEDURE IF EXISTS getMostPopularFurnitureDuringDates;
GO 

CREATE PROCEDURE getMostPopularFurnitureDuringDates @start_date_param DATE,
													@end_date_param   DATE
AS
BEGIN
	--Validate parameter values
	IF(@start_date_param IS NULL)
	BEGIN
		RAISERROR('The start date cannot be null',16,1)
		RETURN
	END
	IF(@end_date_param IS NULL)
	BEGIN
		RAISERROR('The end date cannot be null',16,1)
		RETURN
	END
	IF(@start_date_param > @end_date_param)
	BEGIN
		RAISERROR('The end date cannot be prior to the start date',16,1)
		RETURN
	END

	-- Get total # of rentals for time period
	DECLARE @totalRentals INT
	SELECT @totalRentals = COUNT(rt.rentalTransactionID)
	  FROM RentalTransaction rt
	 WHERE CAST(rt.rentalTimestamp AS DATE) >= CAST(@start_date_param AS DATE)
	   AND CAST(rt.rentalTimestamp AS DATE) <= CAST(@end_date_param AS DATE)

	-- Get qualifying transactions
	DROP TABLE IF EXISTS #in_range_rentals

	SELECT f.furnitureID, COUNT(*) AS nbrRentals, @totalRentals AS totalRentals,
	       CONCAT(ROUND(CAST(COUNT(*) AS FLOAT) / CAST(@totalRentals AS FLOAT) * 100, 2), '%') AS 'PctOfTotal',
		   CONCAT(ROUND(SUM(IIF(m.birthDate BETWEEN DATEADD(YEAR, -29, rt.rentalTimestamp) AND DATEADD(YEAR, -18, rt.rentalTimestamp), 1, 0)) / CAST(COUNT(*) AS FLOAT) * 100, 2), '%') AS 'PctInAgeRange',
		   CONCAT(ROUND(SUM(IIF(m.birthDate NOT BETWEEN DATEADD(YEAR, -29, rt.rentalTimestamp) AND DATEADD(YEAR, -18, rt.rentalTimestamp), 1, 0)) / CAST(COUNT(*) AS FLOAT) * 100, 2), '%') AS 'PctNotInAgeRange'
	  INTO #in_range_rentals
	  FROM Furniture f
	  JOIN RentalItem ri ON f.furnitureID = ri.furnitureID
	  JOIN RentalTransaction rt ON ri.rentalTransactionID = rt.rentalTransactionID
	  JOIN Member m ON rt.memberID = m.memberID
	 WHERE CAST(rt.rentalTimestamp AS DATE) >= CAST(@start_date_param AS DATE)
  	   AND CAST(rt.rentalTimestamp AS DATE) <= CAST(@end_date_param AS DATE)
	 GROUP BY f.furnitureID

	SELECT irr.*, f.categoryDescription as category, f.[name] 
	  FROM #in_range_rentals irr
	  JOIN furniture f ON irr.furnitureID = f.furnitureID
	 WHERE nbrRentals >= 2
	 ORDER BY irr.nbrRentals DESC, f.furnitureID ASC

END
GO 
USE [master]
GO
ALTER DATABASE [cs6232-g2] SET  READ_WRITE 
GO
