USE [master]
GO
/****** Object:  Database [Earth]    Script Date: 21.8.2014 г. 20:44:08 ******/
CREATE DATABASE [Earth]
 CONTAINMENT = NONE
GO
ALTER DATABASE [Earth] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Earth].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Earth] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Earth] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Earth] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Earth] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Earth] SET ARITHABORT OFF 
GO
ALTER DATABASE [Earth] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Earth] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Earth] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Earth] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Earth] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Earth] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Earth] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Earth] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Earth] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Earth] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Earth] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Earth] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Earth] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Earth] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Earth] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Earth] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Earth] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Earth] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Earth] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Earth] SET  MULTI_USER 
GO
ALTER DATABASE [Earth] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Earth] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Earth] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Earth] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Earth]
GO
/****** Object:  Table [dbo].[Addresses]    Script Date: 21.8.2014 г. 20:44:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addresses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AddressText] [nvarchar](256) NOT NULL,
	[TownID] [int] NOT NULL,
 CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Continets]    Script Date: 21.8.2014 г. 20:44:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Continets](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Continets] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Countries]    Script Date: 21.8.2014 г. 20:44:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ContinentID] [smallint] NOT NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Persons]    Script Date: 21.8.2014 г. 20:44:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Persons](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[AddressID] [int] NOT NULL,
 CONSTRAINT [PK_Persons] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Towns]    Script Date: 21.8.2014 г. 20:44:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Towns](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[CountryID] [smallint] NOT NULL,
 CONSTRAINT [PK_Towns] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Addresses] ON 

INSERT [dbo].[Addresses] ([ID], [AddressText], [TownID]) VALUES (1, N'Studentski grad №60', 1)
INSERT [dbo].[Addresses] ([ID], [AddressText], [TownID]) VALUES (2, N'Kiril i Metodi №56', 2)
SET IDENTITY_INSERT [dbo].[Addresses] OFF
SET IDENTITY_INSERT [dbo].[Continets] ON 

INSERT [dbo].[Continets] ([ID], [Name]) VALUES (1, N'Europe')
INSERT [dbo].[Continets] ([ID], [Name]) VALUES (2, N'South America')
INSERT [dbo].[Continets] ([ID], [Name]) VALUES (3, N'North America')
INSERT [dbo].[Continets] ([ID], [Name]) VALUES (4, N'Asia')
INSERT [dbo].[Continets] ([ID], [Name]) VALUES (5, N'Australia')
INSERT [dbo].[Continets] ([ID], [Name]) VALUES (6, N'Africa')
INSERT [dbo].[Continets] ([ID], [Name]) VALUES (7, N'Antartica')
SET IDENTITY_INSERT [dbo].[Continets] OFF
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([ID], [Name], [ContinentID]) VALUES (1, N'Bulgaria', 1)
INSERT [dbo].[Countries] ([ID], [Name], [ContinentID]) VALUES (2, N'Italy', 1)
INSERT [dbo].[Countries] ([ID], [Name], [ContinentID]) VALUES (3, N'Brazil', 2)
INSERT [dbo].[Countries] ([ID], [Name], [ContinentID]) VALUES (4, N'Argentina', 2)
INSERT [dbo].[Countries] ([ID], [Name], [ContinentID]) VALUES (5, N'USA', 3)
INSERT [dbo].[Countries] ([ID], [Name], [ContinentID]) VALUES (6, N'Canada', 3)
INSERT [dbo].[Countries] ([ID], [Name], [ContinentID]) VALUES (7, N'China', 4)
INSERT [dbo].[Countries] ([ID], [Name], [ContinentID]) VALUES (8, N'Japan', 4)
INSERT [dbo].[Countries] ([ID], [Name], [ContinentID]) VALUES (9, N'Australia', 5)
INSERT [dbo].[Countries] ([ID], [Name], [ContinentID]) VALUES (10, N'Chad', 6)
INSERT [dbo].[Countries] ([ID], [Name], [ContinentID]) VALUES (11, N'Mozambique', 6)
INSERT [dbo].[Countries] ([ID], [Name], [ContinentID]) VALUES (12, N'Antarctica', 7)
SET IDENTITY_INSERT [dbo].[Countries] OFF
SET IDENTITY_INSERT [dbo].[Persons] ON 

INSERT [dbo].[Persons] ([ID], [FirstName], [LastName], [AddressID]) VALUES (1, N'Pesho', N'Peshev', 1)
INSERT [dbo].[Persons] ([ID], [FirstName], [LastName], [AddressID]) VALUES (2, N'Kolcho', N'Kolchev', 1)
INSERT [dbo].[Persons] ([ID], [FirstName], [LastName], [AddressID]) VALUES (3, N'Vankata', N'Vankov', 2)
INSERT [dbo].[Persons] ([ID], [FirstName], [LastName], [AddressID]) VALUES (4, N'Kiro', N'Kirev', 2)
SET IDENTITY_INSERT [dbo].[Persons] OFF
SET IDENTITY_INSERT [dbo].[Towns] ON 

INSERT [dbo].[Towns] ([ID], [Name], [CountryID]) VALUES (1, N'Sofia', 1)
INSERT [dbo].[Towns] ([ID], [Name], [CountryID]) VALUES (2, N'Blagoevgrad', 1)
INSERT [dbo].[Towns] ([ID], [Name], [CountryID]) VALUES (3, N'Torino', 2)
INSERT [dbo].[Towns] ([ID], [Name], [CountryID]) VALUES (4, N'Rio de janeiro', 3)
INSERT [dbo].[Towns] ([ID], [Name], [CountryID]) VALUES (5, N'Otava', 6)
INSERT [dbo].[Towns] ([ID], [Name], [CountryID]) VALUES (6, N'Toronto', 6)
INSERT [dbo].[Towns] ([ID], [Name], [CountryID]) VALUES (7, N'New York', 5)
SET IDENTITY_INSERT [dbo].[Towns] OFF
ALTER TABLE [dbo].[Addresses]  WITH CHECK ADD  CONSTRAINT [FK_Addresses_Towns] FOREIGN KEY([TownID])
REFERENCES [dbo].[Towns] ([ID])
GO
ALTER TABLE [dbo].[Addresses] CHECK CONSTRAINT [FK_Addresses_Towns]
GO
ALTER TABLE [dbo].[Countries]  WITH CHECK ADD  CONSTRAINT [FK_Countries_Continets] FOREIGN KEY([ContinentID])
REFERENCES [dbo].[Continets] ([ID])
GO
ALTER TABLE [dbo].[Countries] CHECK CONSTRAINT [FK_Countries_Continets]
GO
ALTER TABLE [dbo].[Persons]  WITH CHECK ADD  CONSTRAINT [FK_Persons_Addresses] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Addresses] ([ID])
GO
ALTER TABLE [dbo].[Persons] CHECK CONSTRAINT [FK_Persons_Addresses]
GO
ALTER TABLE [dbo].[Towns]  WITH CHECK ADD  CONSTRAINT [FK_Towns_Countries] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Countries] ([ID])
GO
ALTER TABLE [dbo].[Towns] CHECK CONSTRAINT [FK_Towns_Countries]
GO
USE [master]
GO
ALTER DATABASE [Earth] SET  READ_WRITE 
GO
