USE [master]
GO
/****** Object:  Database [DIARDSSem2]    Script Date: 14/12/2020 21:36:09 ******/
CREATE DATABASE [DIARDSSem2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DIARDSSem2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DIARDSSem2.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DIARDSSem2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DIARDSSem2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DIARDSSem2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DIARDSSem2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DIARDSSem2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DIARDSSem2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DIARDSSem2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DIARDSSem2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DIARDSSem2] SET ARITHABORT OFF 
GO
ALTER DATABASE [DIARDSSem2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DIARDSSem2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DIARDSSem2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DIARDSSem2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DIARDSSem2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DIARDSSem2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DIARDSSem2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DIARDSSem2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DIARDSSem2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DIARDSSem2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DIARDSSem2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DIARDSSem2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DIARDSSem2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DIARDSSem2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DIARDSSem2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DIARDSSem2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DIARDSSem2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DIARDSSem2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DIARDSSem2] SET  MULTI_USER 
GO
ALTER DATABASE [DIARDSSem2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DIARDSSem2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DIARDSSem2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DIARDSSem2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DIARDSSem2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DIARDSSem2] SET QUERY_STORE = OFF
GO
USE [DIARDSSem2]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 14/12/2020 21:36:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 14/12/2020 21:36:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[IdCategoriaProduct] [int] NOT NULL,
	[Proveedor] [varchar](50) NULL,
	[Costo] [float] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [DIARDSSem2] SET  READ_WRITE 
GO
