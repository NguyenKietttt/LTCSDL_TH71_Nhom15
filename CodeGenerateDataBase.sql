USE [master]
GO
/****** Object:  Database [Ncov]    Script Date: 02-May-20 9:32:42 AM ******/
CREATE DATABASE [Ncov]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Ncov', FILENAME = N'/var/opt/mssql/data/Ncov.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Ncov_log', FILENAME = N'/var/opt/mssql/data/Ncov_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Ncov] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Ncov].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Ncov] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Ncov] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Ncov] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Ncov] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Ncov] SET ARITHABORT OFF 
GO
ALTER DATABASE [Ncov] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Ncov] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Ncov] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Ncov] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Ncov] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Ncov] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Ncov] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Ncov] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Ncov] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Ncov] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Ncov] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Ncov] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Ncov] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Ncov] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Ncov] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Ncov] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Ncov] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Ncov] SET RECOVERY FULL 
GO
ALTER DATABASE [Ncov] SET  MULTI_USER 
GO
ALTER DATABASE [Ncov] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Ncov] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Ncov] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Ncov] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Ncov] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Ncov', N'ON'
GO
ALTER DATABASE [Ncov] SET QUERY_STORE = OFF
GO
USE [Ncov]
GO
/****** Object:  Table [dbo].[Cases]    Script Date: 02-May-20 9:32:42 AM ******/
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
/****** Object:  Table [dbo].[Cities]    Script Date: 02-May-20 9:32:42 AM ******/
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
/****** Object:  Table [dbo].[Countries]    Script Date: 02-May-20 9:32:42 AM ******/
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
/****** Object:  Table [dbo].[Patients]    Script Date: 02-May-20 9:32:42 AM ******/
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
USE [master]
GO
ALTER DATABASE [Ncov] SET  READ_WRITE 
GO
