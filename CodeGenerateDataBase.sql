USE [Ncov]
GO
/****** Object:  Table [dbo].[Cases]    Script Date: 13/05/2020 7:19:57 AM ******/
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
/****** Object:  Table [dbo].[Cities]    Script Date: 13/05/2020 7:19:58 AM ******/
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
/****** Object:  Table [dbo].[Countries]    Script Date: 13/05/2020 7:19:58 AM ******/
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
/****** Object:  Table [dbo].[News]    Script Date: 13/05/2020 7:19:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[NewID] [int] NOT NULL,
	[Date] [date] NULL,
	[Picture] [ntext] NULL,
	[Link] [ntext] NULL,
	[Title] [nvarchar](100) NULL,
	[Description] [ntext] NULL,
 CONSTRAINT [PK__News__7CC3769ED0432285] PRIMARY KEY CLUSTERED 
(
	[NewID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patients]    Script Date: 13/05/2020 7:19:58 AM ******/
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
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 752, 47, 526, 179, N'AD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 16240, 165, 3572, 12503, N'AE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 3563, 106, 468, 2989, N'AF')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 25, 3, 16, 6, N'AG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'AI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 842, 31, 605, 206, N'AL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 2884, 42, 1185, 1657, N'AM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'AN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 36, 2, 11, 23, N'AO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'AQ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 5371, 282, 1601, 3488, N'AR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'AS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 15752, 609, 13698, 1445, N'AT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'AU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'AW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 2204, 28, 1551, 625, N'AZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 2027, 90, 954, 983, N'BA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 82, 7, 53, 22, N'BB')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 12425, 199, 1910, 10316, N'BD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 51420, 8415, 12980, 30025, N'BE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 736, 48, 562, 126, N'BF')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 1829, 84, 384, 1361, N'BG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 4199, 8, 2000, 2191, N'BH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 15, 1, 7, 7, N'BI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 140, 2, 53, 85, N'BJ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'BM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 141, 1, 131, 9, N'BN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 2081, 102, 219, 1760, N'BO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 135773, 9190, 55350, 71233, N'BR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 92, 11, 26, 55, N'BS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 7, 0, 5, 2, N'BT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'BV')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 23, 1, 9, 13, N'BW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 20168, 116, 5067, 14985, N'BY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 18, 2, 16, 0, N'BZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 66200, 4540, 29260, 32400, N'CA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'CC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 863, 36, 103, 724, N'CD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 94, 0, 10, 84, N'CF')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 264, 10, 30, 224, N'CG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 30126, 1810, 25900, 2416, N'CH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 1571, 20, 742, 809, N'CI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'CK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 24581, 285, 11664, 12632, N'CL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 2267, 108, 1002, 1157, N'CM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'CN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 9456, 407, 2300, 6749, N'CO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 765, 6, 445, 314, N'CR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 1729, 73, 1031, 625, N'CU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 218, 2, 38, 178, N'CV')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'CX')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 889, 15, 400, 474, N'CY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 8031, 270, 4371, 3390, N'CZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 169430, 7392, 141700, 20338, N'DE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 1133, 3, 799, 331, N'DJ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 10083, 514, 7711, 1858, N'DK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 16, 0, 14, 2, N'DM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 9095, 373, 2064, 6658, N'DO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 5182, 483, 2323, 2376, N'DZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 30298, 1654, 3433, 25211, N'EC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 1720, 56, 273, 1391, N'EE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 7981, 482, 1887, 5612, N'EG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 6, 0, 5, 1, N'EH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 39, 0, 30, 9, N'ER')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 221447, 26070, 128511, 66866, N'ES')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 191, 4, 93, 94, N'ET')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 5673, 255, 3500, 1918, N'FI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 18, 0, 14, 4, N'FJ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'FK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'FM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'FO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 173040, 25949, 54076, 93015, N'FR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 504, 8, 110, 386, N'GA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 206715, 30615, 0, 176100, N'GB')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 21, 0, 13, 8, N'GD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 615, 9, 275, 331, N'GE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'GF')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'GG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 3091, 18, 303, 2770, N'GH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'GI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'GL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 18, 1, 9, 8, N'GM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 1927, 11, 629, 1287, N'GN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'GP')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 439, 4, 13, 422, N'GQ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 2678, 148, 1374, 1156, N'GR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'GS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 832, 23, 90, 719, N'GT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'GU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 564, 2, 25, 537, N'GW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 93, 10, 27, 56, N'GY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'HK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'HM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 1685, 105, 154, 1426, N'HN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 2125, 86, 1641, 398, N'HR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 129, 12, 16, 101, N'HT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 3150, 383, 801, 1966, N'HU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 12776, 930, 2381, 9465, N'ID')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 22385, 1403, 17110, 3872, N'IE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 16381, 240, 10873, 5268, N'IL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'IM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 56351, 1889, 16776, 37686, N'IN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'IO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 2543, 102, 1626, 815, N'IQ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 103135, 6486, 82744, 13905, N'IR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 1801, 10, 1755, 36, N'IS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 215858, 29958, 96276, 89624, N'IT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'JE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 488, 9, 58, 421, N'JM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 494, 9, 381, 104, N'JO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 15477, 577, 4918, 9982, N'JP')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 607, 29, 197, 381, N'KE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 895, 12, 637, 246, N'KG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 122, 0, 120, 2, N'KH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'KI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 8, 1, 0, 7, N'KM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 15, 0, 12, 3, N'KN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'KP')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 10822, 256, 9484, 1082, N'KR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 6567, 44, 2381, 4142, N'KW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'KY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 4578, 30, 1518, 3030, N'KZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 19, 0, 9, 10, N'LA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 784, 25, 220, 539, N'LB')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 18, 0, 17, 1, N'LC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 82, 1, 55, 26, N'LI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 824, 9, 232, 583, N'LK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 189, 20, 79, 90, N'LR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'LS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 1433, 49, 739, 645, N'LT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 3859, 100, 3505, 254, N'LU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 909, 18, 464, 427, N'LV')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 64, 3, 24, 37, N'LY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 5548, 183, 2179, 3186, N'MA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 95, 4, 82, 9, N'MC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 4605, 145, 1747, 2713, N'MD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 324, 8, 265, 51, N'ME')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 193, 0, 101, 92, N'MG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'MH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 1572, 89, 1079, 404, N'MK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 650, 32, 271, 347, N'ML')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 176, 6, 62, 108, N'MM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 41, 0, 13, 28, N'MN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'MO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'MP')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'MQ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 8, 1, 6, 1, N'MR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'MS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 486, 5, 413, 68, N'MT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 332, 10, 320, 2, N'MU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 648, 3, 20, 625, N'MV')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 43, 3, 14, 26, N'MW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 29616, 2961, 17781, 8874, N'MX')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 6467, 107, 4776, 1584, N'MY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 81, 0, 24, 57, N'MZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 16, 0, 9, 7, N'NA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'NC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 781, 42, 586, 153, N'NE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'NF')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 3526, 107, 601, 2818, N'NG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 16, 5, 7, 4, N'NI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 41774, 5288, 0, 36486, N'NL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 8034, 217, 32, 7785, N'NO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 101, 0, 22, 79, N'NP')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'NR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'NU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 1490, 21, 1347, 122, N'NZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 2958, 15, 980, 1963, N'OM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 7868, 225, 886, 6757, N'PA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 58526, 1627, 18388, 38511, N'PE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'PF')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 8, 0, 8, 0, N'PG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 10343, 685, 1618, 8040, N'PH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 24644, 585, 6464, 17595, N'PK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 15047, 755, 4862, 9430, N'PL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'PM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'PN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'PR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 375, 2, 176, 197, N'PS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 26715, 1105, 2258, 23352, N'PT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'PW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 462, 10, 148, 304, N'PY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 18890, 12, 2286, 16592, N'QA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'RE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 14499, 888, 6144, 7467, N'RO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 9848, 206, 2160, 7482, N'RS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 177160, 1625, 23803, 151732, N'RU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 271, 0, 133, 138, N'RW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 33731, 219, 7798, 25714, N'SA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'SB')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 11, 0, 8, 3, N'SC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 930, 52, 92, 786, N'SD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 24623, 3040, 4971, 16612, N'SE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 20939, 20, 1712, 19207, N'SG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'SH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 1449, 99, 247, 1103, N'SI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'SJ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 1445, 26, 806, 613, N'SK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 231, 16, 54, 161, N'SL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 622, 41, 106, 475, N'SM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 1492, 13, 562, 917, N'SN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 928, 44, 106, 778, N'SO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 10, 1, 9, 0, N'SR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 187, 4, 4, 179, N'ST')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 695, 15, 252, 428, N'SV')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 45, 3, 27, 15, N'SY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 153, 2, 12, 139, N'SZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'TC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 253, 27, 50, 176, N'TD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'TF')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 135, 9, 85, 41, N'TG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 2992, 55, 2772, 165, N'TH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 461, 12, 0, 449, N'TJ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'TK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 24, 0, 21, 3, N'TL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'TM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 1026, 44, 600, 382, N'TN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'TO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 133721, 3641, 82984, 47096, N'TR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 116, 8, 103, 5, N'TT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'TV')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 440, 6, 347, 87, N'TW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 480, 16, 167, 297, N'TZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 13691, 340, 2396, 10955, N'UA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 101, 0, 55, 46, N'UG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'UM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 1257023, 75662, 195036, 986325, N'US')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 684, 17, 492, 175, N'UY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 2298, 10, 1656, 632, N'UZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 12, 0, 2, 10, N'VA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 17, 0, 9, 8, N'VC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 381, 10, 185, 186, N'VE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'VG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'VI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 288, 0, 233, 55, N'VN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'VU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'WF')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'WS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 861, 27, 562, 272, N'XK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 25, 5, 1, 19, N'YE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 0, 0, 0, 0, N'YT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 8232, 161, 3153, 4918, N'ZA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 153, 4, 103, 46, N'ZM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-08' AS Date), 34, 4, 5, 25, N'ZW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 752, 47, 537, 168, N'AD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 16793, 174, 3837, 12782, N'AE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 3778, 109, 472, 3197, N'AF')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 25, 3, 16, 6, N'AG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'AI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 850, 31, 620, 199, N'AL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 3029, 43, 1218, 1768, N'AM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'AN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 43, 2, 11, 30, N'AO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'AQ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 5611, 293, 1659, 3659, N'AR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'AS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 15774, 614, 13836, 1324, N'AT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'AU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'AW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 2279, 28, 1576, 675, N'AZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 2070, 98, 960, 1012, N'BA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 83, 7, 53, 23, N'BB')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 13134, 206, 2101, 10827, N'BD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 52011, 8521, 13201, 30289, N'BE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 744, 48, 566, 130, N'BF')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 1872, 86, 401, 1385, N'BG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 4444, 8, 2028, 2408, N'BH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 15, 1, 7, 7, N'BI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 242, 2, 62, 178, N'BJ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'BM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 141, 1, 132, 8, N'BN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 2266, 106, 237, 1923, N'BO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 146894, 10017, 59297, 77580, N'BR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 92, 11, 31, 50, N'BS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 7, 0, 5, 2, N'BT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'BV')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 23, 1, 9, 13, N'BW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 21101, 121, 5484, 15496, N'BY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 18, 2, 16, 0, N'BZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 67673, 4696, 30239, 32738, N'CA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'CC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 937, 39, 130, 768, N'CD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 143, 0, 10, 133, N'CF')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 274, 10, 33, 231, N'CG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 30207, 1823, 26100, 2284, N'CH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 1602, 20, 754, 828, N'CI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'CK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 25972, 294, 12160, 13518, N'CL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 2267, 108, 1002, 1157, N'CM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'CN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 10051, 428, 2424, 7199, N'CO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 773, 6, 461, 306, N'CR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 1741, 74, 1078, 589, N'CU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 230, 2, 44, 184, N'CV')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'CX')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 891, 15, 400, 476, N'CY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 8077, 273, 4413, 3391, N'CZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 170588, 7510, 141700, 21378, N'DE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 1135, 3, 824, 308, N'DJ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 10218, 522, 7927, 1769, N'DK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 16, 0, 14, 2, N'DM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 9376, 380, 2286, 6710, N'DO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 5369, 488, 2467, 2414, N'DZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 28818, 1704, 3433, 23681, N'EC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 1725, 56, 704, 965, N'EE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 8476, 503, 1945, 6028, N'EG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 6, 0, 5, 1, N'EH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 39, 0, 37, 2, N'ER')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 222857, 26299, 131148, 65410, N'ES')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 194, 4, 95, 95, N'ET')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 5738, 260, 4000, 1478, N'FI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 18, 0, 14, 4, N'FJ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'FK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'FM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'FO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 174318, 26192, 54770, 93356, N'FR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 620, 8, 110, 502, N'GA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 211364, 31241, 0, 180123, N'GB')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 21, 0, 13, 8, N'GD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 623, 10, 288, 325, N'GE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'GF')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'GG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 4012, 18, 323, 3671, N'GH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'GI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'GL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 20, 1, 9, 10, N'GM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 2009, 11, 663, 1335, N'GN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'GP')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 439, 4, 13, 422, N'GQ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 2691, 150, 1374, 1167, N'GR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'GS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 900, 24, 101, 775, N'GT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'GU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 594, 2, 25, 567, N'GW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 94, 10, 35, 49, N'GY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'HK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'HM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 1771, 107, 192, 1472, N'HN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 2161, 86, 1689, 386, N'HR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 146, 12, 17, 117, N'HT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 3178, 392, 865, 1921, N'HU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 13112, 943, 2494, 9675, N'ID')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 22541, 1429, 17110, 4002, N'IE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 16436, 245, 11229, 4962, N'IL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'IM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 59695, 1985, 17887, 39823, N'IN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'IO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 2603, 104, 1661, 838, N'IQ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 104691, 6541, 83837, 14313, N'IR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 1801, 10, 1765, 26, N'IS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 217185, 30201, 99023, 87961, N'IT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'JE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 490, 9, 62, 419, N'JM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 508, 9, 385, 114, N'JO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 15575, 590, 5146, 9839, N'JP')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 621, 29, 202, 390, N'KE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 906, 12, 650, 244, N'KG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 122, 0, 120, 2, N'KH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'KI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 8, 1, 0, 7, N'KM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 15, 0, 13, 2, N'KN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'KP')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 10840, 256, 9568, 1016, N'KR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 7208, 47, 2466, 4695, N'KW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'KY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 4834, 31, 1631, 3172, N'KZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 19, 0, 9, 10, N'LA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 796, 26, 223, 547, N'LB')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 18, 0, 17, 1, N'LC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 82, 1, 55, 26, N'LI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 835, 9, 240, 586, N'LK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 199, 20, 79, 100, N'LR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'LS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 1436, 49, 765, 622, N'LT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 3871, 100, 3526, 245, N'LU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 928, 18, 464, 446, N'LV')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 64, 3, 24, 37, N'LY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 5711, 186, 2324, 3201, N'MA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 95, 4, 82, 9, N'MC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 4728, 150, 1826, 2752, N'MD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 324, 8, 267, 49, N'ME')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 193, 0, 101, 92, N'MG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'MH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 1586, 90, 1099, 397, N'MK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 668, 35, 285, 348, N'ML')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 177, 6, 67, 104, N'MM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 42, 0, 13, 29, N'MN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'MO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'MP')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'MQ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 8, 1, 6, 1, N'MR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'MS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 489, 5, 419, 65, N'MT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 332, 10, 320, 2, N'MU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 744, 3, 20, 721, N'MV')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 43, 3, 14, 26, N'MW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 31522, 3160, 20314, 8048, N'MX')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 6535, 107, 4864, 1564, N'MY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 82, 0, 27, 55, N'MZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 16, 0, 9, 7, N'NA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'NC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 795, 44, 600, 151, N'NE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'NF')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 3912, 117, 679, 3116, N'NG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 16, 5, 7, 4, N'NI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 42093, 5359, 0, 36734, N'NL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 8070, 218, 32, 7820, N'NO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 102, 0, 31, 71, N'NP')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'NR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'NU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 1492, 21, 1368, 103, N'NZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 3112, 16, 1025, 2071, N'OM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 8070, 231, 886, 6953, N'PA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 61847, 1714, 19012, 41121, N'PE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'PF')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 8, 0, 8, 0, N'PG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 10463, 696, 1734, 8033, N'PH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 26435, 599, 7530, 18306, N'PK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 15366, 776, 5184, 9406, N'PL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'PM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'PN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'PR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 375, 2, 228, 145, N'PS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 27268, 1114, 2422, 23732, N'PT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'PW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 563, 10, 152, 401, N'PY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 20201, 12, 2370, 17819, N'QA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'RE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 14811, 923, 6423, 7465, N'RO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 9943, 209, 2453, 7281, N'RS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 187859, 1723, 26608, 159528, N'RU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 273, 0, 136, 137, N'RW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 35432, 229, 9120, 26083, N'SA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'SB')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 11, 0, 8, 3, N'SC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 1111, 59, 102, 950, N'SD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 25265, 3175, 4971, 17119, N'SE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 21707, 20, 2040, 19647, N'SG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'SH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 1450, 100, 252, 1098, N'SI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'SJ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 1455, 26, 905, 524, N'SK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 257, 17, 54, 186, N'SL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 623, 41, 114, 468, N'SM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 1551, 13, 611, 927, N'SN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 928, 44, 106, 778, N'SO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 10, 1, 9, 0, N'SR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 208, 5, 4, 199, N'ST')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 742, 16, 257, 469, N'SV')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 47, 3, 29, 15, N'SY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 159, 2, 12, 145, N'SZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'TC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 260, 28, 50, 182, N'TD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'TF')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 145, 10, 85, 50, N'TG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 3000, 55, 2784, 161, N'TH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 522, 12, 0, 510, N'TJ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'TK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 24, 0, 21, 3, N'TL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'TM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 1030, 45, 638, 347, N'TN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'TO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 135569, 3689, 86396, 45484, N'TR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 116, 8, 103, 5, N'TT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'TV')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 440, 6, 355, 79, N'TW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 509, 21, 183, 305, N'TZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 14195, 361, 2706, 11128, N'UA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 101, 0, 55, 46, N'UG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'UM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 1283929, 77180, 198993, 1007756, N'US')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 694, 18, 506, 170, N'UY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 2325, 10, 1775, 540, N'UZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 12, 0, 2, 10, N'VA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 17, 0, 9, 8, N'VC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 388, 10, 190, 188, N'VE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'VG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'VI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 288, 0, 241, 47, N'VN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'VU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'WF')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'WS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 861, 27, 562, 272, N'XK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 34, 7, 1, 26, N'YE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 0, 0, 0, 0, N'YT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 8895, 178, 3153, 5564, N'ZA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 167, 4, 111, 52, N'ZM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-09' AS Date), 34, 4, 9, 21, N'ZW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 754, 48, 545, 161, N'AD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 17417, 185, 4295, 12937, N'AE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 4033, 115, 502, 3416, N'AF')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 25, 3, 19, 3, N'AG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 856, 31, 627, 198, N'AL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 3175, 44, 1267, 1864, N'AM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 43, 2, 13, 28, N'AO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 5776, 300, 1728, 3748, N'AR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 15833, 615, 13928, 1290, N'AT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 6939, 97, 6141, 701, N'AU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 2422, 31, 1620, 771, N'AZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 2090, 102, 1059, 929, N'BA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 84, 7, 57, 20, N'BB')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 13770, 214, 2414, 11142, N'BD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 52596, 8581, 13411, 30604, N'BE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 748, 48, 569, 131, N'BF')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 1921, 90, 422, 1409, N'BG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 4774, 8, 2055, 2711, N'BH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 15, 1, 7, 7, N'BI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 284, 2, 62, 220, N'BJ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 141, 1, 132, 8, N'BN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 2437, 114, 258, 2065, N'BO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 156061, 10656, 61685, 83720, N'BR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 92, 11, 37, 44, N'BS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 7, 0, 5, 2, N'BT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 23, 1, 12, 10, N'BW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 22052, 126, 6050, 15876, N'BY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 18, 2, 16, 0, N'BZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 137834, 9644, 31262, 96928, N'CA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 937, 39, 130, 768, N'CD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 143, 0, 10, 133, N'CF')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 274, 10, 33, 231, N'CG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 30251, 1830, 26400, 2021, N'CH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 1667, 21, 769, 877, N'CI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 27219, 304, 12667, 14248, N'CL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 2274, 108, 1232, 934, N'CM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 83990, 4637, 79127, 226, N'CN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 10495, 445, 2569, 7481, N'CO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 780, 6, 480, 294, N'CR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 1754, 74, 1140, 540, N'CU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 236, 2, 56, 178, N'CV')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 892, 15, 401, 476, N'CY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 8095, 276, 4447, 3372, N'CZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 171324, 7549, 143300, 20475, N'DE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 1189, 3, 834, 352, N'DJ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 10517, 526, 8291, 1700, N'DK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 16, 0, 14, 2, N'DM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 9882, 385, 2584, 6913, N'DO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 5558, 494, 2546, 2518, N'DZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 29071, 1717, 3433, 23921, N'EC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 1733, 60, 747, 926, N'EE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 8964, 514, 2002, 6448, N'EG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 6, 0, 5, 1, N'EH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 39, 0, 37, 2, N'ER')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 223578, 26478, 133952, 63148, N'ES')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 210, 5, 97, 108, N'ET')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 5880, 265, 4000, 1615, N'FI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 18, 0, 14, 4, N'FJ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 176782, 26313, 56148, 94321, N'FR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 661, 8, 110, 543, N'GA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 216525, 31662, 1001, 183862, N'GB')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 21, 0, 13, 8, N'GD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 626, 10, 297, 319, N'GE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 4263, 22, 378, 3863, N'GH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 20, 1, 9, 10, N'GM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 2042, 11, 698, 1333, N'GN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 439, 4, 13, 422, N'GQ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 2710, 151, 1374, 1185, N'GR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 967, 24, 104, 839, N'GT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 641, 3, 25, 613, N'GW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 94, 10, 35, 49, N'GY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 1830, 108, 195, 1527, N'HN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 2176, 87, 1726, 363, N'HR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 151, 12, 17, 122, N'HT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 3213, 405, 904, 1904, N'HU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 13645, 959, 2607, 10079, N'ID')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 22760, 1446, 17110, 4204, N'IE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 16454, 247, 11376, 4831, N'IL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 62808, 2101, 19301, 41406, N'IN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 2679, 107, 1702, 870, N'IQ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 106220, 6589, 85064, 14567, N'IR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 1801, 10, 1773, 18, N'IS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 218268, 30395, 103031, 84842, N'IT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 490, 9, 62, 419, N'JM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 522, 9, 387, 126, N'JO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 15663, 607, 5906, 9150, N'JP')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 649, 30, 207, 412, N'KE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 931, 12, 658, 261, N'KG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 122, 0, 120, 2, N'KH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 11, 1, 0, 10, N'KM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 15, 0, 14, 1, N'KN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 10874, 256, 9610, 1008, N'KR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 7623, 49, 2622, 4952, N'KW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 4975, 31, 1776, 3168, N'KZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 19, 0, 13, 6, N'LA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 809, 26, 234, 549, N'LB')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 18, 0, 17, 1, N'LC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 82, 1, 55, 26, N'LI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 847, 9, 260, 578, N'LK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 199, 20, 79, 100, N'LR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 1444, 49, 828, 567, N'LT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 3877, 101, 3550, 226, N'LU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 930, 18, 464, 448, N'LV')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 64, 3, 24, 37, N'LY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 5910, 186, 2461, 3263, N'MA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 96, 4, 82, 10, N'MC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 4867, 161, 1925, 2781, N'MD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 324, 8, 274, 42, N'ME')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 193, 0, 101, 92, N'MG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 1622, 91, 1112, 419, N'MK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 692, 37, 298, 357, N'ML')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 178, 6, 68, 104, N'MM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 42, 0, 14, 28, N'MN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 8, 1, 6, 1, N'MR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 490, 5, 427, 58, N'MT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 332, 10, 320, 2, N'MU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 790, 3, 29, 758, N'MV')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 56, 3, 14, 39, N'MW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 33460, 3353, 21824, 8283, N'MX')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 6589, 108, 4929, 1552, N'MY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 87, 0, 34, 53, N'MZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 16, 0, 10, 6, N'NA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 815, 45, 617, 153, N'NE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 4151, 128, 745, 3278, N'NG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 16, 5, 7, 4, N'NI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 42581, 5441, 149, 36991, N'NL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 8099, 219, 32, 7848, N'NO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 110, 0, 31, 79, N'NP')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 1494, 21, 1371, 102, N'NZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 3224, 17, 1068, 2139, N'OM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 8282, 237, 4501, 3544, N'PA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 65015, 1814, 20246, 42955, N'PE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 8, 0, 8, 0, N'PG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 10610, 704, 1842, 8064, N'PH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 28736, 636, 7809, 20291, N'PK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 15651, 785, 5437, 9429, N'PL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 375, 2, 228, 145, N'PS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 27406, 1126, 2499, 23781, N'PT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 689, 10, 155, 524, N'PY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 21331, 13, 2449, 18869, N'QA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 15131, 939, 6912, 7280, N'RO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 10032, 215, 2732, 7085, N'RS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 198676, 1827, 31916, 164933, N'RU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 280, 0, 140, 140, N'RW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 37136, 239, 10144, 26753, N'SA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 11, 0, 8, 3, N'SC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 1164, 64, 119, 981, N'SD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 25921, 3220, 4971, 17730, N'SE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 22460, 20, 2296, 20144, N'SG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 1454, 101, 255, 1098, N'SI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 1455, 26, 919, 510, N'SK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 291, 18, 58, 215, N'SL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 637, 41, 126, 470, N'SM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 1634, 17, 643, 974, N'SN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 997, 48, 110, 839, N'SO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 10, 1, 9, 0, N'SR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 208, 5, 4, 199, N'ST')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 784, 17, 276, 491, N'SV')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 47, 3, 29, 15, N'SY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 163, 2, 14, 147, N'SZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 322, 31, 53, 238, N'TD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 153, 10, 87, 56, N'TG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 3004, 56, 2787, 161, N'TH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 612, 20, 0, 592, N'TJ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 24, 0, 21, 3, N'TL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 1032, 45, 660, 327, N'TN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 137115, 3739, 89480, 43896, N'TR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 116, 8, 104, 4, N'TT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 440, 6, 361, 73, N'TW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 509, 21, 183, 305, N'TZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 14710, 376, 2909, 11425, N'UA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 116, 0, 55, 61, N'UG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 2616854, 157537, 212534, 2246783, N'US')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 702, 18, 513, 171, N'UY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 2349, 10, 1846, 493, N'UZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 12, 0, 2, 10, N'VA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 17, 0, 9, 8, N'VC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 402, 10, 190, 202, N'VE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 288, 0, 241, 47, N'VN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 862, 28, 622, 212, N'XK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 34, 7, 1, 26, N'YE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 9420, 186, 3983, 5251, N'ZA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 252, 7, 112, 133, N'ZM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-10' AS Date), 35, 4, 9, 22, N'ZW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 755, 48, 550, 157, N'AD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 18198, 198, 4804, 13196, N'AE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 4402, 120, 558, 3724, N'AF')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 25, 3, 19, 3, N'AG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 868, 31, 650, 187, N'AL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 3313, 45, 1325, 1943, N'AM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 45, 2, 13, 30, N'AO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 6034, 305, 1757, 3972, N'AR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 15871, 618, 13991, 1262, N'AT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 6948, 97, 6167, 684, N'AU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 2519, 32, 1650, 837, N'AZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 2117, 107, 1106, 904, N'BA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 84, 7, 57, 20, N'BB')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 14657, 228, 2650, 11779, N'BD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 53081, 8656, 13642, 30783, N'BE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 751, 49, 577, 125, N'BF')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 1965, 91, 444, 1430, N'BG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 4941, 8, 2070, 2863, N'BH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 15, 1, 7, 7, N'BI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 319, 2, 62, 255, N'BJ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 141, 1, 134, 6, N'BN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 2556, 118, 273, 2165, N'BO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 162699, 11123, 64957, 86619, N'BR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 92, 11, 37, 44, N'BS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 7, 0, 5, 2, N'BT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 23, 1, 12, 10, N'BW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 22973, 131, 6406, 16436, N'BY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 18, 2, 16, 0, N'BZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 140180, 9980, 32109, 98091, N'CA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 991, 41, 136, 814, N'CD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 143, 0, 10, 133, N'CF')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 274, 10, 33, 231, N'CG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 30305, 1833, 26600, 1872, N'CH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 1700, 21, 794, 885, N'CI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 28866, 312, 13112, 15442, N'CL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 2579, 114, 1465, 1000, N'CM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 84010, 4637, 79167, 206, N'CN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 11063, 463, 2705, 7895, N'CO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 792, 7, 501, 284, N'CR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 1766, 77, 1193, 496, N'CU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 246, 2, 56, 188, N'CV')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 898, 16, 401, 481, N'CY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 8123, 280, 4474, 3369, N'CZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 171879, 7569, 144400, 19910, N'DE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 1210, 3, 847, 360, N'DJ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 10627, 529, 8415, 1683, N'DK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 16, 0, 15, 1, N'DM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 10347, 388, 2763, 7196, N'DO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 5723, 502, 2678, 2543, N'DZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 29559, 2127, 3433, 23999, N'EC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 1739, 60, 750, 929, N'EE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 9400, 525, 2075, 6800, N'EG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 6, 0, 5, 1, N'EH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 39, 0, 37, 2, N'ER')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 224350, 26621, 136166, 61563, N'ES')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 239, 5, 99, 135, N'ET')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 5962, 267, 4000, 1695, N'FI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 18, 0, 14, 4, N'FJ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 177094, 26383, 56327, 94384, N'FR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 661, 8, 110, 543, N'GA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 220449, 31930, 1002, 187517, N'GB')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 21, 0, 13, 8, N'GD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 635, 10, 309, 316, N'GE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 4263, 22, 378, 3863, N'GH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 20, 1, 9, 10, N'GM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 2146, 11, 714, 1421, N'GN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 439, 4, 13, 422, N'GQ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 2716, 151, 1374, 1191, N'GR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 1052, 26, 110, 916, N'GT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 726, 3, 26, 697, N'GW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 104, 10, 35, 59, N'GY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 1972, 108, 203, 1661, N'HN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 2187, 90, 1764, 333, N'HR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 182, 15, 17, 150, N'HT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 3263, 413, 933, 1917, N'HU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 14032, 973, 2698, 10361, N'ID')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 22996, 1458, 17110, 4428, N'IE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 16477, 252, 11430, 4795, N'IL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 67161, 2212, 20969, 43980, N'IN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 2767, 109, 1734, 924, N'IQ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 107603, 6640, 86143, 14820, N'IR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 1801, 10, 1773, 18, N'IS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 219070, 30560, 105186, 83324, N'IT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 502, 9, 90, 403, N'JM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 540, 9, 389, 142, N'JO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 15777, 624, 8127, 7026, N'JP')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 672, 32, 239, 401, N'KE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 1002, 12, 675, 315, N'KG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 122, 0, 120, 2, N'KH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 11, 1, 0, 10, N'KM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 15, 0, 14, 1, N'KN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 10909, 256, 9632, 1021, N'KR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 8688, 58, 2729, 5901, N'KW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 5090, 31, 1941, 3118, N'KZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 19, 0, 13, 6, N'LA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 845, 26, 234, 585, N'LB')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 18, 0, 17, 1, N'LC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 82, 1, 55, 26, N'LI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 863, 9, 321, 533, N'LK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 199, 20, 79, 100, N'LR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 1479, 50, 828, 601, N'LT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 3886, 101, 3586, 199, N'LU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 939, 18, 464, 457, N'LV')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 64, 3, 24, 37, N'LY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 6063, 188, 2554, 3321, N'MA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 96, 4, 82, 10, N'MC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 4927, 169, 1958, 2800, N'MD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 324, 9, 290, 25, N'ME')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 193, 0, 101, 92, N'MG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 1642, 91, 1136, 415, N'MK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 704, 38, 351, 315, N'ML')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 180, 6, 72, 102, N'MM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 42, 0, 14, 28, N'MN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 8, 1, 6, 1, N'MR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 496, 5, 433, 58, N'MT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 332, 10, 320, 2, N'MU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 835, 3, 29, 803, N'MV')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 56, 3, 14, 39, N'MW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 35022, 3465, 21824, 9733, N'MX')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 6656, 108, 5025, 1523, N'MY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 91, 0, 34, 57, N'MZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 16, 0, 11, 5, N'NA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 821, 46, 624, 151, N'NE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 4399, 143, 778, 3478, N'NG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 16, 5, 7, 4, N'NI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 42826, 5459, 149, 37218, N'NL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 8105, 219, 32, 7854, N'NO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 110, 0, 31, 79, N'NP')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 1497, 21, 1386, 90, N'NZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 3399, 17, 1117, 2265, N'OM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 8448, 244, 4687, 3517, N'PA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 67307, 1889, 21349, 44069, N'PE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 8, 0, 8, 0, N'PG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 10794, 719, 1924, 8151, N'PH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 30334, 659, 8063, 21612, N'PK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 15996, 800, 5698, 9498, N'PL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 375, 2, 263, 110, N'PS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 27581, 1135, 2549, 23897, N'PT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 713, 10, 165, 538, N'PY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 22520, 14, 2753, 19753, N'QA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 15362, 961, 7051, 7350, N'RO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 10032, 215, 2732, 7085, N'RS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 209688, 1915, 34306, 173467, N'RU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 284, 0, 140, 144, N'RW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 39048, 246, 11457, 27345, N'SA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 11, 0, 10, 1, N'SC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 1365, 70, 149, 1146, N'SD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 26322, 3225, 4971, 18126, N'SE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 23336, 20, 2721, 20595, N'SG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 1457, 102, 256, 1099, N'SI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 1457, 26, 941, 490, N'SK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 307, 18, 67, 222, N'SL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 637, 41, 126, 470, N'SM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 1709, 19, 650, 1040, N'SN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 1054, 51, 118, 885, N'SO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 10, 1, 9, 0, N'SR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 208, 5, 4, 199, N'ST')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 889, 17, 293, 579, N'SV')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 47, 3, 29, 15, N'SY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 172, 2, 27, 143, N'SZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 322, 31, 53, 238, N'TD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 174, 11, 89, 74, N'TG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 3009, 56, 2794, 159, N'TH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 612, 20, 0, 592, N'TJ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 24, 0, 21, 3, N'TL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 1032, 45, 700, 287, N'TN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 138657, 3786, 92691, 42180, N'TR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 116, 8, 107, 1, N'TT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 440, 6, 366, 68, N'TW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 509, 21, 183, 305, N'TZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 15232, 391, 3060, 11781, N'UA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 121, 0, 55, 66, N'UG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 2656272, 158998, 216169, 2281105, N'US')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 707, 19, 517, 171, N'UY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 2418, 10, 1881, 527, N'UZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 12, 0, 2, 10, N'VA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 17, 0, 9, 8, N'VC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 414, 10, 193, 211, N'VE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 288, 0, 241, 47, N'VN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 870, 28, 653, 189, N'XK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 51, 8, 1, 42, N'YE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 10015, 194, 4173, 5648, N'ZA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 267, 7, 117, 143, N'ZM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-11' AS Date), 36, 4, 9, 23, N'ZW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 755, 48, 550, 157, N'AD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 18878, 201, 5381, 13296, N'AE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 4687, 122, 558, 4007, N'AF')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 25, 3, 19, 3, N'AG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 872, 31, 654, 187, N'AL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 3392, 46, 1359, 1987, N'AM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 45, 2, 13, 30, N'AO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 6278, 314, 1837, 4127, N'AR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 15882, 620, 14061, 1201, N'AT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 6970, 97, 6213, 660, N'AU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 2589, 32, 1680, 877, N'AZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 2141, 113, 1114, 914, N'BA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 84, 7, 57, 20, N'BB')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 15691, 239, 2902, 12550, N'BD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 53449, 8707, 13697, 31045, N'BE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 760, 50, 584, 126, N'BF')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 1990, 93, 461, 1436, N'BG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 5236, 8, 2152, 3076, N'BH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 15, 1, 7, 7, N'BI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 319, 2, 62, 255, N'BJ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 141, 1, 134, 6, N'BN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 2831, 122, 299, 2410, N'BO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 169594, 11653, 67384, 90557, N'BR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 93, 11, 39, 43, N'BS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 9, 0, 5, 4, N'BT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 24, 1, 12, 11, N'BW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 23906, 135, 6531, 17240, N'BY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 18, 2, 16, 0, N'BZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 142526, 10228, 33007, 99291, N'CA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 1024, 41, 141, 842, N'CD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 143, 0, 10, 133, N'CF')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 333, 11, 53, 269, N'CG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 30344, 1845, 26800, 1699, N'CH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 1730, 21, 818, 891, N'CI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 30063, 323, 13605, 16135, N'CL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 2689, 125, 1524, 1040, N'CM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 84011, 4637, 79198, 176, N'CN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 11613, 479, 2825, 8309, N'CO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 801, 7, 517, 277, N'CR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 1783, 77, 1229, 477, N'CU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 260, 2, 58, 200, N'CV')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 901, 16, 401, 484, N'CY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 8176, 282, 4711, 3183, N'CZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 172576, 7661, 145617, 19298, N'DE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 1227, 3, 872, 352, N'DJ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 10711, 533, 8526, 1652, N'DK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 16, 0, 15, 1, N'DM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 10634, 393, 2870, 7371, N'DO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 5891, 507, 2841, 2543, N'DZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 29559, 2145, 3433, 23981, N'EC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 1741, 61, 751, 929, N'EE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 9746, 533, 2172, 7041, N'EG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 6, 0, 6, 0, N'EH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 39, 0, 38, 1, N'ER')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 227436, 26744, 137139, 63553, N'ES')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 250, 5, 105, 140, N'ET')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 5984, 271, 4000, 1713, N'FI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 18, 0, 14, 4, N'FJ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 177547, 26646, 56835, 94066, N'FR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 802, 9, 127, 666, N'GA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 224332, 32141, 1015, 191176, N'GB')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 21, 0, 13, 8, N'GD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 638, 11, 317, 310, N'GE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 4700, 22, 494, 4184, N'GH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 22, 1, 10, 11, N'GM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 2146, 11, 714, 1421, N'GN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 439, 4, 13, 422, N'GQ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 2726, 151, 1374, 1201, N'GR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 1114, 26, 111, 977, N'GT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 761, 3, 26, 732, N'GW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 109, 10, 36, 63, N'GY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 2100, 116, 206, 1778, N'HN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 2196, 91, 1784, 321, N'HR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 209, 16, 17, 176, N'HT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 3284, 421, 958, 1905, N'HU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 14265, 991, 2881, 10393, N'ID')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 23135, 1467, 17110, 4558, N'IE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 16506, 258, 11843, 4405, N'IL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 70768, 2294, 22549, 45925, N'IN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 2818, 110, 1790, 918, N'IQ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 109286, 6685, 87422, 15179, N'IR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 1801, 10, 1773, 18, N'IS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 219814, 30739, 106587, 82488, N'IT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 505, 9, 90, 406, N'JM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 562, 9, 390, 163, N'JO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 15847, 633, 8293, 6921, N'JP')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 700, 33, 251, 416, N'KE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 1016, 12, 688, 316, N'KG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 122, 0, 121, 1, N'KH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 11, 1, 0, 10, N'KM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 15, 0, 14, 1, N'KN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 10936, 258, 9670, 1008, N'KR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 9286, 65, 2907, 6314, N'KW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 5207, 32, 2074, 3101, N'KZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 19, 0, 13, 6, N'LA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 859, 26, 234, 599, N'LB')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 18, 0, 17, 1, N'LC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 82, 1, 55, 26, N'LI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 869, 9, 343, 517, N'LK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 211, 20, 85, 106, N'LR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 1485, 50, 833, 602, N'LT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 3888, 101, 3602, 185, N'LU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 946, 18, 464, 464, N'LV')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 64, 3, 28, 33, N'LY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 6281, 188, 2811, 3282, N'MA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 96, 4, 85, 7, N'MC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 4995, 175, 1980, 2840, N'MD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 324, 9, 294, 21, N'ME')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 193, 0, 101, 92, N'MG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 1664, 91, 1200, 373, N'MK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 712, 39, 377, 296, N'ML')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 180, 6, 74, 100, N'MM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 42, 0, 14, 28, N'MN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 8, 1, 6, 1, N'MR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 503, 5, 434, 64, N'MT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 332, 10, 322, 0, N'MU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 897, 3, 29, 865, N'MV')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 57, 3, 24, 30, N'MW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 36327, 3573, 23100, 9654, N'MX')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 6726, 109, 5113, 1504, N'MY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 103, 0, 34, 69, N'MZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 16, 0, 11, 5, N'NA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 832, 46, 637, 149, N'NE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 4641, 150, 902, 3589, N'NG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 16, 5, 7, 4, N'NI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 42987, 5475, 149, 37363, N'NL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 8132, 224, 32, 7876, N'NO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 134, 0, 33, 101, N'NP')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 1497, 21, 1398, 78, N'NZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 3573, 17, 1250, 2306, N'OM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 8616, 249, 4687, 3680, N'PA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 68822, 1961, 22406, 44455, N'PE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 8, 0, 8, 0, N'PG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 11086, 726, 1999, 8361, N'PH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 32081, 706, 8555, 22820, N'PK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 16326, 811, 5816, 9699, N'PL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 375, 2, 301, 72, N'PS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 27679, 1144, 2549, 23986, N'PT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 724, 10, 170, 544, N'PY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 23623, 14, 2840, 20769, N'QA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 15588, 982, 7245, 7361, N'RO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 10176, 218, 3290, 6668, N'RS')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 221344, 2009, 39801, 179534, N'RU')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 285, 0, 150, 135, N'RW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 41014, 255, 12737, 28022, N'SA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 11, 0, 10, 1, N'SC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 1526, 74, 162, 1290, N'SD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 26670, 3256, 4971, 18443, N'SE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 23822, 21, 3225, 20576, N'SG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 1460, 102, 256, 1102, N'SI')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 1457, 26, 959, 472, N'SK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 338, 19, 72, 247, N'SL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 628, 41, 130, 457, N'SM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 1886, 19, 715, 1152, N'SN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 1089, 52, 121, 916, N'SO')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 10, 1, 9, 0, N'SR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 208, 5, 4, 199, N'ST')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 958, 18, 325, 615, N'SV')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 47, 3, 29, 15, N'SY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 175, 2, 28, 145, N'SZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 322, 31, 53, 238, N'TD')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 181, 11, 89, 81, N'TG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 3015, 56, 2796, 163, N'TH')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 661, 21, 0, 640, N'TJ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 24, 0, 21, 3, N'TL')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 1032, 45, 727, 260, N'TN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 139771, 3841, 95780, 40150, N'TR')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 116, 8, 107, 1, N'TT')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 440, 7, 368, 65, N'TW')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 509, 21, 183, 305, N'TZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 15648, 408, 3288, 11952, N'UA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 121, 0, 55, 66, N'UG')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 2693509, 161307, 232733, 2299469, N'US')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 711, 19, 523, 169, N'UY')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 2486, 10, 1988, 488, N'UZ')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 12, 0, 2, 10, N'VA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 17, 0, 9, 8, N'VC')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 422, 10, 205, 207, N'VE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 288, 0, 249, 39, N'VN')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 884, 28, 655, 201, N'XK')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 56, 9, 1, 46, N'YE')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 10652, 206, 4357, 6089, N'ZA')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 267, 7, 117, 143, N'ZM')
GO
INSERT [dbo].[Cases] ([Date], [Confirmed], [Deaths], [Recovered], [Active], [CountryID]) VALUES (CAST(N'2020-05-12' AS Date), 36, 4, 9, 23, N'ZW')
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Bắc Giang', 4, 0, 4, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Bạc Liêu', 20, 17, 3, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Bắc Ninh', 1, 0, 1, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Bến Tre', 1, 0, 1, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Bình Thuận', 9, 0, 9, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Cần Thơ', 2, 0, 2, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Đà Nẵng', 6, 0, 6, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Đồng Nai', 1, 0, 1, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Đồng Tháp', 4, 0, 4, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Hà Giang', 1, 0, 1, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Hà Nam', 4, 1, 3, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Hà Nội', 112, 11, 101, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Hà Tĩnh', 4, 0, 4, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Hải Dương', 1, 0, 1, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Hồ Chí Minh', 56, 3, 53, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Hưng Yên', 1, 0, 1, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Khánh Hòa', 1, 0, 1, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Lai Châu', 1, 0, 1, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Lào Cai', 2, 0, 2, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Ninh Bình', 13, 0, 13, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Ninh Thuận', 2, 0, 2, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Quảng Nam', 3, 0, 3, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Quảng Ninh', 7, 2, 5, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Tây Ninh', 3, 0, 3, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Thái Bình', 2, 1, 1, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Thái Nguyên', 1, 0, 1, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Thanh Hóa', 3, 1, 2, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Thừa Thiên Huế', 2, 0, 2, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Trà Vinh', 2, 0, 2, 0)
GO
INSERT [dbo].[Cities] ([CityName], [TotalCase], [Active], [Recovered], [Deaths]) VALUES (N'Vĩnh Phúc', 19, 0, 19, 0)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'AD', N'Andorra', 42.546245, 1.601554)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'AE', N'United Arab Emirates', 23.424076, 53.847818)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'AF', N'Afghanistan', 33.93911, 67.709953)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'AG', N'Antigua and Barbuda', 17.060816, -61.796428)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'AI', N'Anguilla', 18.220554, -63.068615)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'AL', N'Albania', 41.153332, 20.168331)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'AM', N'Armenia', 40.069099, 45.038189)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'AN', N'Netherlands Antilles', 12.226079, -69.060087)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'AO', N'Angola', -11.202692, 17.873887)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'AQ', N'Antarctica', -75.250973, -0.071389)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'AR', N'Argentina', -38.416097, -63.616672)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'AS', N'American Samoa', -14.270972, -170.132217)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'AT', N'Austria', 47.516231, 14.550072)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'AU', N'Australia', -25.274398, 133.775136)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'AW', N'Aruba', 12.52111, -69.968338)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'AZ', N'Azerbaijan', 40.143105, 47.576927)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'BA', N'Bosnia and Herzegovina', 43.915886, 17.679076)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'BB', N'Barbados', 13.193887, -59.543198)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'BD', N'Bangladesh', 23.684994, 90.356331)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'BE', N'Belgium', 50.503887, 4.469936)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'BF', N'Burkina Faso', 12.238333, -1.561593)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'BG', N'Bulgaria', 42.733883, 25.48583)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'BH', N'Bahrain', 25.930414, 50.637772)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'BI', N'Burundi', -3.373056, 29.918886)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'BJ', N'Benin', 9.30769, 2.315834)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'BM', N'Bermuda', 32.321384, -64.75737)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'BN', N'Brunei', 4.535277, 114.727669)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'BO', N'Bolivia', -16.290154, -63.588653)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'BR', N'Brazil', -14.235004, -51.92528)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'BS', N'Bahamas', 25.03428, -77.39628)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'BT', N'Bhutan', 27.514162, 90.433601)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'BV', N'Bouvet Island', -54.423199, 3.413194)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'BW', N'Botswana', -22.328474, 24.684866)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'BY', N'Belarus', 53.709807, 27.953389)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'BZ', N'Belize', 17.189877, -88.49765)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'CA', N'Canada', 56.130366, -106.346771)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'CC', N'Cocos [Keeling] Islands', -12.164165, 96.870956)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'CD', N'Congo [DRC]', -4.038333, 21.758664)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'CF', N'Central African Republic', 6.611111, 20.939444)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'CG', N'Congo [Republic]', -0.228021, 15.827659)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'CH', N'Switzerland', 46.818188, 8.227512)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'CI', N'C?te d''Ivoire', 7.539989, -5.54708)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'CK', N'Cook Islands', -21.236736, -159.777671)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'CL', N'Chile', -35.675147, -71.542969)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'CM', N'Cameroon', 7.369722, 12.354722)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'CN', N'China', 35.86166, 104.195397)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'CO', N'Colombia', 4.570868, -74.297333)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'CR', N'Costa Rica', 9.748917, -83.753428)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'CU', N'Cuba', 21.521757, -77.781167)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'CV', N'Cape Verde', 16.002082, -24.013197)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'CX', N'Christmas Island', -10.447525, 105.690449)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'CY', N'Cyprus', 35.126413, 33.429859)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'CZ', N'Czech Republic', 49.817492, 15.472962)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'DE', N'Germany', 51.165691, 10.451526)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'DJ', N'Djibouti', 11.825138, 42.590275)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'DK', N'Denmark', 56.26392, 9.501785)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'DM', N'Dominica', 15.414999, -61.370976)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'DO', N'Dominican Republic', 18.735693, -70.162651)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'DZ', N'Algeria', 28.033886, 1.659626)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'EC', N'Ecuador', -1.831239, -78.183406)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'EE', N'Estonia', 58.595272, 25.013607)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'EG', N'Egypt', 26.820553, 30.802498)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'EH', N'Western Sahara', 24.215527, -12.885834)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'ER', N'Eritrea', 15.179384, 39.782334)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'ES', N'Spain', 40.463667, -3.74922)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'ET', N'Ethiopia', 9.145, 40.489673)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'FI', N'Finland', 61.92411, 25.748151)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'FJ', N'Fiji', -16.578193, 179.414413)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'FK', N'Falkland Islands [Islas Malvinas]', -51.796253, -59.523613)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'FM', N'Micronesia', 7.425554, 150.550812)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'FO', N'Faroe Islands', 61.892635, -6.911806)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'FR', N'France', 46.227638, 2.213749)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'GA', N'Gabon', -0.803689, 11.609444)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'GB', N'United Kingdom', 55.378051, -3.435973)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'GD', N'Grenada', 12.262776, -61.604171)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'GE', N'Georgia', 42.315407, 43.356892)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'GF', N'French Guiana', 3.933889, -53.125782)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'GG', N'Guernsey', 49.465691, -2.585278)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'GH', N'Ghana', 7.946527, -1.023194)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'GI', N'Gibraltar', 36.137741, -5.345374)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'GL', N'Greenland', 71.706936, -42.604303)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'GM', N'Gambia', 13.443182, -15.310139)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'GN', N'Guinea', 9.945587, -9.696645)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'GP', N'Guadeloupe', 16.995971, -62.067641)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'GQ', N'Equatorial Guinea', 1.650801, 10.267895)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'GR', N'Greece', 39.074208, 21.824312)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'GS', N'South Georgia and the South Sandwich Islands', -54.429579, -36.587909)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'GT', N'Guatemala', 15.783471, -90.230759)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'GU', N'Guam', 13.444304, 144.793731)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'GW', N'Guinea-Bissau', 11.803749, -15.180413)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'GY', N'Guyana', 4.860416, -58.93018)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'GZ', N'Gaza Strip', 31.354676, 34.308825)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'HK', N'Hong Kong', 22.396428, 114.109497)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'HM', N'Heard Island and McDonald Islands', -53.08181, 73.504158)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'HN', N'Honduras', 15.199999, -86.241905)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'HR', N'Croatia', 45.1, 15.2)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'HT', N'Haiti', 18.971187, -72.285215)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'HU', N'Hungary', 47.162494, 19.503304)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'ID', N'Indonesia', -0.789275, 113.921327)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'IE', N'Ireland', 53.41291, -8.24389)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'IL', N'Israel', 31.046051, 34.851612)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'IM', N'Isle of Man', 54.236107, -4.548056)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'IN', N'India', 20.593684, 78.96288)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'IO', N'British Indian Ocean Territory', -6.343194, 71.876519)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'IQ', N'Iraq', 33.223191, 43.679291)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'IR', N'Iran', 32.427908, 53.688046)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'IS', N'Iceland', 64.963051, -19.020835)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'IT', N'Italy', 41.87194, 12.56738)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'JE', N'Jersey', 49.214439, -2.13125)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'JM', N'Jamaica', 18.109581, -77.297508)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'JO', N'Jordan', 30.585164, 36.238414)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'JP', N'Japan', 36.204824, 138.252924)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'KE', N'Kenya', -0.023559, 37.906193)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'KG', N'Kyrgyzstan', 41.20438, 74.766098)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'KH', N'Cambodia', 12.565679, 104.990963)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'KI', N'Kiribati', -3.370417, -168.734039)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'KM', N'Comoros', -11.875001, 43.872219)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'KN', N'Saint Kitts and Nevis', 17.357822, -62.782998)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'KP', N'North Korea', 40.339852, 127.510093)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'KR', N'South Korea', 35.907757, 127.766922)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'KW', N'Kuwait', 29.31166, 47.481766)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'KY', N'Cayman Islands', 19.513469, -80.566956)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'KZ', N'Kazakhstan', 48.019573, 66.923684)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'LA', N'Laos', 19.85627, 102.495496)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'LB', N'Lebanon', 33.854721, 35.862285)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'LC', N'Saint Lucia', 13.909444, -60.978893)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'LI', N'Liechtenstein', 47.166, 9.555373)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'LK', N'Sri Lanka', 7.873054, 80.771797)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'LR', N'Liberia', 6.428055, -9.429499)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'LS', N'Lesotho', -29.609988, 28.233608)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'LT', N'Lithuania', 55.169438, 23.881275)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'LU', N'Luxembourg', 49.815273, 6.129583)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'LV', N'Latvia', 56.879635, 24.603189)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'LY', N'Libya', 26.3351, 17.228331)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'MA', N'Morocco', 31.791702, -7.09262)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'MC', N'Monaco', 43.750298, 7.412841)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'MD', N'Moldova', 47.411631, 28.369885)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'ME', N'Montenegro', 42.708678, 19.37439)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'MG', N'Madagascar', -18.766947, 46.869107)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'MH', N'Marshall Islands', 7.131474, 171.184478)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'MK', N'Macedonia [FYROM]', 41.608635, 21.745275)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'ML', N'Mali', 17.570692, -3.996166)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'MM', N'Myanmar [Burma]', 21.913965, 95.956223)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'MN', N'Mongolia', 46.862496, 103.846656)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'MO', N'Macau', 22.198745, 113.543873)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'MP', N'Northern Mariana Islands', 17.33083, 145.38469)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'MQ', N'Martinique', 14.641528, -61.024174)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'MR', N'Mauritania', 21.00789, -10.940835)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'MS', N'Montserrat', 16.742498, -62.187366)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'MT', N'Malta', 35.937496, 14.375416)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'MU', N'Mauritius', -20.348404, 57.552152)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'MV', N'Maldives', 3.202778, 73.22068)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'MW', N'Malawi', -13.254308, 34.301525)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'MX', N'Mexico', 23.634501, -102.552784)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'MY', N'Malaysia', 4.210484, 101.975766)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'MZ', N'Mozambique', -18.665695, 35.529562)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'NA', N'Namibia', -22.95764, 18.49041)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'NC', N'New Caledonia', -20.904305, 165.618042)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'NE', N'Niger', 17.607789, 8.081666)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'NF', N'Norfolk Island', -29.040835, 167.954712)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'NG', N'Nigeria', 9.081999, 8.675277)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'NI', N'Nicaragua', 12.865416, -85.207229)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'NL', N'Netherlands', 52.132633, 5.291266)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'NO', N'Norway', 60.472024, 8.468946)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'NP', N'Nepal', 28.394857, 84.124008)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'NR', N'Nauru', -0.522778, 166.931503)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'NU', N'Niue', -19.054445, -169.867233)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'NZ', N'New Zealand', -40.900557, 174.885971)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'OM', N'Oman', 21.512583, 55.923255)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'PA', N'Panama', 8.537981, -80.782127)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'PE', N'Peru', -9.189967, -75.015152)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'PF', N'French Polynesia', -17.679742, -149.406843)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'PG', N'Papua New Guinea', -6.314993, 143.95555)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'PH', N'Philippines', 12.879721, 121.774017)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'PK', N'Pakistan', 30.375321, 69.345116)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'PL', N'Poland', 51.919438, 19.145136)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'PM', N'Saint Pierre and Miquelon', 46.941936, -56.27111)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'PN', N'Pitcairn Islands', -24.703615, -127.439308)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'PR', N'Puerto Rico', 18.220833, -66.590149)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'PS', N'Palestinian Territories', 31.952162, 35.233154)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'PT', N'Portugal', 39.399872, -8.224454)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'PW', N'Palau', 7.51498, 134.58252)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'PY', N'Paraguay', -23.442503, -58.443832)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'QA', N'Qatar', 25.354826, 51.183884)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'RE', N'R?union', -21.115141, 55.536384)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'RO', N'Romania', 45.943161, 24.96676)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'RS', N'Serbia', 44.016521, 21.005859)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'RU', N'Russia', 61.52401, 105.318756)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'RW', N'Rwanda', -1.940278, 29.873888)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'SA', N'Saudi Arabia', 23.885942, 45.079162)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'SB', N'Solomon Islands', -9.64571, 160.156194)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'SC', N'Seychelles', -4.679574, 55.491977)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'SD', N'Sudan', 12.862807, 30.217636)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'SE', N'Sweden', 60.128161, 18.643501)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'SG', N'Singapore', 1.352083, 103.819836)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'SH', N'Saint Helena', -24.143474, -10.030696)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'SI', N'Slovenia', 46.151241, 14.995463)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'SJ', N'Svalbard and Jan Mayen', 77.553604, 23.670272)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'SK', N'Slovakia', 48.669026, 19.699024)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'SL', N'Sierra Leone', 8.460555, -11.779889)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'SM', N'San Marino', 43.94236, 12.457777)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'SN', N'Senegal', 14.497401, -14.452362)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'SO', N'Somalia', 5.152149, 46.199616)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'SR', N'Suriname', 3.919305, -56.027783)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'ST', N'S?o Tom? and Pr?ncipe', 0.18636, 6.613081)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'SV', N'El Salvador', 13.794185, -88.89653)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'SY', N'Syria', 34.802075, 38.996815)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'SZ', N'Swaziland', -26.522503, 31.465866)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'TC', N'Turks and Caicos Islands', 21.694025, -71.797928)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'TD', N'Chad', 15.454166, 18.732207)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'TF', N'French Southern Territories', -49.280366, 69.348557)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'TG', N'Togo', 8.619543, 0.824782)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'TH', N'Thailand', 15.870032, 100.992541)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'TJ', N'Tajikistan', 38.861034, 71.276093)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'TK', N'Tokelau', -8.967363, -171.855881)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'TL', N'Timor-Leste', -8.874217, 125.727539)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'TM', N'Turkmenistan', 38.969719, 59.556278)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'TN', N'Tunisia', 33.886917, 9.537499)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'TO', N'Tonga', -21.178986, -175.198242)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'TR', N'Turkey', 38.963745, 35.243322)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'TT', N'Trinidad and Tobago', 10.691803, -61.222503)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'TV', N'Tuvalu', -7.109535, 177.64933)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'TW', N'Taiwan', 23.69781, 120.960515)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'TZ', N'Tanzania', -6.369028, 34.888822)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'UA', N'Ukraine', 48.379433, 31.16558)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'UG', N'Uganda', 1.373333, 32.290275)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'UM', N'U.S. Minor Outlying Islands', NULL, NULL)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'US', N'United States', 37.09024, -95.712891)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'UY', N'Uruguay', -32.522779, -55.765835)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'UZ', N'Uzbekistan', 41.377491, 64.585262)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'VA', N'Vatican City', 41.902916, 12.453389)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'VC', N'Saint Vincent and the Grenadines', 12.984305, -61.287228)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'VE', N'Venezuela', 6.42375, -66.58973)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'VG', N'British Virgin Islands', 18.420695, -64.639968)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'VI', N'U.S. Virgin Islands', 18.335765, -64.896335)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'VN', N'Vietnam', 14.058324, 108.277199)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'VU', N'Vanuatu', -15.376706, 166.959158)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'WF', N'Wallis and Futuna', -13.768752, -177.156097)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'WS', N'Samoa', -13.759029, -172.104629)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'XK', N'Kosovo', 42.602636, 20.902977)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'YE', N'Yemen', 15.552727, 48.516388)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'YT', N'Mayotte', -12.8275, 45.166244)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'ZA', N'South Africa', -30.559482, 22.937506)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'ZM', N'Zambia', -13.133897, 27.849332)
GO
INSERT [dbo].[Countries] ([CountryID], [Name], [Latitude], [Longitude]) VALUES (N'ZW', N'Zimbabwe', -19.015438, 29.154857)
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (1, CAST(N'2020-05-08' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/5/8/robot-beetle-bot-1-7read-only-15889014207921657766037-crop-15889014601981440384581.jpg', N'https://tuoitre.vn/ban-tre-o-tp-hcm-lam-robot-nhac-nho-nguoi-khong-deo-khau-trang-20200508083126867.htm', N'Bạn trẻ ở TP.HCM làm robot nhắc nhở người không đeo khẩu trang', N'TTO - Trong vòng 48 giờ, một nhóm bạn trẻ ở TP.HCM hoàn thiện các ứng dụng AI trên chú robot mang tên ''Beetle Bot'' giúp phát hiện người không đeo khẩu trang, người không thực hiện giãn cách an toàn.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (2, CAST(N'2020-05-07' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/5/7/trung-vuong-chu-ha-linh-6-15888475654942011237787-crop-15888476972861027341092.jpg', N'https://tuoitre.vn/bo-gd-dt-bo-yeu-cau-gian-cach-va-deo-khau-trang-trong-lop-hoc-20200507173444597.htm', N'Bộ GD-ĐT bỏ yêu cầu giãn cách và đeo khẩu trang trong lớp học', N'TTO - Trong hướng dẫn mới nhất gửi các sở GD-ĐT và các cơ sở đào tạo, Bộ GD-ĐT yêu cầu nới lỏng các quy định nhằm phòng chống dịch COVID-19.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (3, CAST(N'2020-05-07' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/5/7/nghien-cuu-vacxin-158882024092096403512-crop-15888347264691826901199.png', N'https://tuoitre.vn/who-canh-bao-viec-chu-dong-lay-nhiem-virus-corona-de-tang-toc-nghien-cuu-vacxin-20200507135726971.htm', N'WHO cảnh báo việc chủ động lây nhiễm virus corona để tăng tốc nghiên cứu vắcxin', N'TTO - Tổ chức Y tế thế giới (WHO) cho biết việc chủ động lây nhiễm virus corona cho các tình nguyện viên khỏe mạnh có thể tăng tốc nghiên cứu vắcxin, song tiềm ẩn nguy cơ sức khỏe, thậm chí gây tử vong.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (4, CAST(N'2020-05-07' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/5/6/xa-phong-15887573915451992121084-crop-1588757469812117553642.jpg', N'https://tuoitre.vn/xa-phong-hang-hot-thoi-corona-ra-doi-the-nao-2020050616311205.htm', N'Xà phòng, hàng ''hot'' thời corona, ra đời thế nào?', N'TTO - Khi mới ra đời, xà phòng không được coi trọng vì gắn với tầng lớp thấp. Sau đó, với sự phát triển của khoa học kỹ thuật, xà phòng được các nhà nghiên cứu chứng minh là có tác dụng tẩy rửa rất tốt và được sử dụng phổ biến.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (5, CAST(N'2020-05-06' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/5/6/vaccine-corona-15887568727571862876290-crop-15887569287621915463748.jpg', N'https://tuoitre.vn/an-do-phat-trien-30-loai-vacxin-phong-covid-19-2020050614475322.htm', N'Ấn Độ phát triển 30 loại vắcxin phòng COVID-19', N'TTO - Giới chuyên gia nhấn mạnh sự phát triển này có ý nghĩa quan trọng trong bối cảnh đại dịch viêm đường hô hấp cấp COVID-19 vẫn đang diễn biến phức tạp trên toàn cầu.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (6, CAST(N'2020-05-05' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/5/5/covid-israel-15886625766151885929340-crop-15886626332271755944428.jpg', N'https://tuoitre.vn/dot-pha-israel-phan-lap-thanh-cong-khang-the-diet-virus-corona-gay-benh-covid-19-20200505140356694.htm', N'Đột phá: Israel phân lập thành công kháng thể diệt virus corona gây bệnh COVID-19', N'TTO - Bộ trưởng Quốc phòng Israel cho biết kháng thể do Viện nghiên cứu sinh học Israel phát triển có thể tiêu diệt virus gây bệnh COVID-19 trong cơ thể người nhiễm. Công thức kháng thể trên đang chờ được cấp bằng sáng chế, sau đó sản xuất đại trà.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (7, CAST(N'2020-05-05' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/5/5/dsc04186-15886512481091481614966-crop-1588651299315306799834.jpg', N'https://tuoitre.vn/truong-tieu-hoc-tp-hcm-se-don-va-giao-nhan-hoc-sinh-tai-cong-truong-20200505110218062.htm', N'Trường tiểu học TP.HCM sẽ đón và giao nhận học sinh tại cổng trường', N'TTO - Sở GD-ĐT TP.HCM vừa có văn bản hướng dẫn các trường tiểu học về công tác tổ chức cho học sinh đi học lại. Theo đó trường sẽ bố trí người đón và giao nhận học sinh tại cổng trường, không để phụ huynh, người không có nhiệm vụ vào trong trường.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (8, CAST(N'2020-05-05' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/5/5/covid-1200x660-1588643347487381656524-crop-1588643358273870445037.jpeg', N'https://tuoitre.vn/phat-hien-khang-the-ngan-lay-nhiem-covid-19-20200505084923056.htm', N'Phát hiện kháng thể ngăn lây nhiễm COVID-19', N'TTO - Các nhà khoa học đã xác định được một kháng thể đơn dòng trong phòng thí nghiệm có thể ngăn chặn COVID-19 mới lây nhiễm vào các tế bào. Họ hi vọng dùng nó để tạo ra phương pháp điều trị ngăn chặn đại dịch.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (9, CAST(N'2020-05-05' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/5/4/2020-04-30t172545z1143196800rc25fg9oks5nrtrmadp3health-coronavirus-canada-15886080168671374960598-crop-1588608230855559052174.jpg', N'https://tuoitre.vn/vi-sao-the-gioi-chong-dich-bang-cach-xet-nghiem-va-xet-nghiem-20200504230308964.htm', N'Vì sao thế giới chống dịch bằng cách… xét nghiệm và xét nghiệm?', N'TTO - Cho đến nay, hai phương pháp phòng và chống dịch COVID-19 là vắcxin và thuốc đặc hiệu đều chưa có nên biện pháp được tiến hành tại hầu hết các quốc gia là xét nghiệm và cách ly người bệnh.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (10, CAST(N'2020-05-04' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/5/4/trump-15885555713931445921301-crop-15885557200992020418411.jpg', N'https://tuoitre.vn/ong-trump-my-se-co-vacxin-phong-covid-19-cuoi-nam-nay-20200504081418739.htm', N'Ông Trump: Mỹ sẽ có vắcxin phòng COVID-19 cuối năm nay', N'TTO - Các chuyên gia y tế Mỹ cho rằng có thể mất từ một năm tới 18 tháng để bào chế thành công vắcxin và đưa vào sử dụng, nhưng Tổng thống Trump tự tin Mỹ có thể làm được điều đó vào cuối năm nay.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (11, CAST(N'2020-05-02' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/5/2/elisa-1588381942686599003248-crop-15883819730491794038339.jpg', N'https://tuoitre.vn/test-nhanh-elisa-buoc-tien-moi-cua-viet-nam-20200502081305654.htm', N'Test nhanh elisa: Bước tiến mới của Việt Nam', N'TTO - Trong khi các test nhanh hiện có phát hiện chính xác 60-70% các mẫu có kháng thể thì bộ test kit này đạt 95% về độ nhạy và độ đặc hiệu, đồng thời không bị phản ứng chéo với virus khác như đã gặp ở test nhanh.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (12, CAST(N'2020-05-02' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/5/2/bien-phan-thiet-15883812634141645347230-crop-1588381331576693255162.jpg', N'https://tuoitre.vn/thu-truong-bo-y-te-viet-nam-chua-tinh-cong-bo-het-dich-2020050208022181.htm', N'Thứ trưởng Bộ Y tế: Việt Nam chưa tính công bố hết dịch', N'TTO - Trước tình hình dịch bệnh trên thế giới còn phức tạp với số ca mắc mới vẫn còn cao, Ban Chỉ đạo phòng chống dịch quốc gia vẫn chưa tính đến thời điểm công bố hết dịch.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (13, CAST(N'2020-05-02' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/15/r-xet-nghiem-corona4-15869337311432028533209-crop-1588382320800160029393.jpg', N'https://tuoitre.vn/my-vien-tro-viet-nam-9-5-trieu-usd-chong-dich-covid-19-20200428141247508.htm', N'Mỹ viện trợ Việt Nam 9,5 triệu USD chống dịch COVID-19', N'TTO - Bộ Ngoại giao Mỹ cho biết Việt Nam sẽ được nhận tổng số tiền viện trợ là 9,5 triệu USD nhằm ứng phó với dịch COVID-19, trong đó bao gồm 5 triệu USD cho quỹ hỗ trợ kinh tế.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (14, CAST(N'2020-05-02' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/5/2/ruatay-1588376636730700992489-crop-1588376642420292101767.jpg', N'https://tuoitre.vn/covid-19-co-the-lay-qua-duong-tieu-hoa-hay-rua-tay-rua-tay-va-rua-tay-20200501105532958.htm', N'COVID-19 có thể lây qua đường tiêu hóa: hãy rửa tay, rửa tay và rửa tay!', N'TTO - Mặc dù vẫn còn cần thêm chứng cứ để khẳng định khả năng SARS-CoV-2 lây qua đường tiêu hóa, việc phòng ngừa là cần thiết, đặc biệt khi cách phòng ngừa rất đơn giản là rửa tay đúng cách.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (15, CAST(N'2020-04-30' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/30/sp5-15882222310141683377111-crop-1588222750419789111892.jpg', N'https://tuoitre.vn/dh-bach-khoa-tp-hcm-gioi-thieu-loat-san-pham-cong-nghe-phong-chong-covid-19-20200430120607883.htm', N'ĐH Bách khoa TP.HCM giới thiệu loạt sản phẩm công nghệ phòng chống COVID-19', N'TTO - Hàng chục sản phẩm khoa học, công nghệ được Trường ĐH Bách khoa (ĐH Quốc gia TP.HCM) thiết kế, chế tạo, chuyển giao công nghệ và sản xuất để hỗ trợ công tác phòng chống COVID-19.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (16, CAST(N'2020-04-29' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/29/vac-xin-1588128909243997097456-crop-15881289967971844403588.jpg', N'https://tuoitre.vn/dh-oxford-thu-thanh-cong-vacxin-ngua-corona-tren-khi-20200429095634555.htm', N'ĐH Oxford thử thành công vắcxin ngừa corona trên khỉ', N'TTO - Trong cuộc đua tìm kiếm vắcxin ngừa COVID-19 toàn cầu, các nhà khoa học ĐH Oxford vừa bứt phá với thành công trong thử nghiệm vắcxin trên loài khỉ rất gần với con người.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (17, CAST(N'2020-04-28' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/28/2-3-bung-no-bang-hieu-quang-cao-tieng-nuoc-ngoai-anh-1-1584247964466243701518-1588085052903214797131-crop-15880850623731804040803.jpg', N'https://tuoitre.vn/ha-noi-tiep-tuc-dung-lam-dep-massage-xem-phim-chi-cho-phep-cat-toc-20200428214611275.htm', N'Hà Nội tiếp tục dừng làm đẹp, massage, xem phim, chỉ cho phép cắt tóc', N'TTO - Tiếp tục giãn cách xã hội ở 2 huyện Thường Tín và Mê Linh. Hà Nội tiếp tục dừng hoạt động quán bar, vũ trường, karaoke, cơ sở làm đẹp, ngoại trừ cửa hàng cắt tóc...')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (18, CAST(N'2020-04-28' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/28/cua-hang-vin-1588066640688411243218.jpg', N'https://tuoitre.vn/tp-hcm-cam-tu-tap-tren-30-nguoi-phong-tap-gym-duoc-hoat-dong-tro-lai-20200428163507791.htm', N'TP.HCM cấm tụ tập trên 30 người, phòng tập gym được hoạt động trở lại', N'TTO - Ngày 28-4, Phó chủ tịch thường trực UBND TP.HCM Lê Thanh Liêm đã ký văn bản về việc triển khai thực hiện chỉ thị 19 của Thủ tướng, trong đó nêu cụ thể những cơ sở được hoạt động và tiếp tục dừng hoạt động.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (19, CAST(N'2020-04-28' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/28/hinh-may-bay-28-4-1588041152372101900872-crop-1588041181803829071036.jpg', N'https://tuoitre.vn/tp-hcm-giam-sat-covid-19-toan-bo-to-bay-cua-cac-chuyen-bay-quoc-te-20200428093836306.htm', N'TP.HCM giám sát COVID-19 toàn bộ tổ bay của các chuyến bay quốc tế', N'TTO - Ngày 28-4, Trung tâm Kiểm soát bệnh tật TP.HCM cho biết thành phố bắt đầu giám sát COVID-19 đối với toàn bộ tổ bay của các chuyến bay quốc tế có lưu trú tại thành phố.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (20, CAST(N'2020-04-27' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/27/corona-hk-coating-reuters-1587979978125120838412-crop-1587980033851243694377.jpg', N'https://tuoitre.vn/xit-phu-nano-khang-khuan-tren-be-mat-90-ngay-made-in-hong-kong-2020042716360155.htm', N'Xịt phủ nano kháng khuẩn trên bề mặt 90 ngày ''made in Hong Kong''', N'TTO - Các nhà khoa học tại ĐH Khoa học và Công nghệ Hong Kong (HKUST) đã nghiên cứu suốt 10 năm để hoàn thiện loại phủ nano kháng virus, giúp bảo vệ bề mặt các vật dụng khỏi vi khuẩn và virus giống virus corona chủng mới trong vòng 90 ngày.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (21, CAST(N'2020-04-27' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/27/logo-ntmayruatay5-15879807272451026376588-crop-1587982110707905680799.jpg', N'https://tuoitre.vn/chiec-may-moi-moc-xin-chao-ban-moi-ban-rua-tay-20200427164418567.htm', N'Chiếc máy ''mời mọc'': ''Xin chào bạn, mời bạn rửa tay''', N'TTO - Nhóm bạn trẻ tại Quận đoàn Tân Bình (TP.HCM) đã sáng chế thành công máy rửa tay tự động có thể phát lời chào và nhắc nhở rửa tay khi có người đến gần, nhờ bộ phận cảm biến từ xa rất tiện ích.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (22, CAST(N'2020-04-27' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/26/vaccine-covid-15879190211261935338157-crop-1587919038133531394628.jpg', N'https://tuoitre.vn/vacxin-covid-19-con-nguoi-dang-dat-cuoc-qua-rui-ro-20200426231127996.htm', N'Vắcxin COVID-19: Con người đang đặt cược quá rủi ro?', N'TTO - Cuộc đua chế tạo vắcxin COVID-19 đang nóng hơn bao giờ hết với sự tham gia của các tổ chức và chính phủ giàu nhất hành tinh. Thành công là một lợi thế không đo đếm nổi nhưng rủi ro thất bại vô cùng lớn.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (23, CAST(N'2020-04-26' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/26/phong-chong-corona-15878590613631765922473-crop-1587859068214901085734.jpg', N'https://tuoitre.vn/noi-gian-cach-van-can-nho-5-chuyen-nay-20200423190843485.htm', N'Nới giãn cách, vẫn cần nhớ 5 chuyện này', N'TTO - Ban chỉ đạo quốc gia phòng chống dịch COVID-19 tiếp tục khuyến cáo người dân chỉ ra ngoài khi thực sự cần thiết, giữ khoảng cách với người khác 2m, thường xuyên đeo khẩu trang và rửa tay... ngay cả khi đã nới lỏng giãn cách xã hội.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (24, CAST(N'2020-04-26' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/15/xet-nghiem-corona5-15869337311571814495983-crop-1587858147226173935796.jpg', N'https://tuoitre.vn/bo-kit-xet-nghiem-covid-19-viet-nam-san-xuat-dang-cho-duoc-who-cong-nhan-20200426063419839.htm', N'Bộ kit xét nghiệm COVID-19 Việt Nam sản xuất đang chờ được WHO công nhận', N'TTO - Bộ kit xét nghiệm COVID-19 do Việt Nam sản xuất đang ở vòng thứ 5 trong quy trình kiểm nghiệm và đánh giá chất lượng, chờ WHO công nhận đạt tiêu chuẩn của tổ chức này.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (25, CAST(N'2020-04-25' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/25/thu-vien-1587807230121507026110-crop-15878074024901505928191.jpg', N'https://tuoitre.vn/thu-vien-phong-doc-sach-o-tp-hcm-phai-dam-bao-gian-cach-1-met-tro-len-20200425163708652.htm', N'Thư viện, phòng đọc sách ở TP.HCM phải đảm bảo giãn cách 1 mét trở lên', N'TTO - Bộ tiêu chí đánh giá an toàn phòng chống dịch COVID-19 yêu cầu ghế ngồi cho khách đến thư viện, phòng đọc phải đảm bảo khoảng cách 1 mét trở lên. Khách phải đeo khẩu trang lúc đọc.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (26, CAST(N'2020-04-25' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/25/may-tho-nasa-158778127714319613112-crop-15877813329131885924225.jpg', N'https://tuoitre.vn/nasa-che-tao-may-tho-chi-trong-37-ngay-20200425092216358.htm', N'NASA chế tạo máy thở chỉ trong 37 ngày', N'TTO - Nhóm nghiên cứu tin tưởng máy thở VITAL - được chế tạo nhanh hơn và sử dụng ít bộ phận hơn máy thở truyền thống - sẽ hỗ trợ an toàn cho bệnh nhân mắc COVID-19 cả ở Mỹ và trên toàn thế giới.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (27, CAST(N'2020-04-24' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/24/vaccine-covid-reuters-15876895291941264339761-crop-1587689540370713817841.jpg', N'https://tuoitre.vn/anh-vua-thu-nghiem-vua-san-xuat-1-trieu-lieu-vacxin-covid-19-20200424075637954.htm', N'Anh vừa thử nghiệm vừa sản xuất 1 triệu liều vắcxin COVID-19', N'TTO - Giới chức y tế Anh cho biết vắcxin phòng bệnh COVID-19 do Đại học Oxford nghiên cứu, phát triển đã bắt đầu được thử nghiệm trên người từ ngày 23-4.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (28, CAST(N'2020-04-23' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/23/tphcm-1587648385388881482144-crop-15876487101231662167476.jpg', N'https://tuoitre.vn/tp-hcm-nhung-dieu-duoc-lam-va-khong-duoc-lam-tu-23-4-20200422194802658.htm', N'TP.HCM: Những điều được làm và không được làm từ 23-4', N'TTO - TP.HCM tiếp tục tạm dừng các hoạt động tập trung trên 20 người, cơ sở làm đẹp, phẫu thuật thẩm mỹ, spa, sân khấu, rạp phim... Người dân tiếp tục đeo khẩu trang nơi làm việc và nơi công cộng để phòng COVID-19.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (29, CAST(N'2020-04-23' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/23/nhan-vien-y-te-o-israel-1587619484357709060288-crop-1587619616623582776682.jpg', N'https://tuoitre.vn/israel-bien-nuoc-may-thanh-chat-sat-khuan-chong-virus-corona-20200423122820534.htm', N'Israel biến nước máy thành chất sát khuẩn chống virus corona', N'TTO - Các nhà nghiên cứu tại Đại học Ben Gurion (BGU), miền nam Israel, đã phát triển công nghệ tiên tiến giúp biến nước máy thành chất sát khuẩn chống lại virus corona chủng mới.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (30, CAST(N'2020-04-23' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/23/hinh-san-ga-23-4-1587608185003733311009-crop-1587608251431943990179.jpg', N'https://tuoitre.vn/tp-hcm-ngung-lay-mau-xet-nghiem-sang-loc-covid-19-tai-san-bay-nha-ga-20200423092031365.htm', N'TP.HCM ngưng lấy mẫu xét nghiệm sàng lọc COVID-19 tại sân bay, nhà ga', N'TTO - Trung tâm Kiểm soát bệnh tật TP.HCM cho biết từ ngày 23-4, TP.HCM ngưng lấy mẫu xét nghiệm sàng lọc COVID-19 tại sân bay, nhà ga.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (31, CAST(N'2020-04-23' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/22/httpsspecials-imagesforbesimgcomimageserve5e9dd5c48c2caa0006e6f73a0x0-1587536759954214187729-crop-15875368877391057198528.jpg', N'https://tuoitre.vn/thiet-ke-moi-han-che-lay-nhiem-virus-tren-may-bay-2020042213285441.htm', N'Thiết kế mới hạn chế lây nhiễm virus trên máy bay', N'TTO - Hãng bay nổi tiếng Avio Interiors (Ý) vừa công bố ý tưởng có thể sẽ trở thành ‘bước ngoặt’ cho ngành hàng không trong tương lai: các khung ngăn virus lây trên máy bay.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (32, CAST(N'2020-04-23' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/23/phong-xet-nghiem-o-dortmund-duc-anh-thx-ttx-15875987603252089005285-crop-15875987977681766823067.jpg', N'https://tuoitre.vn/duc-lan-dau-cho-thu-nghiem-vacxin-phong-corona-tren-nguoi-20200423064143408.htm', N'Đức lần đầu cho thử nghiệm văcxin phòng corona trên người', N'TTO - Văcxin do Công ty công nghệ BioNTech phát triển, được đánh giá là có tiềm năng ngừa được bệnh COVID-19. Đây là văcxin đầu tiên tại Đức và là văcxin thứ 4 trên thế giới được cấp phép thử nghiệm trên người.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (33, CAST(N'2020-04-20' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/20/nhan-vien-ga-sai-gon-q3-tphcm-trong-mot-buoi-khai-bao-y-te-cho-hanh-khach-anh-duyen-phan-15873828126251119137973-crop-1587382844182456471987.jpg', N'https://tuoitre.vn/tp-hcm-kien-nghi-duoc-chuyen-tu-nhom-nguy-co-cao-xuong-nhom-nguy-co-2020042018312138.htm', N'TP.HCM kiến nghị được chuyển từ nhóm nguy cơ cao xuống nhóm nguy cơ', N'TTO - TP.HCM kiến nghị với Thủ tướng đánh giá, phân loại thành phố từ nhóm nguy cơ cao giảm xuống nhóm nguy cơ với dịch bệnh COVID-19 từ sau ngày 22-4.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (34, CAST(N'2020-04-20' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/20/di-tau-15873779221471904078213-crop-15873814119492125900090.jpg', N'https://tuoitre.vn/thu-tuong-nguyen-xuan-phuc-can-noi-long-mot-buoc-nhung-van-phai-kiem-soat-dung-muc-20200420182047706.htm', N'Thủ tướng Nguyễn Xuân Phúc: Cần nới lỏng một bước, nhưng vẫn phải kiểm soát đúng mức', N'TTO - Tại cuộc họp chiều 20-4, Thủ tướng Nguyễn Xuân Phúc kết luận tình hình có nhiều tiến triển tốt, cần phải nới lỏng một bước nhưng vẫn phải kiểm soát đúng mức, tránh tư tưởng chủ quan, coi thường để dịch bệnh quay lại.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (35, CAST(N'2020-04-20' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/20/thanh-hoa-chiec-may-rua-tay-sat-khuan-tu-dong-vua-duoc-truong-trung-cap-nghe-nga-son-che-tao-1-3read-only-1587348222573971705237-crop-15873482569361446103338.jpg', N'https://tuoitre.vn/truong-nghe-che-tao-may-rua-tay-sat-khuan-tu-dong-20200420090437741.htm', N'Trường nghề chế tạo máy rửa tay sát khuẩn tự động', N'TTO - Trường trung cấp nghề huyện Nga Sơn (Thanh Hóa) vừa chế tạo thành công chiếc máy rửa tay sát khuẩn tự động để tặng các cơ quan, đơn vị trên địa bàn huyện, góp phần phòng chống dịch bệnh COVID-19.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (36, CAST(N'2020-04-20' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/20/anh01-2-3read-only-15873480063881224465751-crop-15873480647751768602251.jpg', N'https://tuoitre.vn/bung-no-robot-chong-dich-covid-19-20200420090125689.htm', N'Bùng nổ robot chống dịch COVID-19', N'TTO - Hạn chế tiếp xúc xã hội là một trong những yêu cầu hàng đầu mùa dịch COVID-19. Chính vì thế, hàng loạt sáng kiến công nghệ và robot mới đã ra đời, thay thế những cái chạm mặt giữa người với người, đặc biệt trong lĩnh vực y tế.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (37, CAST(N'2020-04-20' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/20/gao-3-15873526925511476422072-crop-1587352882587572670917.jpg', N'https://tuoitre.vn/atm-gao-se-giup-nguoi-kho-khan-da-nang-suot-2-thang-20200420102629701.htm', N'‘ATM gạo’ sẽ giúp người khó khăn Đà Nẵng suốt 2 tháng', N'TTO - Chương trình "Hạt gạo yêu thương" tại Đà Nẵng sẽ hoạt động liên tục trong vòng 2 tháng tới để đảm bảo gạo sẽ chảy tới túi người khó khăn bị ảnh hưởng do dịch COVID-19.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (38, CAST(N'2020-04-20' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/20/logo-xet-nghiem-nhanh-covid-cho-nga-tu-sonam-tran3-1587269552341542250829-1587353416419117225568-crop-15873534399761320344258.jpg', N'https://tuoitre.vn/viet-nam-co-the-xet-nghiem-covid-19-duoc-13-000-mau-moi-ngay-20200420103203994.htm', N'Việt Nam có thể xét nghiệm COVID-19 được 13.000 mẫu mỗi ngày', N'TTO - Thông tin từ Ban Chỉ đạo Quốc gia phòng chống dịch COVID-19 tại cuộc họp diễn ra sáng nay 20-4 cho biết hiện Việt Nam cơ bản đáp ứng được nhu cầu xét nghiệm khẳng định COVID-19.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (39, CAST(N'2020-04-20' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/20/duc-gian-cach-xa-hoi-6read-only-15873440968521724014515-crop-15873441344291236136426.jpg', N'https://tuoitre.vn/cac-nuoc-co-ti-le-benh-nhan-covid-19-binh-phuc-cao-do-dau-20200420075550597.htm', N'Các nước có tỉ lệ bệnh nhân COVID-19 bình phục cao do đâu?', N'TTO - Thực tế kiểm soát dịch và điều trị bệnh thành công tại một số nước cho thấy những điểm chung phổ biến: thời điểm sớm và tốc độ triển khai nhanh các biện pháp chống dịch. Cùng với đó, góp phần không nhỏ là hạ tầng y tế và năng lực điều trị.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (40, CAST(N'2020-04-20' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/20/nqh06934-15873492794301080012913-crop-1587349389527343525826.jpg', N'https://tuoitre.vn/thu-tuong-luu-y-ha-noi-xu-ly-4-ton-tai-keo-dai-20200420092421675.htm', N'Thủ tướng lưu ý Hà Nội xử lý 4 tồn tại kéo dài', N'TTO - Sáng nay 20-4, Thủ tướng Nguyễn Xuân Phúc đã có cuộc làm việc với Ban thường vụ Thành ủy TP Hà Nội về tình hình phát triển kinh tế - xã hội 3 tháng đầu năm và nhiệm vụ trọng tâm của 9 tháng cuối năm.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (41, CAST(N'2020-04-20' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/20/img1416-4read-only-15873431827081697417482-crop-15873432094831083328213.jpg', N'https://tuoitre.vn/co-hoi-khong-che-dich-covid-19-20200420074259735.htm', N'Cơ hội khống chế dịch COVID-19', N'TTO - Hôm qua 19-4, có thêm 2 bệnh nhân COVID-19 điều trị tại Bạc Liêu được công bố khỏi bệnh và tính đến 6h sáng 20-4 là 4 ngày liên tiếp Việt Nam không có thêm bệnh nhân COVID-19 mới.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (42, CAST(N'2020-04-20' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/20/dai-loan-20-4-5read-only-15873463714531944184590-crop-1587346397073406183149.jpg', N'https://tuoitre.vn/dai-loan-phat-khau-trang-mien-phi-cho-dan-nho-tu-luc-san-xuat-20200420083340448.htm', N'Đài Loan phát khẩu trang miễn phí cho dân nhờ tự lực sản xuất', N'TTO - Vào đầu tháng 2-2020, toàn bộ Đài Loan đã thiếu hụt khẩu trang nghiêm trọng. Không ít phòng mạch phải đóng cửa vì không mua được khẩu trang.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (43, CAST(N'2020-04-20' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/19/si-tout-le-monde-porte-un-masque-en-tissu-getty-images-15873104988341232322807-crop-15873105086301848864540.jpg', N'https://tuoitre.vn/deo-khau-trang-vai-cung-hieu-qua-nhu-khau-trang-y-te-20200419224601904.htm', N'Đeo khẩu trang vải cũng hiệu quả như khẩu trang y tế?', N'TTO - Hiện nay có rất nhiều trang mạng giới thiệu và hướng dẫn cách may khẩu trang khá đơn giản, như tại Pháp có trang của Afnor (Hiệp hội chuẩn hóa Pháp) đã được tải về hơn 500.000 lượt.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (44, CAST(N'2020-04-19' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/3/xuat-vien-2-158547624768667957108-crop-15854776763021571355749-15858727216811504347800-crop-1587309922585957664187.jpg', N'https://tuoitre.vn/bao-nga-viet-nam-la-vi-du-thanh-cong-cua-the-gioi-trong-chong-dich-covid-19-20200419222818185.htm', N'Báo Nga: Việt Nam là ví dụ thành công của thế giới trong chống dịch COVID-19', N'TTO - Trang tin "Mùa Xuân nước Nga" (Rusvesna) ngày 19-4 đăng bài viết có tiêu đề "Phép màu Việt Nam - cách một dân tộc dũng cảm đánh bại đại dịch khủng khiếp"')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (45, CAST(N'2020-04-19' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/19/hinh-19-4-dich-benh-15873051216031051101790-crop-15873051311951739051593.jpg', N'https://tuoitre.vn/go-bo-gian-cach-dich-covid-19-co-the-vao-giai-doan-3-tp-hcm-se-lam-gi-20200419205921835.htm', N'Gỡ bỏ giãn cách, dịch COVID-19 có thể vào giai đoạn 3, TP.HCM sẽ làm gì?', N'TTO - Theo Trung tâm Kiểm soát dịch bệnh TP.HCM, nguy cơ dịch bệnh COVID-19 vẫn đang tiềm ẩn. Thành công trước mắt là tín hiệu đáng mừng, nhưng cuộc chiến với COVID-19 vẫn còn nhiều gian nan.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (46, CAST(N'2020-04-19' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/18/xet-nghiem-nhanh-covid-19nam-tran13-15872199410081644189138-crop-1587303631788545059263.jpg', N'https://tuoitre.vn/viet-nam-lien-tuc-khong-co-ca-covid-19-moi-nhung-nguoi-dan-khong-nen-chu-quan-20200419202628338.htm', N'Việt Nam liên tục không có ca COVID-19 mới, nhưng người dân không nên chủ quan', N'TTO - Ban Chỉ đạo quốc gia phòng, chống COVID-19 khuyến cáo người dân tiếp tục thực hiện nghiêm các chỉ đạo về phòng, chống dịch và hướng dẫn của ngành y tế, không nên chủ quan, lơ là.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (47, CAST(N'2020-04-19' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/19/0-1587303672729935801186-crop-1587303701168913389449.jpg', N'https://tuoitre.vn/bao-duc-viet-ve-quy-trinh-nghiem-ngat-cua-viet-nam-trong-phong-chong-covid-19-20200419204117851.htm', N'Báo Đức viết về ''quy trình nghiêm ngặt'' của Việt Nam trong phòng chống COVID-19', N'TTO - Nhật báo Junge Welt (Thế giới trẻ) của Đức ngày 18-4 có bài viết lý giải việc Việt Nam kiểm soát thành công sự lây lan của dịch viêm đường hô hấp cấp COVID-19.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (48, CAST(N'2020-04-19' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/19/xet-nghiem-nhanh-covid-cho-nga-tu-sonam-tran24-1587267248384823811809-crop-15872827569541847110688.jpg', N'https://tuoitre.vn/tieu-thuong-san-sang-nghi-lam-de-duoc-xet-nghiem-nhanh-covid-19-20200419111342297.htm', N'Tiểu thương sẵn sàng nghỉ làm để được xét nghiệm nhanh COVID-19', N'TTO - Nhiều tiểu thương tại các chợ đầu mối Hà Nội cho biết họ rất phấn khởi vì được chính quyền quan tâm, xét nghiệm nhanh COVID-19 để sớm yên tâm, ổn định buôn bán.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (49, CAST(N'2020-04-18' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/16/h19-15870226309022009414242-crop-1587206459161496938146.jpg', N'https://tuoitre.vn/kien-truc-su-ngap-don-hang-ve-tranh-lam-qua-tang-cho-khu-cach-ly-20200416145527375.htm', N'Kiến trúc sư ngập đơn hàng vẽ tranh làm quà tặng cho khu cách ly', N'TTO -  Nhận nhiều "đơn đặt hàng", Tăng Quang không còn được chung vui với các bạn chơi cờ tỉ phú, mà hối hả vẽ tranh. Anh "sống" trên giường, vẽ ngày vẽ đêm, đến bữa thì xuống ăn và cuối cùng vẽ vẫn không kịp.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (50, CAST(N'2020-04-18' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/18/san-golf-xuanthanh-hatinhzmjl-1587203788719417768002-crop-1587203842994964756919.jpg', N'https://tuoitre.vn/mo-cua-don-khach-cong-ty-san-golf-bi-phat-15-trieu-dong-20200418165744906.htm', N'Mở cửa đón khách, công ty sân golf bị phạt 15 triệu đồng', N'TTO - Vi phạm về chỉ thị phòng chống dịch COVID-19, Công ty cổ phần golf Xuân Thành bị xử phạt 15 triệu đồng.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (51, CAST(N'2020-04-17' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/17/unnamed-15852973789861263149350-15871188933651108987681-crop-1587119117118439891525.jpg', N'https://tuoitre.vn/pho-thu-tuong-vu-duc-dam-nhan-dinh-dich-benh-con-keo-dai-20200417172451062.htm', N'Phó thủ tướng Vũ Đức Đam nhận định dịch bệnh còn kéo dài', N'TTO - Chiều 17-4, tại cuộc họp trực tuyến giữa Chính phủ và các địa phương, Phó thủ tướng Vũ Đức Đam kêu gọi các tổ chức, cá nhân điều chỉnh những thói quen xấu, tạo ra những thay đổi tích cực để sống chung với dịch COVID-19.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (52, CAST(N'2020-04-17' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/16/h9-15870217064521267358212-crop-15871177921731292203584.jpg', N'https://tuoitre.vn/travel-blogger-to-chuc-du-lich-tai-nha-trong-thoi-gian-cach-ly-20200416143427314.htm', N'Travel blogger tổ chức du lịch… tại nhà trong thời gian cách ly', N'TTO - Nghỉ dịch, cuồng chân, hai chàng trai của blog du lịch Wanderful Dreamers tổ chức bộ ảnh chu du tại nhiều nước ngay tại nhà.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (53, CAST(N'2020-04-17' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/17/0-1587080861355164383247-crop-1587080870935237376046.jpg', N'https://tuoitre.vn/thiet-bi-nho-dot-pha-bao-ve-bac-si-nam-phi-dang-chua-tri-benh-nhan-covid-19-20200417062028764.htm', N'Thiết bị nhỏ đột phá bảo vệ bác sĩ Nam Phi đang chữa trị bệnh nhân COVID-19', N'TTO - Các nhà khoa học Nam Phi vừa sáng chế một thiết bị cách ly nhỏ gọn mang tính đột phá giúp các bác sĩ tuyến đầu giảm nguy cơ bị lây nhiễm virus SARS-CoV-2 trong khi tiến hành chăm sóc và chữa trị bệnh nhân COVID-19 ngay tại giường bệnh.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (54, CAST(N'2020-04-16' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/16/corona-robot-delivery-afp-15870093654161631850675-crop-15870099972101803903536.jpg', N'https://tuoitre.vn/robot-may-bay-khong-nguoi-lai-len-ngoi-mua-dich-20200416110430785.htm', N'Robot, máy bay không người lái ''lên ngôi'' mùa dịch', N'TTO - Nhu cầu sử dụng robot giao hàng đang gia tăng khi nhiều người ngại ra đường vì dịch COVID-19 trong khi nhiều cửa hàng tạp hóa quá nhỏ không đáp ứng được yêu cầu giãn cách xã hội để mở cửa.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (55, CAST(N'2020-04-16' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/16/thiet-bi-phat-hien-virus-tu-xa-15869947605791490722228-crop-1586994775274361121619.jpg', N'https://tuoitre.vn/iran-cong-bo-thiet-bi-co-the-phat-hien-nguoi-nhiem-sars-cov-2-tu-xa-20200415213847769.htm', N'Iran công bố thiết bị có thể phát hiện người nhiễm SARS-CoV-2 từ xa', N'TTO - Các nhà khoa học cho biết thiết bị có thể phát hiện người nhiễm virus trong vòng 5 giây với việc tạo ra một từ trường tại khu vực có bán kính 100m.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (56, CAST(N'2020-04-15' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/15/hinh-xet-nghiem-15-4-15869201716741957206060-crop-15869201941351703070407.jpg', N'https://tuoitre.vn/tp-hcm-lay-gan-7-000-mau-xet-nghiem-phat-hien-1-duong-tinh-20200415101548384.htm', N'TP.HCM lấy gần 7.000 mẫu xét nghiệm, phát hiện 1 dương tính', N'TTO - Tính đến nay TP.HCM đã lấy 6.643 mẫu xét nghiệm nhưng chỉ có 1 trường hợp xác định dương tính sau khi xuất viện là bệnh nhân 22, các trường hợp còn lại kết quả âm tính.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (57, CAST(N'2020-04-15' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/15/xet-nghiem-nuoc-bot-2-1586911852115749874234-crop-1586911874565310432963.jpg', N'https://tuoitre.vn/my-cho-phep-xet-nghiem-virus-corona-qua-nuoc-bot-do-lay-nhiem-cho-y-bac-si-20200415075528704.htm', N'Mỹ cho phép xét nghiệm virus corona qua nước bọt, đỡ lây nhiễm cho y bác sĩ', N'TTO - Cục Quản lý thực phẩm và dược phẩm Mỹ (FDA) đã cho phép tiến hành xét nghiệm nước bọt để chẩn đoán nhiễm virus SARS-CoV-2 hay không trong những trường hợp khẩn cấp.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (58, CAST(N'2020-04-14' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/14/20200414-uong-bia-1586855976610494159657-crop-15868559878802131874624.jpg', N'https://tuoitre.vn/4-lanh-dao-xa-an-com-trua-uong-bia-giua-dich-covid-19-20200414162223697.htm', N'4 lãnh đạo xã ''ăn cơm trưa, uống bia'' giữa dịch COVID-19', N'TTO - 3 phó chủ tịch HĐND, UBND, Ủy ban MTTQ VN và trưởng Công an xã Cà Lúi (huyện Sơn Hòa, tỉnh Phú Yên) tổ chức ăn trưa, uống bia ngay trong ngày đầu tiên thực hiện chỉ thị 16 của Thủ tướng về phòng chống dịch COVID-19.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (59, CAST(N'2020-04-14' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/14/img9636-158685522397772195725-crop-1586855457098461559742.jpeg', N'https://tuoitre.vn/het-cach-ly-xa-hoi-toi-se-di-cat-toc-chay-xe-ngam-pho-20200414135702183.htm', N'Hết cách ly xã hội ''tôi sẽ đi cắt tóc, chạy xe ngắm phố''', N'TTO - Sau gần 15 ngày thực hiện chỉ thị 16 của Chính phủ, phố xá Hà Nội trở nên nhộn nhịp hơn. Mọi người đều có những dự định sẽ làm trong ngày đầu hết giãn cách xã hộị. Người dân nói sẽ vẫn đồng lòng nếu Hà Nội tiếp tục cách ly.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (60, CAST(N'2020-04-14' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/14/dscf9638-1586852564119911263203-crop-1586853044355887307055.jpg', N'https://tuoitre.vn/cho-pho-co-ha-noi-ke-vach-cach-2-met-moi-ban-hang-20200414153417034.htm', N'Chợ phố cổ Hà Nội kẻ vạch cách 2 mét mới bán hàng', N'TTO - Phố Yên Thái (Hàng Gai, Q.Hoàn Kiếm, Hà Nội) tuy không phải chợ dân sinh vẫn thường tập trung rất đông người dân mua bán thực phẩm hàng ngày. Để siết chặt giãn cách xã hội, tiểu thương tại đây đã thống nhất kẻ vạch ngăn cách đứng mua hàng.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (61, CAST(N'2020-04-14' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/14/mot-canh-sat-giao-thong-indonesia-doi-mu-bao-ho-co-hinh-virus-corona-de-nhac-nho-nguoi-dan-nho-giu-gian-cach-cong-dong-anh-9newscomau-1586853137824217202592-crop-1586853501464915635843.jpg', N'https://tuoitre.vn/dan-tron-cach-ly-xa-hoi-indonesia-trung-quan-tai-o-nha-hay-o-trong-hom-20200414151757257.htm', N'Dân trốn cách ly xã hội, Indonesia trưng quan tài ''Ở nhà hay ở trong hòm''', N'TTO - Trưng quan tài với dòng chữ ''Ở nhà hay ở trong hòm'', cảnh sát đội mũ bảo hộ hình virus corona, lập ''biệt đội ma''... nhà chức trách Indonesia đã áp dụng nhiều cách khác nhau để người dân tuân thủ cách ly xã hội.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (62, CAST(N'2020-04-14' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/14/y-bac-si-benh-vien-benh-nhiet-doi-15868436226561320943822-crop-1586843630189238826963.jpg', N'https://tuoitre.vn/y-bac-si-tuyen-dau-chong-dich-bao-kho-khan-khong-bang-con-hoi-khi-nao-me-ve-20200414100407421.htm', N'Y bác sĩ tuyến đầu chống dịch: ''Bao khó khăn không bằng con hỏi khi nào mẹ về''', N'TTO - ''Khó khăn nhất là khi nói chuyện với con, con hỏi sao mẹ đi lâu thế, bao giờ mẹ về'', ''Chưa bao giờ được ngủ một giấc quá 3-4 tiếng, cho dù trong giờ nghỉ, họ vẫn cứ quanh quẩn bên chỗ khu bệnh nhân''...')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (63, CAST(N'2020-04-14' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/14/thanh-hoa-nu-benh-nhan-ntt-khi-dieu-tri-15806970135071920175014-1580697753723633529457-1586841358356230496632-crop-1586841370375356959709.png', N'https://tuoitre.vn/thiet-bi-y-te-sau-khi-het-da-chien-se-dua-ve-cac-co-so-y-te-20200414122419787.htm', N'Thiết bị y tế sau khi hết ''dã chiến'' sẽ đưa về các cơ sở y tế', N'TTO - Sáng 14-4, cuộc họp tại UBMTTQ VN TP.HCM vấn đề phân bổ kinh phí phòng chống dịch COVID-19 cũng như sử dụng trang thiết bị y tế tại các bệnh viện dã chiến sau khi hết ‘dã chiến’ đã được đặt ra bàn thảo.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (64, CAST(N'2020-04-14' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/14/ubnd-tphcm-1586835474572600752688-crop-15868355736801360188795.jpg', N'https://tuoitre.vn/tang-cuong-phong-dich-covid-19-trong-4-ngay-nghi-le-2020041410405849.htm', N'Tăng cường phòng dịch COVID-19 trong 4 ngày nghỉ lễ', N'TTO - Trong 4 ngày nghỉ lễ 30-4 và Quốc tế lao động năm nay, UBND TP.HCM cho rằng đây là thời gian các địa phương phải tăng cường giám sát, quản lý phòng dịch COVID-19, tránh tâm lý lơ là chủ quan.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (65, CAST(N'2020-04-14' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/13/kiem-dinh-xe-nan-15867521371011747135153-crop-1586834275783283557268.jpg', N'https://tuoitre.vn/so-dich-covid-19-nhieu-oto-se-qua-han-kiem-dinh-20200414102538557.htm', N'Sợ dịch COVID-19, nhiều ôtô sẽ quá hạn kiểm định', N'TTO - Vì sợ dịch COVID-19, nhiều người không đưa xe đi kiểm định, có nguy cơ bị xử phạt khi tham gia giao thông.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (66, CAST(N'2020-04-13' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/12/obesity-15866966617681927662430-crop-15866966931931410528878.jpg', N'https://tuoitre.vn/vi-sao-nam-gioi-beo-phi-bi-nhiem-covid-19-nang-hon-20200412200947951.htm', N'Vì sao nam giới béo phì bị nhiễm COVID-19 nặng hơn?', N'TTO - Những số liệu thống chính thức tại Anh về bệnh nhân COVID-19 bị đưa vào điều trị tích cực cho thấy thực tế đáng ngại: 73% là nam và 73,4% là người thừa cân hoặc đến mức béo phì.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (67, CAST(N'2020-04-13' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/3/21/img5917-15847725907731969006486-crop-1586770164037138256161.jpg', N'https://tuoitre.vn/tp-hcm-phat-hien-benh-nhan-covid-19-khoi-benh-nhung-duong-tinh-tro-lai-20200413163403097.htm', N'TP.HCM phát hiện bệnh nhân COVID-19 khỏi bệnh nhưng dương tính trở lại', N'TTO - Tại cuộc họp Chính phủ trực tuyến chiều 13-4, Chủ tịch UBND TP.HCM Nguyễn Thành Phong cho biết TP.HCM có nguy cơ lây nhiễm cộng đồng từ những trường hợp điều trị âm tính rồi dương tính như bệnh nhân 22.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (68, CAST(N'2020-04-13' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/13/anho1-2read-only-copy-1586747390086944847303-crop-1586747496407178239951.jpg', N'https://tuoitre.vn/dich-covid-19-khi-nao-thi-ielts-2020041310130983.htm', N'Dịch COVID-19, khi nào thi IELTS?', N'TTO - Việt Nam là một trong những nước có lượng thí sinh thi IELTS hằng năm lớn nhất trong khu vực. Trong bối cảnh dịch COVID-19 diễn biến phức tạp, khi nào kỳ thi này trở lại?')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (69, CAST(N'2020-04-13' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/13/xet-nghiem-afp-1586752879541688858466-crop-15867528857681162196677.jpg', N'https://tuoitre.vn/tp-hcm-lay-mau-xet-nghiem-benh-nhan-xuat-vien-sau-dieu-tri-covid-19-20200413104600051.htm', N'TP.HCM lấy mẫu xét nghiệm bệnh nhân xuất viện sau điều trị COVID-19', N'TTO - Trước thực tế có những ca nhiễm COVID-19 khỏi bệnh được xuất viện nhưng sau đó dương tính lại, TP.HCM đã tiến hành theo dõi, lấy mẫu xét nghiệm cho cả bệnh nhân xuất viện sau điều trị COVID-19.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (70, CAST(N'2020-04-12' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/12/cach-ly-15866948264501562221637-crop-15866949081861533268054.jpg', N'https://tuoitre.vn/dang-tim-1-nguoi-colombia-tron-khoi-co-so-cach-ly-tap-trung-20200412193913294.htm', N'Đang tìm 1 người Colombia trốn khỏi cơ sở cách ly tập trung', N'TTO - Một khách du lịch người Colombia đã bất ngờ trốn khỏi cơ sở cách ly tập trung ở Quảng Nam và đi mất hút, lực lượng chức năng đang tích cực tìm kiếm.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (71, CAST(N'2020-04-12' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/12/tai-kich-hoat-1586694901615634303837-crop-1586694913370125032181.jpg', N'https://tuoitre.vn/con-nguoi-co-the-bi-nhiem-virus-corona-2-lan-hay-khong-20200412195105716.htm', N'Con người có thể bị nhiễm virus corona 2 lần hay không?', N'TTO - Virus SARS-CoV-2 có thể hoạt động trở lại nơi bệnh nhân COVID-19 đã hồi phục hay không? Nhiều giả thiết giải thích vấn đề này sau sự kiện 111 bệnh nhân Hàn Quốc dương tính trở lại.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (72, CAST(N'2020-04-12' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/12/hoangxuanvinhtutap-2read-only-15866679489821256799421-crop-15866679638621688309810.jpg', N'https://tuoitre.vn/tap-o-nha-tra-bai-online-20200412120835504.htm', N'Tập ở nhà, trả bài online', N'TTO - Để có thể duy trì phong độ, các VĐV phải tập luyện theo giáo án được HLV giao và trả bài... online.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (73, CAST(N'2020-04-12' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/12/img2866-1586664602282917812567-crop-1586664615875247147083.jpg', N'https://tuoitre.vn/bo-y-te-thong-bao-tim-nguoi-lien-quan-benh-nhan-covid-19-o-cho-hoa-me-linh-2020041211125352.htm', N'Bộ Y tế thông báo tìm người liên quan bệnh nhân COVID-19 ở chợ hoa Mê Linh', N'TTO - Bộ Y tế vừa phát đi thông báo khẩn số 13, tìm người từng đi đến chợ hoa Mê Linh từ ngày 20-3 đến nay để tư vấn sức khỏe, sau khi ghi nhận bệnh nhân COVID-19 có liên quan chợ hoa này.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (74, CAST(N'2020-04-12' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/12/dpgiancachxahoi-3-2read-only-15866527607101088851040-crop-1586652862066948422991.jpg', N'https://tuoitre.vn/giu-vung-phong-tuyen-cach-ly-xa-hoi-20200412075633329.htm', N'Giữ vững ''phòng tuyến'' cách ly xã hội', N'TTO - Cùng với cả nước, nhiều bạn trẻ hơn 10 ngày qua đã nghiêm túc thực hiện việc cách ly xã hội và quyết tâm thực hiện đến cùng để góp một tay phòng ngừa dịch bệnh.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (75, CAST(N'2020-04-12' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/12/untitled-1-15866571559382107827627-crop-15866571888771043133282.jpg', N'https://tuoitre.vn/khong-de-ngay-dai-lam-mong-20200412090930978.htm', N'Không để ''ngày dài lắm mộng''', N'TTO - Bỗng dưng cả gia đình ở cùng nhau suốt 24 giờ mỗi ngày, nhiều nhà còn mệt mỏi trong gánh nặng áo cơm nên không tránh khỏi khủng hoảng. Nhưng cũng nhiều cặp đôi mà thời gian trở thành chất keo quý giá để họ dành cho nhau.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (76, CAST(N'2020-04-12' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/12/logo-gao-atm-5-1586575905004754443046-2read-only-15866560449691140695876-crop-1586656070196931643407.jpg', N'https://tuoitre.vn/tu-thien-cung-phai-sang-tao-20200412084902117.htm', N'Từ thiện cũng phải sáng tạo', N'TTO - Ấn tượng với chiếc máy "ATM gạo" của anh Hoàng Tuấn Anh (Q.Tân Phú, TP.HCM) vẫn lan tỏa cả nước mấy ngày qua.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (77, CAST(N'2020-04-12' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/12/quan-dong-cua-2read-only-1586653144095636594470-crop-1586653163399819543064.jpg', N'https://tuoitre.vn/dan-tay-do-quen-dan-voi-cach-ly-xa-hoi-20200412080440596.htm', N'Dân Tây đô quen dần với cách ly xã hội', N'TTO - Sau hơn 10 ngày thực hiện cách ly xã hội theo chỉ thị của Thủ tướng, cuộc sống người dân TP Cần Thơ vốn sôi động nhất đồng bằng cũng dần thích ứng theo hướng bình lặng hơn.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (78, CAST(N'2020-04-11' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/11/apple-1586574272926230451681-crop-1586574415164618401521.png', N'https://tuoitre.vn/apple-va-google-hop-tac-ra-mat-cong-cu-theo-doi-covid-19-20200411094443901.htm', N'Apple và Google hợp tác ra mắt công cụ theo dõi COVID-19', N'TTO - Apple và Google thông báo sẽ hợp tác để cung cấp các công cụ giúp làm chậm sự lây lan của COVID-19, trong đó người dùng sẽ được nhắc nhở nếu họ tiếp xúc gần với người đã nhiễm bệnh.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (79, CAST(N'2020-04-11' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/11/huyet-tuong-anh-2-1586565129817346987686-crop-15865651376911315148413.jpg', N'https://tuoitre.vn/au-my-dung-huyet-tuong-dieu-tri-cho-benh-nhan-covid-19-nang-20200411073749853.htm', N'Âu, Mỹ dùng huyết tương điều trị cho bệnh nhân COVID-19 nặng', N'TTO - Một số nước trên thế giới (trong đó có Việt Nam) đã dùng huyết tương của bệnh nhân COVID-19 đã hết bệnh để điều trị cho bệnh nhân COVID-19 biến chứng nặng. Phương pháp điều trị này được thực hiện như thế nào?')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (80, CAST(N'2020-04-10' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/10/bv-bach-mainam-tran2-15865144346791200057367-crop-1586514569693885544318.jpg', N'https://tuoitre.vn/go-phong-toa-benh-vien-bach-mai-hoat-dong-binh-thuong-tu-12-4-20200410172944039.htm', N'Gỡ phong tỏa, Bệnh viện Bạch Mai hoạt động bình thường từ 12-4', N'TTO - Chiều 10-4, Chủ tịch UBND TP Hà Nội Nguyễn Đức Chung đã đồng ý với đề xuất của quận Đống Đa về gỡ bỏ phong tỏa Bệnh viện Bạch Mai từ 0h ngày 12-4, sau thời gian cách ly 14 ngày.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (81, CAST(N'2020-04-10' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/10/khau-trang-tai-che-3-15865116743621201714836-crop-15865116843881820508970.jpg', N'https://tuoitre.vn/vu-tai-che-khau-trang-o-long-an-tai-che-tu-khau-trang-loi-khong-phai-da-qua-su-dung-20200410164035446.htm', N'Vụ tái chế khẩu trang ở Long An: Tái chế từ khẩu trang lỗi, không phải đã qua sử dụng', N'TTO - Công an tỉnh Long An xác định vụ tái chế khẩu trang số lượng lớn ở Đức Hòa vừa qua, nguyên liệu là những khẩu trang lỗi từ một công ty chuyên sản xuất khẩu trang, không phải từ khẩu trang đã qua sử dụng.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (82, CAST(N'2020-04-10' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/10/cach-ly-thon-ha-loi10-1586507184826782807304-crop-15865072415211449375374.jpg', N'https://tuoitre.vn/5-ca-duong-tinh-covid-19-huyen-me-linh-cach-ly-1-064-nguoi-2020041015284038.htm', N'5 ca dương tính COVID-19, huyện Mê Linh cách ly 1.064 người', N'TTO - Ngoài 4 ca mắc COVID-19 đã được Bộ Y tế công bố, chủ tịch UBND huyện Mê Linh cho biết tại xã Mê Linh đã ghi nhận thêm 1 ca dương tính lần 1 với COVID-19, phải cách ly 1.064 người.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (83, CAST(N'2020-04-10' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/10/nhiet-doi-1586498355970632832847-crop-15864983646692051178298.jpeg', N'https://tuoitre.vn/gan-180-nhan-vien-y-te-benh-vien-bach-mai-duoc-go-bo-cach-ly-kep-20200410130257032.htm', N'Gần 180 nhân viên y tế Bệnh viện Bạch Mai được gỡ bỏ ''cách ly kép''', N'TTO - Sau 23 ngày bị cách ly do COVID-19, hôm nay gần 180 nhân viên y tế của Bệnh viện Bạch Mai được gỡ bỏ cách ly, khoảng 160 người trong số này đã được về nhà.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (84, CAST(N'2020-04-10' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/8/ha-noinam-tran4-15863480196732062803066-crop-1586495888737858050321.jpg', N'https://tuoitre.vn/ha-noi-xem-xet-xu-ly-hinh-su-voi-vi-pham-ve-phong-chong-dich-covid-19-20200410121957177.htm', N'Hà Nội xem xét xử lý hình sự với vi phạm về phòng chống dịch COVID-19', N'TTO - UBND thành phố Hà Nội giao Công an thành phố điều tra, xem xét xử lý hình sự đối với một số hành vi vi phạm có đủ dấu hiệu cấu thành tội phạm hình sự trong phòng chống dịch COVID-19.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (85, CAST(N'2020-04-10' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/10/didier-raoult-anh-2-1586487710967209825025-crop-15864877234441484166603.jpg', N'https://tuoitre.vn/gs-phap-tiet-lo-ket-qua-thu-nghiem-thuoc-sot-ret-cho-hon-1-000-benh-nhan-20200410100006279.htm', N'GS Pháp tiết lộ kết quả thử nghiệm thuốc sốt rét cho hơn 1.000 bệnh nhân', N'TTO - Hôm 9-4, GS Didier Raoult đã tiết lộ với tổng thống Pháp kết quả mới nhất về thử nghiệm kết hợp thuốc trị sốt rét hydroxychloroquine và kháng sinh azithromycin trong điều trị COVID-19. Hiện Thụy Điển đã khuyến cáo không dùng.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (86, CAST(N'2020-04-10' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/10/buongdatnoikhiquan-2read-only-1586481787564981913522-crop-15864818386831691052157.jpg', N'https://tuoitre.vn/tu-noi-lo-nhiem-cheo-den-buong-dat-noi-khi-quan-20200410082625384.htm', N'Từ nỗi lo nhiễm chéo đến ''buồng đặt nội khí quản''', N'TTO - Buồng đặt nội khí quản "made in khoa hồi sức cấp cứu Bệnh viện Chợ Rẫy" ra đời, được đưa vào sử dụng hai tuần nay.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (87, CAST(N'2020-04-08' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/8/vaccine-1586354137818520939858-crop-1586354270552647932830.jpeg', N'https://tuoitre.vn/sap-thu-nghiem-vacxin-phong-benh-covid-19-tren-nguoi-20200408205324858.htm', N'Sắp thử nghiệm văcxin phòng bệnh COVID-19 trên người', N'TTO - Sau khi được thử trên người vào tháng 5, kết quả thử nghiệm về độ an toàn và khả năng tạo miễn dịch của văcxin mới sẽ được công bố trong tháng 7.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (88, CAST(N'2020-04-08' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/8/4331258017805708620640655224184831994232832n-15863351961371101404777-crop-15863352594221599169107.jpg', N'https://tuoitre.vn/tu-tp-hcm-ra-da-nang-xuong-ga-quang-ngai-de-ne-cach-ly-nhung-van-bi-lo-20200408154533983.htm', N'Từ TP.HCM ra Đà Nẵng: Xuống ga Quảng Ngãi để né cách ly nhưng vẫn bị lộ', N'TTO - Từ TP.HCM, nam thanh niên ngụ phường Hòa Khê, quận Thanh Khê mua vé tàu về ga Đà Nẵng nhưng cố tình xuống ga Quảng Ngãi vào ngày 4-4, rồi nhờ người thân đến Quảng Ngãi đón về nhà để trốn cách ly.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (89, CAST(N'2020-04-08' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/8/img9732-1586330485490387242864-crop-15863306218041755222404.jpg', N'https://tuoitre.vn/hai-khu-cach-ly-lon-nhat-tp-hcm-chi-con-hon-200-nguoi-20200408142624424.htm', N'Hai khu cách ly lớn nhất TP.HCM chỉ còn hơn 200 người', N'TTO - Tính đến trưa 8-4, hai khu cách ly lớn nhất TP.HCM là Trung tâm giáo dục quốc phòng và an ninh và ký túc xá ĐHQG TP.HCM chỉ còn hơn 200 người cách ly theo dõi, hàng ngàn người đã được về nhà.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (90, CAST(N'2020-04-08' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/8/ubtvqh-8-4-1586331789215484502496-crop-15863318048401919740290.jpg', N'https://tuoitre.vn/uy-ban-thuong-vu-quoc-hoi-hop-bat-thuong-xem-xet-goi-62-000-ti-ho-tro-20-trieu-nguoi-20200408144709309.htm', N'Ủy ban Thường vụ Quốc hội họp bất thường xem xét gói 62.000 tỉ hỗ trợ 20 triệu người', N'TTO - Tại phiên họp bất thường của Ủy ban Thường vụ Quốc hội, Chủ tịch Nguyễn Thị Kim Ngân yêu cầu không được để xảy ra tình trạng trục lợi chính sách.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (91, CAST(N'2020-04-08' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/8/son-la-1586327217087852945895-crop-1586330389587238708408.jpg', N'https://tuoitre.vn/cha-mat-nguoi-linh-nghen-ngao-thap-huong-tien-biet-cha-tu-don-vi-o-bien-gioi-20200408131354902.htm', N'Cha mất, người lính nghẹn ngào thắp hương tiễn biệt cha từ đơn vị ở biên giới', N'TTO - Cha mất, thiếu úy Bùi Quang Huy đang làm nhiệm vụ trực chốt phòng chống dịch ở biên giới chẳng thể về quê. Đơn vị lập bàn thờ vọng cho anh thắp hương tiễn biệt cha.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (92, CAST(N'2020-04-08' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/8/dpthongnhatphanluong6-15863158111121596626796-crop-1586316724033175351747.jpg', N'https://tuoitre.vn/benh-vien-o-tp-hcm-dung-may-quet-co-the-do-nhiet-do-tu-xa-5m-20200408103429321.htm', N'Bệnh viện ở TP.HCM dùng máy quét có thể đo nhiệt độ từ xa 5m', N'TTO - Máy quét nhiệt độ tự động có thể kiểm tra thân nhiệt cho người đứng cách xa 5m, người nào trên 37,5 độ sẽ được đưa đến phòng khám tiếp tục kiểm tra.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (93, CAST(N'2020-04-08' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/8/thuoc-chloroquine-15863206323252039753606-crop-15863206753021526587715.jpg', N'https://tuoitre.vn/viet-nam-thu-nghiem-chloroquine-dieu-tri-covid-19-20200408113835151.htm', N'Việt Nam thử nghiệm chloroquine điều trị COVID-19', N'TTO - Bộ Y tế giao Bệnh viện Bệnh nhiệt đới TP.HCM chủ trì nghiên cứu đánh giá tính an toàn và hiệu quả của việc dùng thuốc chlroquine điều trị COVID-19.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (94, CAST(N'2020-04-08' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/8/photo-1-1586319865876999498786-crop-15863209368571231938393.jpg', N'https://tuoitre.vn/bo-truong-mai-tien-dung-chua-the-noi-truoc-keo-dai-thoi-gian-cach-ly-xa-hoi-hay-khong-20200408114206952.htm', N'Bộ trưởng Mai Tiến Dũng: Chưa thể nói trước kéo dài thời gian cách ly xã hội hay không', N'TTO - Đến ngày 15-4 nếu còn phát sinh ổ dịch thì không thể dừng thực hiện việc cách ly xã hội, phải tùy tình hình để đưa ra phương án ứng phó nên chưa thể nói trước.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (95, CAST(N'2020-04-08' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/8/taptheducnghean2-158631967710959530990-crop-15863200060681861981584.jpg', N'https://tuoitre.vn/vinh-lap-cac-chot-ngan-nguoi-ra-noi-cong-cong-tap-the-duc-2020040811270388.htm', N'Vinh lập các chốt ngăn người ra nơi công cộng tập thể dục', N'TTO - Dù chính quyền nhiều phường, xã ở TP Vinh, Nghệ An iên tục tuyên truyền, nhắc nhở, nhiều người dân vẫn ra các khu vực công cộng tập thể dục trong thời gian cách ly xã hội.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (96, CAST(N'2020-04-06' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/6/photo-1-1586161586099406409995-crop-15861776168811052439454.jpg', N'https://tuoitre.vn/thu-tuong-chuan-bi-phuong-an-cho-lan-song-thu-2-dich-covid-19-co-the-bung-phat-20200406152954915.htm', N'Thủ tướng: Chuẩn bị phương án cho làn sóng thứ 2 dịch COVID-19 có thể bùng phát', N'TTO - Không được chủ quan trên chiến thắng và phải chuẩn bị kịch bản để ứng phó với làn sóng thứ 2 có thể bùng phát của dịch COVID-19, chống dịch gắn với yêu cầu chống phá sản, Thủ tướng nhấn mạnh tại cuộc họp chiều 6-4.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (97, CAST(N'2020-04-06' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/6/thuoc-avigan-1586141012928852778576-crop-15861410906941358679988.jpg', N'https://tuoitre.vn/nhat-tinh-tang-gap-3-du-tru-thuoc-avigan-dieu-tri-covid-19-20200406094519574.htm', N'Nhật tính tăng gấp 3 dự trữ thuốc Avigan điều trị COVID-19', N'TTO - Chính quyền Tokyo đang cân nhắc tăng thêm kho dự trữ thuốc kháng virus Avigan lên gấp 3 lần so với mức hiện nay để có thể điều trị khoảng 2 triệu người nhiễm virus corona.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (98, CAST(N'2020-04-06' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/6/xet-nghiem-covid-15861395904761144045191-crop-15861396261881626589216.jpg', N'https://tuoitre.vn/xet-nghiem-thay-virus-corona-ca-khi-nguoi-nhiem-chua-phat-benh-20200406092054326.htm', N'Xét nghiệm thấy virus corona cả khi người nhiễm chưa phát bệnh', N'TTO - Các nhà nghiên cứu thuộc Đại học Newcastle (Anh) đã tìm ra cách xét nghiệm nhanh có thể phát hiện người nhiễm virus corona chủng mới (SARS-CoV-2), kể cả khi chưa bộc lộ triệu chứng bệnh.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (99, CAST(N'2020-04-06' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/5/10-khuyen-cao-phong-chong-covid-19-avatar-15860932317512121847513-crop-158609325931954303312.jpg', N'https://tuoitre.vn/10-dieu-nguoi-dan-can-nam-long-de-phong-chong-covid-19-20200405110701721.htm', N'10 điều người dân cần ''nằm lòng'' để phòng chống COVID-19', N'TTO - Bộ Y tế đưa ra 10 khuyến cáo phòng chống COVID-19. Đến sáng nay 6-4, nước ta ghi nhận 241 ca nhiễm, 91 ca đã được công bố khỏi bệnh và ra viện.')
GO
INSERT [dbo].[News] ([NewID], [Date], [Picture], [Link], [Title], [Description]) VALUES (100, CAST(N'2020-04-06' AS Date), N'https://cdn.tuoitre.vn/zoom/188_117/2020/4/5/chi-tai-15861005937421754501963-15861008080021074359194-crop-1586106225774818166279.png', N'https://tuoitre.vn/danh-hai-chi-tai-cach-ly-tap-trung-sau-khi-tu-my-ve-viet-nam-20200406000412721.htm', N'Danh hài Chí Tài cách ly tập trung sau khi từ Mỹ về Việt Nam', N'TTO - Về Việt Nam, Chí Tài cách ly tại ký túc xá Đại học Quốc gia TP.HCM từ ngày 21-3, đến nay đã gần hoàn thành thời gian 14 ngày.')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN1       ', 66, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'CN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN10      ', 42, N'Nữ', N'Khỏi', N'Vĩnh Phúc', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN100     ', 55, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN101     ', 26, N'Nữ', N'Khỏi', N'Đồng Tháp', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN102     ', 9, N'Nữ', N'Khỏi', N'Đồng Tháp', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN103     ', 22, N'Nam', N'Khỏi', N'Đồng Tháp', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN104     ', 33, N'Nữ', N'Khỏi', N'Đồng Tháp', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN105     ', 35, N'Nữ', N'Khỏi', N'Trà Vinh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN106     ', 20, N'Nữ', N'Khỏi', N'Trà Vinh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN107     ', 25, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN108     ', 19, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN109     ', 42, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN11      ', 49, N'Nữ', N'Khỏi', N'Vĩnh Phúc', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN110     ', 19, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN111     ', 25, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN112     ', 30, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN113     ', 18, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN114     ', 19, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN115     ', 44, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN116     ', 29, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN117     ', 30, N'Nam', N'Khỏi', N'Tây Ninh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN118     ', 23, N'Nữ', N'Khỏi', N'Tây Ninh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN119     ', 29, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'US')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN12      ', 16, N'Nữ', N'Khỏi', N'Vĩnh Phúc', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN120     ', 27, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'CA')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN121     ', 58, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN122     ', 24, N'Nữ', N'Khỏi', N'Đà Nẵng', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN123     ', 17, N'Nữ', N'Khỏi', N'Bến Tre', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN124     ', 52, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'BR')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN125     ', 22, N'Nữ', N'Khỏi', N'Hồ Chí Minh', N'ZA')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN126     ', 28, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'ZA')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN127     ', 23, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN128     ', 20, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN129     ', 20, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN13      ', 29, N'Nữ', N'Khỏi', N'Vĩnh Phúc', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN130     ', 30, N'Nam', N'Khỏi', N'Bắc Giang', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN131     ', 23, N'Nam', N'Khỏi', N'Bắc Giang', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN132     ', 25, N'Nữ', N'Khỏi', N'Bắc Giang', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN133     ', 66, N'Nữ', N'Khỏi', N'Lai Châu', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN134     ', 10, N'Nam', N'Đang điều trị', N'Thanh Hóa', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN135     ', 27, N'Nữ', N'Khỏi', N'Đà Nẵng', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN136     ', 23, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN137     ', 36, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN138     ', 23, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN139     ', 24, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN14      ', 55, N'Nữ', N'Khỏi', N'Vĩnh Phúc', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN140     ', 21, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN141     ', 29, N'Nữ', N'Đang điều trị', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN142     ', 26, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN143     ', 58, N'Nữ', N'Khỏi', N'Hồ Chí Minh', N'ZA')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN144     ', 22, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN145     ', 34, N'Nam', N'Khỏi', N'Cần Thơ', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN146     ', 17, N'Nữ', N'Khỏi', N'Hà Tĩnh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN147     ', 19, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN148     ', 58, N'Nam', N'Khỏi', N'Hà Nội', N'FR')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN149     ', 40, N'Nam', N'Đang điều trị', N'Quảng Ninh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN15      ', 0, N'Nữ', N'Khỏi', N'Vĩnh Phúc', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN150     ', 55, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN151     ', 45, N'Nữ', N'Đang điều trị', N'Hồ Chí Minh', N'BR')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN152     ', 27, N'Nữ', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN153     ', 60, N'Nữ', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN154     ', 23, N'Nữ', N'Khỏi', N'Cần Thơ', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN155     ', 21, N'Nữ', N'Khỏi', N'Bạc Liêu', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN156     ', 21, N'Nam', N'Khỏi', N'Bạc Liêu', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN157     ', 31, N'Nữ', N'Khỏi', N'Hồ Chí Minh', N'GB')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN158     ', 45, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'BR')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN159     ', 33, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'BR')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN16      ', 50, N'Nam', N'Khỏi', N'Vĩnh Phúc', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN160     ', 30, N'Nữ', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN161     ', 88, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN162     ', 63, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN163     ', 43, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN164     ', 23, N'Nam', N'Khỏi', N'Ninh Bình', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN165     ', 58, N'Nam', N'Khỏi', N'Ninh Bình', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN166     ', 25, N'Nữ', N'Khỏi', N'Ninh Bình', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN167     ', 20, N'Nữ', N'Khỏi', N'Hà Nội', N'DK')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN168     ', 35, N'Nữ', N'Khỏi', N'Hà Nam', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN169     ', 47, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN17      ', 26, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN170     ', 27, N'Nam', N'Khỏi', N'Ninh Bình', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN171     ', 19, N'Nữ', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN172     ', 35, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN173     ', 43, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN174     ', 57, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN175     ', 57, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN176     ', 38, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN177     ', 49, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN178     ', 44, N'Nữ', N'Đang điều trị', N'Thái Nguyên', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN179     ', 62, N'Nam', N'Khỏi', N'Thanh Hóa', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN18      ', 27, N'Nam', N'Khỏi', N'Ninh Bình', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN180     ', 27, N'Nữ', N'Khỏi', N'Ninh Bình', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN181     ', 33, N'Nam', N'Khỏi', N'Ninh Bình', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN182     ', 19, N'Nữ', N'Khỏi', N'Ninh Bình', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN183     ', 43, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN184     ', 42, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN185     ', 38, N'Nam', N'Đang điều trị', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN186     ', 52, N'Nữ', N'Khỏi', N'Hà Nội', N'FR')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN187     ', 30, N'Nam', N'Khỏi', N'Hà Nội', N'US')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN188     ', 44, N'Nữ', N'Đang điều trị', N'Hà Nam', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN189     ', 46, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN19      ', 64, N'Nữ', N'Đang điều trị', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN190     ', 49, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN191     ', 36, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN192     ', 21, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN193     ', 23, N'Nữ', N'Đang điều trị', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN194     ', 42, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN195     ', 41, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN196     ', 34, N'Nữ', N'Đang điều trị', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN197     ', 41, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN198     ', 53, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN199     ', 57, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN2       ', 28, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'CN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN20      ', 28, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN200     ', 61, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN201     ', 23, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN202     ', 57, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN203     ', 35, N'Nữ', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN204     ', 10, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN205     ', 41, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN206     ', 48, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN207     ', 49, N'Nam', N'Đang điều trị', N'Hồ Chí Minh', N'BR')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN208     ', 38, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN209     ', 55, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN21      ', 61, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN210     ', 26, N'Nữ', N'Khỏi', N'Hà Tĩnh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN211     ', 23, N'Nữ', N'Khỏi', N'Ninh Bình', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN212     ', 35, N'Nữ', N'Khỏi', N'Vĩnh Phúc', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN213     ', 40, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN214     ', 45, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN215     ', 31, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN216     ', 48, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN217     ', 25, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN218     ', 43, N'Nữ', N'Đang điều trị', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN219     ', 59, N'Nữ', N'Khỏi', N'Hưng Yên', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN22      ', 60, N'Nam', N'Khỏi', N'Quảng Ninh', N'GB')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN220     ', 20, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN221     ', 24, N'Nữ', N'Khỏi', N'Vĩnh Phúc', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN222     ', 22, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN223     ', 29, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN224     ', 39, N'Nam', N'Đang điều trị', N'Hồ Chí Minh', N'BR')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN225     ', 35, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN226     ', 22, N'Nam', N'Khỏi', N'Vĩnh Phúc', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN227     ', 32, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN228     ', 29, N'Nam', N'Khỏi', N'Ninh Bình', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN229     ', 30, N'Nữ', N'Khỏi', N'Ninh Bình', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN23      ', 66, N'Nam', N'Khỏi', N'Quảng Ninh', N'GB')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN230     ', 28, N'Nữ', N'Khỏi', N'Ninh Bình', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN231     ', 57, N'Nữ', N'Khỏi', N'Hà Nam', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN232     ', 67, N'Nam', N'Khỏi', N'Vĩnh Phúc', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN233     ', 24, N'Nữ', N'Khỏi', N'Vĩnh Phúc', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN234     ', 69, N'Nữ', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN235     ', 25, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'GB')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN236     ', 26, N'Nữ', N'Khỏi', N'Hồ Chí Minh', N'GB')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN237     ', 64, N'Nam', N'Khỏi', N'Hà Nội', N'SE')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN238     ', 17, N'Nữ', N'Khỏi', N'Hà Tĩnh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN239     ', 71, N'Nam', N'Khỏi', N'Vĩnh Phúc', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN24      ', 69, N'Nam', N'Khỏi', N'Quảng Ninh', N'GB')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN240     ', 29, N'Nữ', N'Khỏi', N'Ninh Bình', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN241     ', 20, N'Nam', N'Khỏi', N'Bạc Liêu', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN242     ', 34, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN243     ', 47, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN244     ', 44, N'Nữ', N'Đang điều trị', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN245     ', 21, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN246     ', 33, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN247     ', 28, N'Nam', N'Khỏi', N'Đồng Nai', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN248     ', 20, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN249     ', 55, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN25      ', 70, N'Nữ', N'Khỏi', N'Quảng Ninh', N'GB')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN250     ', 50, N'Nữ', N'Đang điều trị', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN251     ', 64, N'Nam', N'Khỏi', N'Hà Nam', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN252     ', 6, N'Nam', N'Khỏi', N'Tây Ninh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN253     ', 41, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN254     ', 51, N'Nam', N'Đang điều trị', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN255     ', 29, N'Nam', N'Khỏi', N'Vĩnh Phúc', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN256     ', 52, N'Nam', N'Đang điều trị', N'Vĩnh Phúc', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN257     ', 15, N'Nữ', N'Đang điều trị', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN258     ', 47, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN259     ', 41, N'Nữ', N'Đang điều trị', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN26      ', 50, N'Nữ', N'Khỏi', N'Lào Cai', N'IS')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN260     ', 35, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN261     ', 60, N'Nữ', N'Đang điều trị', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN262     ', 26, N'Nam', N'Đang điều trị', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN263     ', 45, N'Nữ', N'Đang điều trị', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN264     ', 24, N'Nữ', N'Đang điều trị', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN265     ', 26, N'Nam', N'Khỏi', N'Hà Tĩnh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN266     ', 36, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN267     ', 46, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN268     ', 16, N'Nữ', N'Khỏi', N'Hà Giang', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN269     ', 23, N'Nam', N'Đang điều trị', N'Thái Bình', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN27      ', 67, N'Nam', N'Khỏi', N'Lào Cai', N'GB')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN270     ', 22, N'Nữ', N'Đang điều trị', N'Thái Bình', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN271     ', 37, N'Nam', N'Đang điều trị', N'Hồ Chí Minh', N'GB')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN272     ', 58, N'Nam', N'Đang điều trị', N'Bạc Liêu', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN273     ', 30, N'Nữ', N'Đang điều trị', N'Bạc Liêu', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN274     ', 0, N'Nam', N'Đang điều trị', N'Bạc Liêu', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN275     ', 33, N'Nam', N'Đang điều trị', N'Bạc Liêu', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN276     ', 36, N'Nam', N'Đang điều trị', N'Bạc Liêu', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN277     ', 22, N'Nữ', N'Đang điều trị', N'Bạc Liêu', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN278     ', 50, N'Nữ', N'Đang điều trị', N'Bạc Liêu', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN279     ', 20, N'Nam', N'Đang điều trị', N'Bạc Liêu', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN28      ', 74, N'Nam', N'Khỏi', N'Đà Nẵng', N'GB')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN280     ', 29, N'Nữ', N'Đang điều trị', N'Bạc Liêu', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN281     ', 30, N'Nữ', N'Đang điều trị', N'Bạc Liêu', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN282     ', 37, N'Nữ', N'Đang điều trị', N'Bạc Liêu', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN283     ', 20, N'Nữ', N'Đang điều trị', N'Bạc Liêu', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN284     ', 30, N'Nữ', N'Đang điều trị', N'Bạc Liêu', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN285     ', 30, N'Nữ', N'Đang điều trị', N'Bạc Liêu', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN286     ', 23, N'Nữ', N'Đang điều trị', N'Bạc Liêu', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN287     ', 28, N'Nam', N'Đang điều trị', N'Bạc Liêu', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN288     ', 32, N'Nữ', N'Đang điều trị', N'Bạc Liêu', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN29      ', 58, N'Nam', N'Khỏi', N'Đà Nẵng', N'GB')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN3       ', 25, N'Nữ', N'Khỏi', N'Thanh Hóa', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN30      ', 66, N'Nữ', N'Khỏi', N'Thừa Thiên Huế', N'GB')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN31      ', 49, N'Nam', N'Khỏi', N'Quảng Nam', N'GB')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN32      ', 24, N'Nữ', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN33      ', 58, N'Nam', N'Khỏi', N'Quảng Nam', N'GB')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN34      ', 51, N'Nữ', N'Khỏi', N'Bình Thuận', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN35      ', 29, N'Nữ', N'Khỏi', N'Đà Nẵng', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN36      ', 64, N'Nữ', N'Khỏi', N'Bình Thuận', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN37      ', 37, N'Nữ', N'Khỏi', N'Bình Thuận', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN38      ', 28, N'Nữ', N'Khỏi', N'Bình Thuận', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN39      ', 25, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN4       ', 29, N'Nam', N'Khỏi', N'Vĩnh Phúc', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN40      ', 2, N'Nữ', N'Khỏi', N'Bình Thuận', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN41      ', 59, N'Nam', N'Khỏi', N'Bình Thuận', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN42      ', 28, N'Nam', N'Khỏi', N'Bình Thuận', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN43      ', 47, N'Nữ', N'Khỏi', N'Bình Thuận', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN44      ', 13, N'Nam', N'Khỏi', N'Bình Thuận', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN45      ', 25, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN46      ', 30, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN47      ', 43, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN48      ', 31, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN49      ', 71, N'Nam', N'Khỏi', N'Thừa Thiên Huế', N'GB')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN5       ', 23, N'Nữ', N'Khỏi', N'Vĩnh Phúc', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN50      ', 50, N'Nam', N'Đang điều trị', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN51      ', 22, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN52      ', 24, N'Nữ', N'Đang điều trị', N'Quảng Ninh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN53      ', 53, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'CZ')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN54      ', 33, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'LV')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN55      ', 35, N'Nam', N'Khỏi', N'Hà Nội', N'DE')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN56      ', 30, N'Nam', N'Khỏi', N'Hà Nội', N'GB')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN57      ', 66, N'Nam', N'Khỏi', N'Quảng Nam', N'GB')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN58      ', 26, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN59      ', 26, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN6       ', 25, N'Nữ', N'Khỏi', N'Khánh Hòa', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN60      ', 29, N'Nam', N'Khỏi', N'Hà Nội', N'FR')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN61      ', 42, N'Nam', N'Khỏi', N'Ninh Thuận', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN62      ', 18, N'Nam', N'Khỏi', N'Quảng Ninh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN63      ', 20, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN64      ', 36, N'Nữ', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN65      ', 28, N'Nữ', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN66      ', 21, N'Nữ', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN67      ', 36, N'Nam', N'Khỏi', N'Ninh Thuận', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN68      ', 41, N'Nam', N'Khỏi', N'Đà Nẵng', N'US')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN69      ', 30, N'Nam', N'Khỏi', N'Hà Nội', N'DE')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN7       ', 73, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'US')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN70      ', 19, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN71      ', 19, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN72      ', 25, N'Nữ', N'Khỏi', N'Hà Nội', N'FR')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN73      ', 11, N'Nam', N'Khỏi', N'Hải Dương', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN74      ', 23, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN75      ', 40, N'Nữ', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN76      ', 52, N'Nam', N'Khỏi', N'Hà Nội', N'FR')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN77      ', 25, N'Nữ', N'Khỏi', N'Bắc Ninh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN78      ', 22, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN79      ', 48, N'Nữ', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN8       ', 29, N'Nữ', N'Khỏi', N'Vĩnh Phúc', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN80      ', 18, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN81      ', 20, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN82      ', 16, N'Nữ', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN83      ', 50, N'Nữ', N'Khỏi', N'Hồ Chí Minh', N'US')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN84      ', 21, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN85      ', 20, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN86      ', 54, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN87      ', 34, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN88      ', 25, N'Nữ', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN89      ', 22, N'Nữ', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN9       ', 30, N'Nam', N'Khỏi', N'Vĩnh Phúc', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN90      ', 21, N'Nữ', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN91      ', 43, N'Nam', N'Đang điều trị', N'Hồ Chí Minh', N'GB')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN92      ', 21, N'Nam', N'Đang điều trị', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN93      ', 20, N'Nam', N'Khỏi', N'Hà Nội', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN94      ', 64, N'Nữ', N'Khỏi', N'Bắc Giang', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN95      ', 20, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN96      ', 21, N'Nữ', N'Khỏi', N'Hồ Chí Minh', N'VN')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN97      ', 34, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'GB')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN98      ', 34, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'GB')
GO
INSERT [dbo].[Patients] ([PatientID], [Age], [Sex], [Status], [CityName], [CountryID]) VALUES (N'BN99      ', 29, N'Nam', N'Khỏi', N'Hồ Chí Minh', N'VN')
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
/****** Object:  StoredProcedure [dbo].[Global]    Script Date: 13/05/2020 7:19:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Global]
as
begin
	select * 
	from Cases 
	where [Date]
	in
	(
		select max([Date]) 
		from Cases 
	)
	order by CountryID
end
GO
