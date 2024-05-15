USE [master]
GO
/****** Object:  Database [MessengerClientDB]    Script Date: 15.05.2024 21:23:29 ******/
CREATE DATABASE [MessengerClientDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MessengerClientDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\MessengerClientDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MessengerClientDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\MessengerClientDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MessengerClientDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MessengerClientDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MessengerClientDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MessengerClientDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MessengerClientDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MessengerClientDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MessengerClientDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [MessengerClientDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MessengerClientDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MessengerClientDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MessengerClientDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MessengerClientDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MessengerClientDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MessengerClientDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MessengerClientDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MessengerClientDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MessengerClientDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MessengerClientDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MessengerClientDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MessengerClientDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MessengerClientDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MessengerClientDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MessengerClientDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MessengerClientDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MessengerClientDB] SET RECOVERY FULL 
GO
ALTER DATABASE [MessengerClientDB] SET  MULTI_USER 
GO
ALTER DATABASE [MessengerClientDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MessengerClientDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MessengerClientDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MessengerClientDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MessengerClientDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MessengerClientDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MessengerClientDB', N'ON'
GO
ALTER DATABASE [MessengerClientDB] SET QUERY_STORE = OFF
GO
USE [MessengerClientDB]
GO
/****** Object:  Table [dbo].[UsersList]    Script Date: 15.05.2024 21:23:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersList](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ClientName] [nchar](100) NOT NULL,
	[Password] [nchar](100) NOT NULL,
	[NickName] [nchar](10) NULL,
 CONSTRAINT [PK_Authorization_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UsersList] ON 

INSERT [dbo].[UsersList] ([id], [ClientName], [Password], [NickName]) VALUES (1, N'kim                                                                                                 ', N'147                                                                                                 ', N'kim       ')
INSERT [dbo].[UsersList] ([id], [ClientName], [Password], [NickName]) VALUES (2, N'mama                                                                                                ', N'789                                                                                                 ', N'mama      ')
INSERT [dbo].[UsersList] ([id], [ClientName], [Password], [NickName]) VALUES (3, N'max                                                                                                 ', N'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3                                    ', N'max       ')
INSERT [dbo].[UsersList] ([id], [ClientName], [Password], [NickName]) VALUES (4, N'papa                                                                                                ', N'456                                                                                                 ', N'papa      ')
INSERT [dbo].[UsersList] ([id], [ClientName], [Password], [NickName]) VALUES (5, N'qwerty                                                                                              ', N'1234                                                                                                ', N'qwerty    ')
INSERT [dbo].[UsersList] ([id], [ClientName], [Password], [NickName]) VALUES (6, N'sadad                                                                                               ', N'asd                                                                                                 ', N'sadad     ')
INSERT [dbo].[UsersList] ([id], [ClientName], [Password], [NickName]) VALUES (7, N'ынт                                                                                                 ', N'465                                                                                                 ', N'ынт       ')
SET IDENTITY_INSERT [dbo].[UsersList] OFF
GO
USE [master]
GO
ALTER DATABASE [MessengerClientDB] SET  READ_WRITE 
GO
