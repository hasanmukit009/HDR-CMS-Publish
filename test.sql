USE [master]
GO
/****** Object:  Database [CMS1]    Script Date: 27/08/2022 8:13:35 PM ******/
CREATE DATABASE [CMS1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CMS1', FILENAME = N'E:\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\CMS1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CMS1_log', FILENAME = N'E:\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\CMS1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [CMS1] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CMS1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CMS1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CMS1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CMS1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CMS1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CMS1] SET ARITHABORT OFF 
GO
ALTER DATABASE [CMS1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CMS1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CMS1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CMS1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CMS1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CMS1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CMS1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CMS1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CMS1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CMS1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CMS1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CMS1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CMS1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CMS1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CMS1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CMS1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CMS1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CMS1] SET RECOVERY FULL 
GO
ALTER DATABASE [CMS1] SET  MULTI_USER 
GO
ALTER DATABASE [CMS1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CMS1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CMS1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CMS1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CMS1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CMS1] SET QUERY_STORE = OFF
GO
USE [CMS1]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE [CMS1] SET  READ_WRITE 
GO
