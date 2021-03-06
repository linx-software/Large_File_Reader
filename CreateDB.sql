USE [master]
GO
/****** Object:  Database [DataTemp]    Script Date: 2/22/2022 2:15:21 AM ******/
CREATE DATABASE [DataTemp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DataTemp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DataTemp.mdf' , SIZE = 139264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DataTemp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\DataTemp_log.ldf' , SIZE = 335872KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DataTemp] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DataTemp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DataTemp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DataTemp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DataTemp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DataTemp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DataTemp] SET ARITHABORT OFF 
GO
ALTER DATABASE [DataTemp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DataTemp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DataTemp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DataTemp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DataTemp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DataTemp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DataTemp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DataTemp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DataTemp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DataTemp] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DataTemp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DataTemp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DataTemp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DataTemp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DataTemp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DataTemp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DataTemp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DataTemp] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DataTemp] SET  MULTI_USER 
GO
ALTER DATABASE [DataTemp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DataTemp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DataTemp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DataTemp] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DataTemp] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DataTemp] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DataTemp] SET QUERY_STORE = OFF
GO
USE [DataTemp]
GO
/****** Object:  User [ved]    Script Date: 2/22/2022 2:15:21 AM ******/
CREATE USER [ved] FOR LOGIN [ved] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [ved]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [ved]
GO
ALTER ROLE [db_datareader] ADD MEMBER [ved]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [ved]
GO
/****** Object:  Table [dbo].[LongTable]    Script Date: 2/22/2022 2:15:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LongTable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Field1] [nvarchar](max) NULL,
	[Field2] [nvarchar](max) NULL,
	[Field3] [nvarchar](max) NULL,
	[Field4] [nvarchar](max) NULL,
	[Field5] [nvarchar](max) NULL,
	[Field6] [nvarchar](max) NULL,
	[Field7] [nvarchar](max) NULL,
	[Field8] [nvarchar](max) NULL,
	[Field9] [nvarchar](max) NULL,
	[Field10] [nvarchar](max) NULL,
	[Field11] [nvarchar](max) NULL,
	[Field12] [nvarchar](max) NULL,
	[Field13] [nvarchar](max) NULL,
	[Field14] [nvarchar](max) NULL,
	[Field15] [nvarchar](max) NULL,
	[Field16] [nvarchar](max) NULL,
	[Field17] [nvarchar](max) NULL,
	[Field18] [nvarchar](max) NULL,
	[Field19] [nvarchar](max) NULL,
	[Field20] [nvarchar](max) NULL,
	[Field21] [nvarchar](max) NULL,
 CONSTRAINT [PK_LongTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [DataTemp] SET  READ_WRITE 
GO
