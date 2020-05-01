USE [Ncov]
GO
/****** Object:  Table [dbo].[Cases]    Script Date: 01-May-20 9:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cases](
	[Date] [date] NOT NULL,
	[Confirmed] [int] NULL,
	[Deaths] [int] NULL,
	[Recovered] [int] NULL,
	[Active] [int] NULL,
	[CountryID] [nvarchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Date] ASC,
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 01-May-20 9:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[CityName] [nvarchar](100) NOT NULL,
	[TotalCase] [int] NULL,
	[Active] [int] NULL,
	[Recovered] [int] NULL,
	[Deaths] [int] NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[CityName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 01-May-20 9:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[CountryID] [nvarchar](5) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patients]    Script Date: 01-May-20 9:21:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patients](
	[PatientID] [nchar](10) NOT NULL,
	[Age] [int] NULL,
	[Sex] [nvarchar](20) NULL,
	[Status] [nvarchar](100) NULL,
	[CityName] [nvarchar](100) NOT NULL,
	[CountryID] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK__Patients__970EC3460E8BB22B] PRIMARY KEY CLUSTERED 
(
	[PatientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cases]  WITH CHECK ADD  CONSTRAINT [FK_Cases_Countries] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Countries] ([CountryID])
GO
ALTER TABLE [dbo].[Cases] CHECK CONSTRAINT [FK_Cases_Countries]
GO
ALTER TABLE [dbo].[Patients]  WITH CHECK ADD  CONSTRAINT [FK_Patients_Cities] FOREIGN KEY([CityName])
REFERENCES [dbo].[Cities] ([CityName])
GO
ALTER TABLE [dbo].[Patients] CHECK CONSTRAINT [FK_Patients_Cities]
GO
ALTER TABLE [dbo].[Patients]  WITH CHECK ADD  CONSTRAINT [FK_Patients_Countries] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Countries] ([CountryID])
GO
ALTER TABLE [dbo].[Patients] CHECK CONSTRAINT [FK_Patients_Countries]
GO
