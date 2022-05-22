USE [master]
GO
/****** Object:  Database [MiladHospital]    Script Date: 12/28/2021 02:21:10 ق.ظ ******/
CREATE DATABASE [MiladHospital]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hospital-m', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Hospital-m.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Hospital-m_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Hospital-m_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MiladHospital] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MiladHospital].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MiladHospital] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MiladHospital] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MiladHospital] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MiladHospital] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MiladHospital] SET ARITHABORT OFF 
GO
ALTER DATABASE [MiladHospital] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MiladHospital] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MiladHospital] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MiladHospital] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MiladHospital] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MiladHospital] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MiladHospital] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MiladHospital] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MiladHospital] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MiladHospital] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MiladHospital] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MiladHospital] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MiladHospital] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MiladHospital] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MiladHospital] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MiladHospital] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MiladHospital] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MiladHospital] SET RECOVERY FULL 
GO
ALTER DATABASE [MiladHospital] SET  MULTI_USER 
GO
ALTER DATABASE [MiladHospital] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MiladHospital] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MiladHospital] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MiladHospital] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MiladHospital] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MiladHospital] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MiladHospital', N'ON'
GO
ALTER DATABASE [MiladHospital] SET QUERY_STORE = OFF
GO
USE [MiladHospital]
GO
/****** Object:  Table [dbo].[CcuSection]    Script Date: 12/28/2021 02:21:10 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CcuSection](
	[SectionID] [nvarchar](50) NOT NULL,
	[HospitalID] [nvarchar](50) NOT NULL,
	[PatientID] [nvarchar](50) NOT NULL,
	[DrID] [nvarchar](50) NOT NULL,
	[NurseID] [nvarchar](50) NOT NULL,
	[PatientType] [nvarchar](50) NOT NULL,
	[Amount] [nvarchar](50) NOT NULL,
	[Tell] [int] NOT NULL,
 CONSTRAINT [PK_CcuSection] PRIMARY KEY CLUSTERED 
(
	[SectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dr]    Script Date: 12/28/2021 02:21:10 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dr](
	[DrID] [nvarchar](50) NOT NULL,
	[HospitalID] [nvarchar](50) NOT NULL,
	[DrName] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[MedicalSpeciality] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Tell] [int] NOT NULL,
 CONSTRAINT [PK_Dr] PRIMARY KEY CLUSTERED 
(
	[DrID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmergencySection]    Script Date: 12/28/2021 02:21:10 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmergencySection](
	[SectionID] [nvarchar](50) NOT NULL,
	[HospitalID] [nvarchar](50) NOT NULL,
	[PatientID] [nvarchar](50) NOT NULL,
	[DrID] [nvarchar](50) NOT NULL,
	[NurseID] [nvarchar](50) NOT NULL,
	[PatientType] [nvarchar](50) NOT NULL,
	[Amount] [nvarchar](50) NOT NULL,
	[Tell] [int] NOT NULL,
 CONSTRAINT [PK_EmergencySection] PRIMARY KEY CLUSTERED 
(
	[SectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hospital]    Script Date: 12/28/2021 02:21:10 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hospital](
	[HospitalID] [nvarchar](50) NOT NULL,
	[HospitalName] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Tell] [int] NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Hospital] PRIMARY KEY CLUSTERED 
(
	[HospitalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IcuSection]    Script Date: 12/28/2021 02:21:10 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IcuSection](
	[SectionID] [nvarchar](50) NOT NULL,
	[HospitalID] [nvarchar](50) NOT NULL,
	[PatientID] [nvarchar](50) NOT NULL,
	[DrID] [nvarchar](50) NOT NULL,
	[NurseID] [nvarchar](50) NOT NULL,
	[PatientType] [nvarchar](50) NOT NULL,
	[Amount] [nvarchar](50) NOT NULL,
	[Tell] [int] NOT NULL,
 CONSTRAINT [PK_IcuSection] PRIMARY KEY CLUSTERED 
(
	[SectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InPatient]    Script Date: 12/28/2021 02:21:10 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InPatient](
	[PatientID] [nvarchar](50) NOT NULL,
	[SectionID] [nvarchar](50) NOT NULL,
	[DrID] [nvarchar](50) NOT NULL,
	[NurseID] [nvarchar](50) NOT NULL,
	[PatientName] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[Age] [nvarchar](50) NOT NULL,
	[diseases] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Tell] [int] NOT NULL,
 CONSTRAINT [PK_InPatient] PRIMARY KEY CLUSTERED 
(
	[PatientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Laboratory]    Script Date: 12/28/2021 02:21:10 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Laboratory](
	[SectionID] [nvarchar](50) NOT NULL,
	[HospitalID] [nvarchar](50) NOT NULL,
	[DrID] [nvarchar](50) NOT NULL,
	[PatientID] [nvarchar](50) NOT NULL,
	[NurseID] [nvarchar](50) NOT NULL,
	[TestType] [nvarchar](50) NOT NULL,
	[PatientType] [nvarchar](50) NOT NULL,
	[Amount] [nvarchar](50) NOT NULL,
	[Tell] [int] NOT NULL,
 CONSTRAINT [PK_Laboratory] PRIMARY KEY CLUSTERED 
(
	[SectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nurse]    Script Date: 12/28/2021 02:21:10 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nurse](
	[NurseID] [nvarchar](50) NOT NULL,
	[HospitalID] [nvarchar](50) NOT NULL,
	[SectionID] [nvarchar](50) NOT NULL,
	[NurseName] [nvarchar](max) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Address] [nvarchar](50) NOT NULL,
	[Tell] [int] NOT NULL,
 CONSTRAINT [PK_Nurse] PRIMARY KEY CLUSTERED 
(
	[NurseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OutPatient]    Script Date: 12/28/2021 02:21:10 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OutPatient](
	[PatientID] [nvarchar](50) NOT NULL,
	[SectionID] [nvarchar](50) NOT NULL,
	[DrID] [nvarchar](50) NOT NULL,
	[NurseID] [nvarchar](50) NOT NULL,
	[PatientName] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[diseases] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Tell] [int] NOT NULL,
 CONSTRAINT [PK_OutPatient] PRIMARY KEY CLUSTERED 
(
	[PatientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PediatricSection]    Script Date: 12/28/2021 02:21:10 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PediatricSection](
	[SectionID] [nvarchar](50) NOT NULL,
	[HospitalID] [nvarchar](50) NOT NULL,
	[DrID] [nvarchar](50) NOT NULL,
	[PatientID] [nvarchar](50) NOT NULL,
	[NurseID] [nvarchar](50) NOT NULL,
	[PatientType] [nvarchar](50) NOT NULL,
	[Amount] [nvarchar](50) NOT NULL,
	[Tell] [int] NOT NULL,
 CONSTRAINT [PK_PediatricSection] PRIMARY KEY CLUSTERED 
(
	[SectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pharmacist]    Script Date: 12/28/2021 02:21:10 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pharmacist](
	[PharmacistID] [nvarchar](50) NOT NULL,
	[HospitalID] [nvarchar](50) NOT NULL,
	[PharmacistName] [nvarchar](50) NOT NULL,
	[PharmacistLastName] [nvarchar](50) NOT NULL,
	[Age] [int] NOT NULL,
	[Gender] [nvarchar](50) NOT NULL,
	[Tell] [int] NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Pharmacist] PRIMARY KEY CLUSTERED 
(
	[PharmacistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pharmacy]    Script Date: 12/28/2021 02:21:10 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pharmacy](
	[PharmacyID] [nvarchar](50) NOT NULL,
	[HospitalID] [nvarchar](50) NOT NULL,
	[SectionID] [nvarchar](50) NOT NULL,
	[PatientID] [nvarchar](50) NOT NULL,
	[Prescription] [nvarchar](50) NOT NULL,
	[Tell] [int] NOT NULL,
 CONSTRAINT [PK_Pharmacy] PRIMARY KEY CLUSTERED 
(
	[PharmacyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reception]    Script Date: 12/28/2021 02:21:10 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reception](
	[SectionID] [nvarchar](50) NOT NULL,
	[HospitalID] [nvarchar](50) NOT NULL,
	[DrID] [nvarchar](50) NOT NULL,
	[PatientID] [nvarchar](50) NOT NULL,
	[Tell] [int] NOT NULL,
	[VisitTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Reception] PRIMARY KEY CLUSTERED 
(
	[SectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SurqerySection]    Script Date: 12/28/2021 02:21:10 ق.ظ ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SurqerySection](
	[SectionID] [nvarchar](50) NOT NULL,
	[HospitalID] [nvarchar](50) NOT NULL,
	[PatientID] [nvarchar](50) NOT NULL,
	[DrID] [nvarchar](50) NOT NULL,
	[NurseID] [nvarchar](50) NOT NULL,
	[PatientType] [nvarchar](50) NOT NULL,
	[Amount] [nvarchar](50) NOT NULL,
	[Tell] [int] NOT NULL,
 CONSTRAINT [PK_SurqerySection] PRIMARY KEY CLUSTERED 
(
	[SectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Dr] ([DrID], [HospitalID], [DrName], [Gender], [Age], [MedicalSpeciality], [Address], [Tell]) VALUES (N'20', N'1', N'ZahraSamadi', N'khanoom', 55, N'Zanan', N'Tehran', 91254)
GO
INSERT [dbo].[Dr] ([DrID], [HospitalID], [DrName], [Gender], [Age], [MedicalSpeciality], [Address], [Tell]) VALUES (N'21', N'1', N'MaralAhmadi', N'Khanoom', 50, N'Zanan', N'Tehran', 91632)
GO
INSERT [dbo].[Dr] ([DrID], [HospitalID], [DrName], [Gender], [Age], [MedicalSpeciality], [Address], [Tell]) VALUES (N'22', N'1', N'MohammadHashemi', N'Agha', 45, N'Qalb', N'Tehran', 91484)
GO
INSERT [dbo].[Dr] ([DrID], [HospitalID], [DrName], [Gender], [Age], [MedicalSpeciality], [Address], [Tell]) VALUES (N'23', N'1', N'yasamnAghaee', N'Khanoom', 30, N'Jarah', N'Tehran', 36582)
GO
INSERT [dbo].[Dr] ([DrID], [HospitalID], [DrName], [Gender], [Age], [MedicalSpeciality], [Address], [Tell]) VALUES (N'24', N'1', N'AhmadAzary', N'Agha', 32, N'Qalb', N'Tehran', 58426)
GO
INSERT [dbo].[Dr] ([DrID], [HospitalID], [DrName], [Gender], [Age], [MedicalSpeciality], [Address], [Tell]) VALUES (N'25', N'1', N'JalalAsadi', N'Agha', 60, N'Jarah', N'Tehran', 25413)
GO
INSERT [dbo].[Hospital] ([HospitalID], [HospitalName], [City], [Tell], [Address]) VALUES (N'1', N'Milad', N'Tehran', 44586921, N'Tehran')
GO
INSERT [dbo].[Nurse] ([NurseID], [HospitalID], [SectionID], [NurseName], [Gender], [Age], [Address], [Tell]) VALUES (N'101102', N'1', N'5', N'AzadeSaedi', N'khanoom', 26, N'Tehran', 912363)
GO
INSERT [dbo].[Nurse] ([NurseID], [HospitalID], [SectionID], [NurseName], [Gender], [Age], [Address], [Tell]) VALUES (N'101103', N'1', N'5', N'MohammadAsadi', N'Agha', 42, N'Tehran', 258741)
GO
INSERT [dbo].[Nurse] ([NurseID], [HospitalID], [SectionID], [NurseName], [Gender], [Age], [Address], [Tell]) VALUES (N'101104', N'1', N'5', N'AhamadDavari', N'Agha', 45, N'Tehran', 963852)
GO
INSERT [dbo].[Nurse] ([NurseID], [HospitalID], [SectionID], [NurseName], [Gender], [Age], [Address], [Tell]) VALUES (N'101105', N'1', N'5', N'AzarAbasi', N'Khanoom', 22, N'Tehran', 984562)
GO
INSERT [dbo].[Nurse] ([NurseID], [HospitalID], [SectionID], [NurseName], [Gender], [Age], [Address], [Tell]) VALUES (N'101106', N'1', N'5', N'MaryamAsadi', N'Khanoom', 30, N'Tehran', 357412)
GO
INSERT [dbo].[Nurse] ([NurseID], [HospitalID], [SectionID], [NurseName], [Gender], [Age], [Address], [Tell]) VALUES (N'101107', N'1', N'5', N'ZahraAsadi', N'Khanoom', 36, N'Tehran', 368745)
GO
INSERT [dbo].[Reception] ([SectionID], [HospitalID], [DrID], [PatientID], [Tell], [VisitTime]) VALUES (N'5', N'1', N'20', N'100', 912584546, CAST(N'1900-01-01T12:20:00.000' AS DateTime))
GO
INSERT [dbo].[Reception] ([SectionID], [HospitalID], [DrID], [PatientID], [Tell], [VisitTime]) VALUES (N'6', N'1', N'21', N'100', 91632, CAST(N'1900-01-01T13:20:00.000' AS DateTime))
GO
ALTER TABLE [dbo].[CcuSection]  WITH CHECK ADD  CONSTRAINT [FK_CcuSection_Hospital] FOREIGN KEY([HospitalID])
REFERENCES [dbo].[Hospital] ([HospitalID])
GO
ALTER TABLE [dbo].[CcuSection] CHECK CONSTRAINT [FK_CcuSection_Hospital]
GO
ALTER TABLE [dbo].[Dr]  WITH CHECK ADD  CONSTRAINT [FK_Dr_Hospital] FOREIGN KEY([HospitalID])
REFERENCES [dbo].[Hospital] ([HospitalID])
GO
ALTER TABLE [dbo].[Dr] CHECK CONSTRAINT [FK_Dr_Hospital]
GO
ALTER TABLE [dbo].[EmergencySection]  WITH CHECK ADD  CONSTRAINT [FK_EmergencySection_Hospital] FOREIGN KEY([HospitalID])
REFERENCES [dbo].[Hospital] ([HospitalID])
GO
ALTER TABLE [dbo].[EmergencySection] CHECK CONSTRAINT [FK_EmergencySection_Hospital]
GO
ALTER TABLE [dbo].[IcuSection]  WITH CHECK ADD  CONSTRAINT [FK_IcuSection_Hospital] FOREIGN KEY([HospitalID])
REFERENCES [dbo].[Hospital] ([HospitalID])
GO
ALTER TABLE [dbo].[IcuSection] CHECK CONSTRAINT [FK_IcuSection_Hospital]
GO
ALTER TABLE [dbo].[InPatient]  WITH CHECK ADD  CONSTRAINT [FK_InPatient_Reception] FOREIGN KEY([SectionID])
REFERENCES [dbo].[Reception] ([SectionID])
GO
ALTER TABLE [dbo].[InPatient] CHECK CONSTRAINT [FK_InPatient_Reception]
GO
ALTER TABLE [dbo].[Laboratory]  WITH CHECK ADD  CONSTRAINT [FK_Laboratory_Hospital] FOREIGN KEY([HospitalID])
REFERENCES [dbo].[Hospital] ([HospitalID])
GO
ALTER TABLE [dbo].[Laboratory] CHECK CONSTRAINT [FK_Laboratory_Hospital]
GO
ALTER TABLE [dbo].[Nurse]  WITH CHECK ADD  CONSTRAINT [FK_Nurse_Hospital] FOREIGN KEY([HospitalID])
REFERENCES [dbo].[Hospital] ([HospitalID])
GO
ALTER TABLE [dbo].[Nurse] CHECK CONSTRAINT [FK_Nurse_Hospital]
GO
ALTER TABLE [dbo].[OutPatient]  WITH CHECK ADD  CONSTRAINT [FK_OutPatient_Reception] FOREIGN KEY([SectionID])
REFERENCES [dbo].[Reception] ([SectionID])
GO
ALTER TABLE [dbo].[OutPatient] CHECK CONSTRAINT [FK_OutPatient_Reception]
GO
ALTER TABLE [dbo].[PediatricSection]  WITH CHECK ADD  CONSTRAINT [FK_PediatricSection_Hospital] FOREIGN KEY([HospitalID])
REFERENCES [dbo].[Hospital] ([HospitalID])
GO
ALTER TABLE [dbo].[PediatricSection] CHECK CONSTRAINT [FK_PediatricSection_Hospital]
GO
ALTER TABLE [dbo].[Pharmacist]  WITH CHECK ADD  CONSTRAINT [FK_Pharmacist_Hospital] FOREIGN KEY([HospitalID])
REFERENCES [dbo].[Hospital] ([HospitalID])
GO
ALTER TABLE [dbo].[Pharmacist] CHECK CONSTRAINT [FK_Pharmacist_Hospital]
GO
ALTER TABLE [dbo].[Pharmacist]  WITH CHECK ADD  CONSTRAINT [FK_Pharmacist_Pharmacy] FOREIGN KEY([PharmacistID])
REFERENCES [dbo].[Pharmacy] ([PharmacyID])
GO
ALTER TABLE [dbo].[Pharmacist] CHECK CONSTRAINT [FK_Pharmacist_Pharmacy]
GO
ALTER TABLE [dbo].[Pharmacy]  WITH CHECK ADD  CONSTRAINT [FK_Pharmacy_Hospital] FOREIGN KEY([HospitalID])
REFERENCES [dbo].[Hospital] ([HospitalID])
GO
ALTER TABLE [dbo].[Pharmacy] CHECK CONSTRAINT [FK_Pharmacy_Hospital]
GO
ALTER TABLE [dbo].[Pharmacy]  WITH CHECK ADD  CONSTRAINT [FK_Pharmacy_Reception] FOREIGN KEY([SectionID])
REFERENCES [dbo].[Reception] ([SectionID])
GO
ALTER TABLE [dbo].[Pharmacy] CHECK CONSTRAINT [FK_Pharmacy_Reception]
GO
ALTER TABLE [dbo].[Reception]  WITH CHECK ADD  CONSTRAINT [FK_Reception_Hospital] FOREIGN KEY([HospitalID])
REFERENCES [dbo].[Hospital] ([HospitalID])
GO
ALTER TABLE [dbo].[Reception] CHECK CONSTRAINT [FK_Reception_Hospital]
GO
ALTER TABLE [dbo].[SurqerySection]  WITH CHECK ADD  CONSTRAINT [FK_SurqerySection_Hospital] FOREIGN KEY([HospitalID])
REFERENCES [dbo].[Hospital] ([HospitalID])
GO
ALTER TABLE [dbo].[SurqerySection] CHECK CONSTRAINT [FK_SurqerySection_Hospital]
GO
USE [master]
GO
ALTER DATABASE [MiladHospital] SET  READ_WRITE 
GO
