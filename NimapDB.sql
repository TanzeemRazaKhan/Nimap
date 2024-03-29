USE [master]
GO
/****** Object:  Database [TestByTanzeem]    Script Date: 11/23/2023 5:16:41 PM ******/
CREATE DATABASE [TestByTanzeem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TestByTanzeem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TestByTanzeem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TestByTanzeem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\TestByTanzeem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TestByTanzeem] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TestByTanzeem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TestByTanzeem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TestByTanzeem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TestByTanzeem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TestByTanzeem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TestByTanzeem] SET ARITHABORT OFF 
GO
ALTER DATABASE [TestByTanzeem] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [TestByTanzeem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TestByTanzeem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TestByTanzeem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TestByTanzeem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TestByTanzeem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TestByTanzeem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TestByTanzeem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TestByTanzeem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TestByTanzeem] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TestByTanzeem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TestByTanzeem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TestByTanzeem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TestByTanzeem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TestByTanzeem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TestByTanzeem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TestByTanzeem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TestByTanzeem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TestByTanzeem] SET  MULTI_USER 
GO
ALTER DATABASE [TestByTanzeem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TestByTanzeem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TestByTanzeem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TestByTanzeem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TestByTanzeem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TestByTanzeem] SET QUERY_STORE = OFF
GO
USE [TestByTanzeem]
GO
/****** Object:  Table [dbo].[tbl_Category]    Script Date: 11/23/2023 5:16:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Category](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[cattegoryname] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Product]    Script Date: 11/23/2023 5:16:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Product](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[productcode] [varchar](50) NOT NULL,
	[productname] [varchar](50) NOT NULL,
	[category] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tbl_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tbl_Category] ON 

INSERT [dbo].[tbl_Category] ([id], [cattegoryname]) VALUES (1, N'Laptop')
INSERT [dbo].[tbl_Category] ([id], [cattegoryname]) VALUES (3, N'Laptopsa')
INSERT [dbo].[tbl_Category] ([id], [cattegoryname]) VALUES (4, N'Laptoptru')
INSERT [dbo].[tbl_Category] ([id], [cattegoryname]) VALUES (5, N'My Product')
SET IDENTITY_INSERT [dbo].[tbl_Category] OFF
SET IDENTITY_INSERT [dbo].[tbl_Product] ON 

INSERT [dbo].[tbl_Product] ([id], [productcode], [productname], [category]) VALUES (1, N'112L', N'Car', N'Laptop')
INSERT [dbo].[tbl_Product] ([id], [productcode], [productname], [category]) VALUES (2, N'12as', N'Laptop', N'Laptopsa')
INSERT [dbo].[tbl_Product] ([id], [productcode], [productname], [category]) VALUES (3, N'12as', N'Laptop', N'Laptopsa')
INSERT [dbo].[tbl_Product] ([id], [productcode], [productname], [category]) VALUES (4, N'32SD', N'Laptop', N'Laptopsa')
SET IDENTITY_INSERT [dbo].[tbl_Product] OFF
USE [master]
GO
ALTER DATABASE [TestByTanzeem] SET  READ_WRITE 
GO
