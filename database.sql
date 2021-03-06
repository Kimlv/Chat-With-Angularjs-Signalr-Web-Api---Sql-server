USE [master]
GO
/****** Object:  Database [SignalR]    Script Date: 3/25/2015 8:38:51 AM ******/
CREATE DATABASE [SignalR]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SignalR', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SignalR.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SignalR_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\SignalR_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SignalR] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SignalR].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SignalR] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SignalR] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SignalR] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SignalR] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SignalR] SET ARITHABORT OFF 
GO
ALTER DATABASE [SignalR] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SignalR] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SignalR] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SignalR] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SignalR] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SignalR] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SignalR] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SignalR] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SignalR] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SignalR] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SignalR] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SignalR] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SignalR] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SignalR] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SignalR] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SignalR] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SignalR] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SignalR] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SignalR] SET RECOVERY FULL 
GO
ALTER DATABASE [SignalR] SET  MULTI_USER 
GO
ALTER DATABASE [SignalR] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SignalR] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SignalR] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SignalR] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'SignalR', N'ON'
GO
USE [SignalR]
GO
/****** Object:  User [NEXT_IT\Anik]    Script Date: 3/25/2015 8:38:51 AM ******/
CREATE USER [NEXT_IT\Anik] FOR LOGIN [NEXT_IT\Anik] WITH DEFAULT_SCHEMA=[NEXT_IT\Anik]
GO
/****** Object:  Schema [NEXT_IT\Anik]    Script Date: 3/25/2015 8:38:51 AM ******/
CREATE SCHEMA [NEXT_IT\Anik]
GO
/****** Object:  Table [dbo].[message]    Script Date: 3/25/2015 8:38:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[message](
	[MessageID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](50) NULL,
	[Msg] [varchar](50) NULL,
 CONSTRAINT [PK_message] PRIMARY KEY CLUSTERED 
(
	[MessageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[user]    Script Date: 3/25/2015 8:38:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[user](
	[UserID] [varchar](50) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[useractivity]    Script Date: 3/25/2015 8:38:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[useractivity](
	[OnlineID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [varchar](50) NULL,
	[ConnectionID] [varchar](500) NULL,
	[Status] [varchar](50) NULL,
	[Avater] [varchar](50) NULL,
 CONSTRAINT [PK_online] PRIMARY KEY CLUSTERED 
(
	[OnlineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[message] ON 

INSERT [dbo].[message] ([MessageID], [UserID], [Msg]) VALUES (135, N'Chrome', N'HI :ki:')
INSERT [dbo].[message] ([MessageID], [UserID], [Msg]) VALUES (136, N'Firefox', N'Welcome')
INSERT [dbo].[message] ([MessageID], [UserID], [Msg]) VALUES (137, N'anik', N'HEy')
INSERT [dbo].[message] ([MessageID], [UserID], [Msg]) VALUES (138, N'anik', N'Anyone here ??  :cry:')
INSERT [dbo].[message] ([MessageID], [UserID], [Msg]) VALUES (139, N'Firefox', N'Yes I am')
SET IDENTITY_INSERT [dbo].[message] OFF
INSERT [dbo].[user] ([UserID], [UserName], [Password]) VALUES (N'anik', N'anik', N'')
INSERT [dbo].[user] ([UserID], [UserName], [Password]) VALUES (N'Chrome', N'Chrome', N'')
INSERT [dbo].[user] ([UserID], [UserName], [Password]) VALUES (N'Explorar', N'Explorar', N'')
INSERT [dbo].[user] ([UserID], [UserName], [Password]) VALUES (N'Firefox', N'Firefox', N'')
SET IDENTITY_INSERT [dbo].[useractivity] ON 

INSERT [dbo].[useractivity] ([OnlineID], [UserID], [ConnectionID], [Status], [Avater]) VALUES (148, N'Explorar', N'cf5a78ae-ab56-4aa0-997f-c4416e94ef9b', N'Online', N'av_6')
INSERT [dbo].[useractivity] ([OnlineID], [UserID], [ConnectionID], [Status], [Avater]) VALUES (150, N'Firefox', N'cfbd04cd-b6f3-4f02-9a4e-13419782ab99', N'Online', N'av_23')
SET IDENTITY_INSERT [dbo].[useractivity] OFF
ALTER TABLE [dbo].[message]  WITH CHECK ADD  CONSTRAINT [FK_message_user] FOREIGN KEY([UserID])
REFERENCES [dbo].[user] ([UserID])
GO
ALTER TABLE [dbo].[message] CHECK CONSTRAINT [FK_message_user]
GO
ALTER TABLE [dbo].[useractivity]  WITH CHECK ADD  CONSTRAINT [FK_online_user] FOREIGN KEY([UserID])
REFERENCES [dbo].[user] ([UserID])
GO
ALTER TABLE [dbo].[useractivity] CHECK CONSTRAINT [FK_online_user]
GO
USE [master]
GO
ALTER DATABASE [SignalR] SET  READ_WRITE 
GO
