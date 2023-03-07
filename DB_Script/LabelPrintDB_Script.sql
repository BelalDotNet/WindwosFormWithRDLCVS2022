USE [master]
GO
/****** Object:  Database [LabelPrintDB]    Script Date: 3/7/2023 3:27:58 PM ******/
CREATE DATABASE [LabelPrintDB]
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LabelPrintDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LabelPrintDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LabelPrintDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LabelPrintDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LabelPrintDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LabelPrintDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [LabelPrintDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LabelPrintDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LabelPrintDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LabelPrintDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LabelPrintDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LabelPrintDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LabelPrintDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LabelPrintDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LabelPrintDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LabelPrintDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LabelPrintDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LabelPrintDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LabelPrintDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LabelPrintDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LabelPrintDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LabelPrintDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LabelPrintDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LabelPrintDB] SET RECOVERY FULL 
GO
ALTER DATABASE [LabelPrintDB] SET  MULTI_USER 
GO
ALTER DATABASE [LabelPrintDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LabelPrintDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LabelPrintDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LabelPrintDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'LabelPrintDB', N'ON'
GO
USE [LabelPrintDB]
GO
/****** Object:  Table [dbo].[ProcessLabelPrintList]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessLabelPrintList](
	[ProcessLabelId] [int] IDENTITY(1,1) NOT NULL,
	[FormVersionId] [int] NOT NULL,
	[ProductName] [nvarchar](150) NULL,
	[BatchNo] [nvarchar](150) NULL,
	[BatchSize] [nvarchar](150) NULL,
	[Status] [nvarchar](250) NULL,
	[MfgDate] [datetime] NULL,
	[ExpDate] [datetime] NULL,
	[ContNo] [nvarchar](150) NULL,
	[GrossWt] [nvarchar](150) NULL,
	[TareWt] [nvarchar](150) NULL,
	[NetWt] [nvarchar](150) NULL,
	[CheckedBy] [int] NULL,
	[CheckedDate] [datetime] NULL,
	[PrintById] [int] NULL,
	[PrintDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProcessLabelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductLabel]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductLabel](
	[ProductLabelId] [int] IDENTITY(1,1) NOT NULL,
	[FormVersionId] [int] NULL,
	[ProductName] [nvarchar](250) NULL,
	[BatchNo] [nvarchar](250) NULL,
	[MfgDate] [datetime] NULL,
	[ExpDate] [datetime] NULL,
	[PackQuantity] [nvarchar](250) NULL,
	[PackedBy] [int] NULL,
	[SrNo] [nvarchar](50) NULL,
	[StorageCondition] [nvarchar](250) NULL,
	[CreatorId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdatorId] [int] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK__ProductL__605E50DC6534D4A7] PRIMARY KEY CLUSTERED 
(
	[ProductLabelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductLabelPrintList]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductLabelPrintList](
	[ProductPrintId] [int] IDENTITY(1,1) NOT NULL,
	[FormVersionId] [int] NULL,
	[ProductName] [nvarchar](250) NULL,
	[BatchNo] [nvarchar](250) NULL,
	[MfgDate] [datetime] NULL,
	[ExpDate] [datetime] NULL,
	[PackQuantity] [nvarchar](250) NULL,
	[SrNo] [nvarchar](50) NULL,
	[StorageCondition] [nvarchar](250) NULL,
	[PrintById] [int] NULL,
	[PrintDate] [datetime] NULL,
 CONSTRAINT [PK__ProductL__06AD129BB1F965DE] PRIMARY KEY CLUSTERED 
(
	[ProductPrintId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_AreaOrEquipment]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_AreaOrEquipment](
	[AreaOrEquipmentId] [int] IDENTITY(1,1) NOT NULL,
	[FormVersionId] [int] NOT NULL,
	[ProductName] [nvarchar](150) NULL,
	[BatchNo] [nvarchar](150) NULL,
	[BatchSize] [nvarchar](150) NULL,
	[Status] [nvarchar](150) NULL,
	[CheckedById] [int] NULL,
	[CheckedDate] [datetime] NULL,
	[CreatorId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdatorId] [int] NULL,
	[UpdateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AreaOrEquipmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Cleaned]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Cleaned](
	[CleanedId] [int] IDENTITY(1,1) NOT NULL,
	[FormVersionId] [int] NOT NULL,
	[EquipmentName] [nvarchar](150) NULL,
	[EquipmentId] [nvarchar](150) NULL,
	[PreviousProduct] [nvarchar](150) NULL,
	[EquipmentBatchNo] [nvarchar](150) NULL,
	[CleanedById] [int] NULL,
	[CleanedDate] [datetime] NULL,
	[CheckedById] [int] NULL,
	[CheckedDate] [datetime] NULL,
	[VerifiedById] [int] NULL,
	[VerifiedDate] [datetime] NULL,
	[UseOnOrBeforeDate] [datetime] NULL,
	[ProductName] [nvarchar](150) NULL,
	[ProductBatchNo] [nvarchar](150) NULL,
	[CreatorId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdatorId] [int] NULL,
	[UpdateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CleanedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_FormTemplate]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_FormTemplate](
	[FromTemplateId] [int] IDENTITY(1,1) NOT NULL,
	[TemplateName] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[FromTemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_FormTemplateVersion]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_FormTemplateVersion](
	[FormVersionId] [int] IDENTITY(1,1) NOT NULL,
	[FormTemplateId] [int] NULL,
	[FormNo] [nvarchar](150) NOT NULL,
	[VersionNo] [nvarchar](10) NOT NULL,
	[FormVersionDate] [datetime] NOT NULL,
	[CreatorId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdatorId] [int] NULL,
	[UpdateDate] [datetime] NULL,
 CONSTRAINT [PK__tbl_Form__2ADD4DA758132D4B] PRIMARY KEY CLUSTERED 
(
	[FormVersionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_MaterialDispensingSlip]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_MaterialDispensingSlip](
	[DispensingSlipId] [int] IDENTITY(1,1) NOT NULL,
	[FormVersionId] [int] NOT NULL,
	[BalanceNo] [nvarchar](150) NULL,
	[Operation] [nvarchar](50) NULL,
	[Material] [nvarchar](150) NULL,
	[Code] [nvarchar](50) NULL,
	[LabControlNo] [nvarchar](150) NULL,
	[ProductName] [nvarchar](150) NULL,
	[BatchNo] [nvarchar](150) NULL,
	[BatchSize] [nvarchar](150) NULL,
	[GrossWt] [nvarchar](150) NULL,
	[TareWt] [nvarchar](150) NULL,
	[NetWt] [nvarchar](150) NULL,
	[ContainerNo] [nvarchar](150) NULL,
	[OfContainer] [nvarchar](150) NULL,
	[DispensedById] [int] NULL,
	[CheckedById] [int] NULL,
	[VerifiedById] [int] NULL,
	[CreatorId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdatorId] [int] NULL,
	[UpdateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DispensingSlipId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PartiallyCleaned]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PartiallyCleaned](
	[PartiallyCleanedId] [int] IDENTITY(1,1) NOT NULL,
	[FormVersionId] [int] NOT NULL,
	[EquipmentName] [nvarchar](150) NULL,
	[EquipmentId] [nvarchar](150) NULL,
	[PreviousProduct] [nvarchar](150) NULL,
	[EquipmentBatchNo] [nvarchar](150) NULL,
	[CleanedById] [int] NULL,
	[CleanedDate] [datetime] NULL,
	[CheckedById] [int] NULL,
	[CheckedDate] [datetime] NULL,
	[VerifiedById] [int] NULL,
	[VerifiedDate] [datetime] NULL,
	[ProductName] [nvarchar](150) NULL,
	[ProductBatchNo] [nvarchar](150) NULL,
	[CreatorId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdatorId] [int] NULL,
	[UpdateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PartiallyCleanedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ProcessLabel]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ProcessLabel](
	[ProcessLabelId] [int] IDENTITY(1,1) NOT NULL,
	[FormVersionId] [int] NOT NULL,
	[ProductName] [nvarchar](150) NULL,
	[BatchNo] [nvarchar](150) NULL,
	[BatchSize] [nvarchar](150) NULL,
	[Status] [nvarchar](250) NULL,
	[MfgDate] [datetime] NULL,
	[ExpDate] [datetime] NULL,
	[ContNo] [nvarchar](150) NULL,
	[GrossWt] [nvarchar](150) NULL,
	[TareWt] [nvarchar](150) NULL,
	[NetWt] [nvarchar](150) NULL,
	[CheckedBy] [int] NULL,
	[CheckedDate] [datetime] NULL,
	[CreatorId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdatorId] [int] NULL,
	[UpdateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProcessLabelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_QAPassed]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_QAPassed](
	[QAPassedId] [int] IDENTITY(1,1) NOT NULL,
	[FormVersionId] [int] NOT NULL,
	[Material] [nvarchar](150) NULL,
	[CodeNo] [nvarchar](50) NULL,
	[MfgBatchNo] [nvarchar](150) NULL,
	[GRNNo] [nvarchar](50) NULL,
	[LabControlNo] [nvarchar](50) NULL,
	[Quantity] [nvarchar](50) NULL,
	[ContainerNo] [int] NULL,
	[TotalContainer] [int] NULL,
	[Potency] [nvarchar](150) NULL,
	[RetestDate] [datetime] NULL,
	[MfgDate] [datetime] NULL,
	[ExpDate] [datetime] NULL,
	[StorageCondition] [nvarchar](250) NULL,
	[CheckedById] [int] NULL,
	[CheckedDate] [datetime] NULL,
	[CreatorId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdatorId] [int] NULL,
	[UpdateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[QAPassedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_QAQuarantined]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_QAQuarantined](
	[QAQuarantinedId] [int] IDENTITY(1,1) NOT NULL,
	[FormVersionId] [int] NOT NULL,
	[Material] [nvarchar](150) NULL,
	[CodeNo] [nvarchar](50) NULL,
	[BatchNo] [nvarchar](150) NULL,
	[GRNNo] [nvarchar](50) NULL,
	[MfrName] [nvarchar](250) NULL,
	[Supplier] [nvarchar](250) NULL,
	[Quantity] [nvarchar](50) NULL,
	[ContainerNo] [int] NULL,
	[TotalContainer] [int] NULL,
	[MfgDate] [datetime] NULL,
	[ExpDate] [datetime] NULL,
	[Storage] [nvarchar](250) NULL,
	[IssuedById] [int] NULL,
	[IssuedDate] [datetime] NULL,
	[CreatorId] [int] NULL,
	[CreateDate] [datetime] NULL,
	[UpdatorId] [int] NULL,
	[UpdateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[QAQuarantinedId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Role]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_User]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NULL,
	[UserName] [nvarchar](50) NULL,
	[DisplayName] [nvarchar](250) NULL,
	[Password] [nvarchar](50) NULL,
	[Email] [nvarchar](30) NULL,
	[Phone] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK__tbl_User__1788CC4C16E66495] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ProcessLabelPrintList] ON 
GO
INSERT [dbo].[ProcessLabelPrintList] ([ProcessLabelId], [FormVersionId], [ProductName], [BatchNo], [BatchSize], [Status], [MfgDate], [ExpDate], [ContNo], [GrossWt], [TareWt], [NetWt], [CheckedBy], [CheckedDate], [PrintById], [PrintDate]) VALUES (1, 11, N'Process Label Product', N'B-012', N'21X25', N'Process Label Status', CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(N'2025-12-06T00:00:00.000' AS DateTime), N'95', N'50kg', N'10kg', N'60kg', 3, CAST(N'2023-03-06T00:00:00.000' AS DateTime), 3, CAST(N'2023-03-06T12:11:16.153' AS DateTime))
GO
INSERT [dbo].[ProcessLabelPrintList] ([ProcessLabelId], [FormVersionId], [ProductName], [BatchNo], [BatchSize], [Status], [MfgDate], [ExpDate], [ContNo], [GrossWt], [TareWt], [NetWt], [CheckedBy], [CheckedDate], [PrintById], [PrintDate]) VALUES (2, 1, N'Process Label', N'01', N'25X25', N'Nice', CAST(N'2023-01-01T00:00:00.000' AS DateTime), CAST(N'2025-01-01T00:00:00.000' AS DateTime), N'10', N'250kg', N'10kg', N'260kg', 3, CAST(N'2023-03-05T00:00:00.000' AS DateTime), 3, CAST(N'2023-03-06T12:22:07.510' AS DateTime))
GO
INSERT [dbo].[ProcessLabelPrintList] ([ProcessLabelId], [FormVersionId], [ProductName], [BatchNo], [BatchSize], [Status], [MfgDate], [ExpDate], [ContNo], [GrossWt], [TareWt], [NetWt], [CheckedBy], [CheckedDate], [PrintById], [PrintDate]) VALUES (3, 11, N'Process Label Product', N'B-012', N'21X25', N'Process Label Status', CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(N'2025-12-06T00:00:00.000' AS DateTime), N'95', N'50kg', N'10kg', N'60kg', 3, CAST(N'2023-03-06T00:00:00.000' AS DateTime), 3, CAST(N'2023-03-06T12:23:17.213' AS DateTime))
GO
INSERT [dbo].[ProcessLabelPrintList] ([ProcessLabelId], [FormVersionId], [ProductName], [BatchNo], [BatchSize], [Status], [MfgDate], [ExpDate], [ContNo], [GrossWt], [TareWt], [NetWt], [CheckedBy], [CheckedDate], [PrintById], [PrintDate]) VALUES (4, 11, N'Process Label Product', N'B-012', N'21X25', N'Process Label Status', CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(N'2025-12-06T00:00:00.000' AS DateTime), N'95', N'50kg', N'10kg', N'60kg', 3, CAST(N'2023-03-06T00:00:00.000' AS DateTime), 3, CAST(N'2023-03-06T14:33:29.410' AS DateTime))
GO
INSERT [dbo].[ProcessLabelPrintList] ([ProcessLabelId], [FormVersionId], [ProductName], [BatchNo], [BatchSize], [Status], [MfgDate], [ExpDate], [ContNo], [GrossWt], [TareWt], [NetWt], [CheckedBy], [CheckedDate], [PrintById], [PrintDate]) VALUES (5, 11, N'Process Label Product', N'B-012', N'21X25', N'Process Label Status', CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(N'2025-12-06T00:00:00.000' AS DateTime), N'95', N'50kg', N'10kg', N'60kg', 3, CAST(N'2023-03-06T00:00:00.000' AS DateTime), 3, CAST(N'2023-03-06T14:34:22.310' AS DateTime))
GO
INSERT [dbo].[ProcessLabelPrintList] ([ProcessLabelId], [FormVersionId], [ProductName], [BatchNo], [BatchSize], [Status], [MfgDate], [ExpDate], [ContNo], [GrossWt], [TareWt], [NetWt], [CheckedBy], [CheckedDate], [PrintById], [PrintDate]) VALUES (6, 11, N'Process Label Product', N'B-012', N'21X25', N'Process Label Status', CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(N'2025-12-06T00:00:00.000' AS DateTime), N'95', N'50kg', N'10kg', N'60kg', 3, CAST(N'2023-03-06T00:00:00.000' AS DateTime), 3, CAST(N'2023-03-06T14:35:22.657' AS DateTime))
GO
INSERT [dbo].[ProcessLabelPrintList] ([ProcessLabelId], [FormVersionId], [ProductName], [BatchNo], [BatchSize], [Status], [MfgDate], [ExpDate], [ContNo], [GrossWt], [TareWt], [NetWt], [CheckedBy], [CheckedDate], [PrintById], [PrintDate]) VALUES (7, 11, N'Process Label Product', N'B-012', N'21X25', N'Process Label Status', CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(N'2025-12-06T00:00:00.000' AS DateTime), N'95', N'50kg', N'10kg', N'60kg', 3, CAST(N'2023-03-06T00:00:00.000' AS DateTime), 3, CAST(N'2023-03-06T15:10:45.743' AS DateTime))
GO
INSERT [dbo].[ProcessLabelPrintList] ([ProcessLabelId], [FormVersionId], [ProductName], [BatchNo], [BatchSize], [Status], [MfgDate], [ExpDate], [ContNo], [GrossWt], [TareWt], [NetWt], [CheckedBy], [CheckedDate], [PrintById], [PrintDate]) VALUES (8, 11, N'Process Label Product', N'B-012', N'21X25', N'Process Label Status', CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(N'2025-12-06T00:00:00.000' AS DateTime), N'95', N'50kg', N'10kg', N'60kg', 3, CAST(N'2023-03-06T00:00:00.000' AS DateTime), 3, CAST(N'2023-03-06T15:24:57.073' AS DateTime))
GO
INSERT [dbo].[ProcessLabelPrintList] ([ProcessLabelId], [FormVersionId], [ProductName], [BatchNo], [BatchSize], [Status], [MfgDate], [ExpDate], [ContNo], [GrossWt], [TareWt], [NetWt], [CheckedBy], [CheckedDate], [PrintById], [PrintDate]) VALUES (9, 11, N'Process Label Product', N'B-012', N'21X25', N'Process Label Status', CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(N'2025-12-06T00:00:00.000' AS DateTime), N'95', N'50kg', N'10kg', N'60kg', 3, CAST(N'2023-03-06T00:00:00.000' AS DateTime), 3, CAST(N'2023-03-06T15:26:33.363' AS DateTime))
GO
INSERT [dbo].[ProcessLabelPrintList] ([ProcessLabelId], [FormVersionId], [ProductName], [BatchNo], [BatchSize], [Status], [MfgDate], [ExpDate], [ContNo], [GrossWt], [TareWt], [NetWt], [CheckedBy], [CheckedDate], [PrintById], [PrintDate]) VALUES (10, 11, N'Process Label Product', N'B-012', N'21X25', N'Process Label Status', CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(N'2025-12-06T00:00:00.000' AS DateTime), N'95', N'50kg', N'10kg', N'60kg', 3, CAST(N'2023-03-06T00:00:00.000' AS DateTime), 3, CAST(N'2023-03-06T15:27:46.727' AS DateTime))
GO
INSERT [dbo].[ProcessLabelPrintList] ([ProcessLabelId], [FormVersionId], [ProductName], [BatchNo], [BatchSize], [Status], [MfgDate], [ExpDate], [ContNo], [GrossWt], [TareWt], [NetWt], [CheckedBy], [CheckedDate], [PrintById], [PrintDate]) VALUES (11, 11, N'Process Label Product', N'B-012', N'21X25', N'Process Label Status', CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(N'2025-12-06T00:00:00.000' AS DateTime), N'95', N'50kg', N'10kg', N'60kg', 3, CAST(N'2023-03-06T00:00:00.000' AS DateTime), 3, CAST(N'2023-03-06T15:28:41.813' AS DateTime))
GO
INSERT [dbo].[ProcessLabelPrintList] ([ProcessLabelId], [FormVersionId], [ProductName], [BatchNo], [BatchSize], [Status], [MfgDate], [ExpDate], [ContNo], [GrossWt], [TareWt], [NetWt], [CheckedBy], [CheckedDate], [PrintById], [PrintDate]) VALUES (12, 11, N'Process Label Product', N'B-012', N'21X25', N'Process Label Status', CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(N'2025-12-06T00:00:00.000' AS DateTime), N'95', N'50kg', N'10kg', N'60kg', 3, CAST(N'2023-03-06T00:00:00.000' AS DateTime), 3, CAST(N'2023-03-06T15:29:32.383' AS DateTime))
GO
INSERT [dbo].[ProcessLabelPrintList] ([ProcessLabelId], [FormVersionId], [ProductName], [BatchNo], [BatchSize], [Status], [MfgDate], [ExpDate], [ContNo], [GrossWt], [TareWt], [NetWt], [CheckedBy], [CheckedDate], [PrintById], [PrintDate]) VALUES (13, 11, N'Process Label Product', N'B-012', N'21X25', N'Process Label Status', CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(N'2025-12-06T00:00:00.000' AS DateTime), N'95', N'50kg', N'10kg', N'60kg', 3, CAST(N'2023-03-06T00:00:00.000' AS DateTime), 3, CAST(N'2023-03-06T15:30:07.017' AS DateTime))
GO
INSERT [dbo].[ProcessLabelPrintList] ([ProcessLabelId], [FormVersionId], [ProductName], [BatchNo], [BatchSize], [Status], [MfgDate], [ExpDate], [ContNo], [GrossWt], [TareWt], [NetWt], [CheckedBy], [CheckedDate], [PrintById], [PrintDate]) VALUES (14, 11, N'Process Label Product', N'B-012', N'21X25', N'Process Label Status', CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(N'2025-12-06T00:00:00.000' AS DateTime), N'95', N'50kg', N'10kg', N'60kg', 3, CAST(N'2023-03-06T00:00:00.000' AS DateTime), 3, CAST(N'2023-03-06T15:34:25.773' AS DateTime))
GO
INSERT [dbo].[ProcessLabelPrintList] ([ProcessLabelId], [FormVersionId], [ProductName], [BatchNo], [BatchSize], [Status], [MfgDate], [ExpDate], [ContNo], [GrossWt], [TareWt], [NetWt], [CheckedBy], [CheckedDate], [PrintById], [PrintDate]) VALUES (15, 11, N'Process Label Product', N'B-012', N'21X25', N'Process Label Status', CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(N'2025-12-06T00:00:00.000' AS DateTime), N'95', N'50kg', N'10kg', N'60kg', 3, CAST(N'2023-03-06T00:00:00.000' AS DateTime), 3, CAST(N'2023-03-06T15:40:03.040' AS DateTime))
GO
INSERT [dbo].[ProcessLabelPrintList] ([ProcessLabelId], [FormVersionId], [ProductName], [BatchNo], [BatchSize], [Status], [MfgDate], [ExpDate], [ContNo], [GrossWt], [TareWt], [NetWt], [CheckedBy], [CheckedDate], [PrintById], [PrintDate]) VALUES (16, 11, N'Process Label Product', N'B-012', N'21X25', N'Process Label Status', CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(N'2025-12-06T00:00:00.000' AS DateTime), N'95', N'50kg', N'10kg', N'60kg', 3, CAST(N'2023-03-06T00:00:00.000' AS DateTime), 3, CAST(N'2023-03-06T16:45:18.627' AS DateTime))
GO
INSERT [dbo].[ProcessLabelPrintList] ([ProcessLabelId], [FormVersionId], [ProductName], [BatchNo], [BatchSize], [Status], [MfgDate], [ExpDate], [ContNo], [GrossWt], [TareWt], [NetWt], [CheckedBy], [CheckedDate], [PrintById], [PrintDate]) VALUES (17, 7, N'Process Label 03', N'B-03', N'303 X 205 ', N'Nice Status', CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(N'2026-06-16T00:00:00.000' AS DateTime), N'10', N'95 kg', N'10 kg ', N'105 kg', 3, CAST(N'2023-03-06T00:00:00.000' AS DateTime), 3, CAST(N'2023-03-06T17:20:08.103' AS DateTime))
GO
INSERT [dbo].[ProcessLabelPrintList] ([ProcessLabelId], [FormVersionId], [ProductName], [BatchNo], [BatchSize], [Status], [MfgDate], [ExpDate], [ContNo], [GrossWt], [TareWt], [NetWt], [CheckedBy], [CheckedDate], [PrintById], [PrintDate]) VALUES (18, 11, N'Process Label Product', N'B-012', N'21X25', N'Process Label Status', CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(N'2025-12-06T00:00:00.000' AS DateTime), N'95', N'50kg', N'10kg', N'60kg', 3, CAST(N'2023-03-06T00:00:00.000' AS DateTime), 3, CAST(N'2023-03-07T11:05:37.360' AS DateTime))
GO
INSERT [dbo].[ProcessLabelPrintList] ([ProcessLabelId], [FormVersionId], [ProductName], [BatchNo], [BatchSize], [Status], [MfgDate], [ExpDate], [ContNo], [GrossWt], [TareWt], [NetWt], [CheckedBy], [CheckedDate], [PrintById], [PrintDate]) VALUES (19, 7, N'Process Label 03', N'B-03', N'303 X 205 ', N'Nice Status', CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(N'2026-06-16T00:00:00.000' AS DateTime), N'10', N'95 kg', N'10 kg ', N'105 kg', 3, CAST(N'2023-03-06T00:00:00.000' AS DateTime), 3, CAST(N'2023-03-07T13:21:12.930' AS DateTime))
GO
INSERT [dbo].[ProcessLabelPrintList] ([ProcessLabelId], [FormVersionId], [ProductName], [BatchNo], [BatchSize], [Status], [MfgDate], [ExpDate], [ContNo], [GrossWt], [TareWt], [NetWt], [CheckedBy], [CheckedDate], [PrintById], [PrintDate]) VALUES (20, 7, N'Process Label 03', N'B-03', N'303 X 205 ', N'Nice Status', CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(N'2026-06-16T00:00:00.000' AS DateTime), N'10', N'95 kg', N'10 kg ', N'105 kg', 3, CAST(N'2023-03-06T00:00:00.000' AS DateTime), 3, CAST(N'2023-03-07T13:21:20.280' AS DateTime))
GO
INSERT [dbo].[ProcessLabelPrintList] ([ProcessLabelId], [FormVersionId], [ProductName], [BatchNo], [BatchSize], [Status], [MfgDate], [ExpDate], [ContNo], [GrossWt], [TareWt], [NetWt], [CheckedBy], [CheckedDate], [PrintById], [PrintDate]) VALUES (21, 1, N'Process Label', N'01', N'25X25', N'Nice', CAST(N'2023-01-01T00:00:00.000' AS DateTime), CAST(N'2025-01-01T00:00:00.000' AS DateTime), N'10', N'250kg', N'10kg', N'260kg', 3, CAST(N'2023-03-05T00:00:00.000' AS DateTime), 3, CAST(N'2023-03-07T13:41:22.260' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ProcessLabelPrintList] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductLabel] ON 
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (1, NULL, N'asdfasdf', N'asdf', CAST(N'2023-02-12T00:00:00.000' AS DateTime), CAST(N'2023-02-12T00:00:00.000' AS DateTime), N'4.00', 1, N'sf', N'asdf', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (2, NULL, N'Barcode Label', N'B201', CAST(N'2023-02-01T00:00:00.000' AS DateTime), CAST(N'2023-02-10T00:00:00.000' AS DateTime), N'40.00', 1, N'01', N'Nice', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (3, NULL, N'Barcode Ribon', N'B20001', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-02-11T00:00:00.000' AS DateTime), N'540.00', 1, N'02', N'Nice Ribon', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (4, NULL, N'Barcode Ribon', N'B20001', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-02-11T00:00:00.000' AS DateTime), N'540.00', 1, N'02', N'Nice Ribon', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (5, NULL, N'Nice Label', N'N-012', CAST(N'2023-02-13T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), N'10.00', 1, N'S100', N'Nice Condition', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (6, NULL, N'Print Label', N'P-123', CAST(N'2023-02-13T00:00:00.000' AS DateTime), CAST(N'2023-04-27T00:00:00.000' AS DateTime), N'541.00', 1, N'41', N'Print Nice', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (7, NULL, N'Barcode Nice', N'B96', CAST(N'2023-02-15T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), N'50.00', 1, N'84', N'Storage Condition', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (8, NULL, N'Printer', N'V-124', CAST(N'2023-02-04T00:00:00.000' AS DateTime), CAST(N'2023-04-14T00:00:00.000' AS DateTime), N'50.00', 1, N'124', N'Nice', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (9, NULL, N'Barcode Label', N'654564', CAST(N'2023-02-09T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), N'50.00', 1, N'01', N'Nice', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (10, NULL, N'A4 Paper', N'A201', CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), N'50.00', 2, N'100', N'Nice Storage Condition', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (11, 0, N'Barcode Print Label', N'B-184', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), N'10.00', 3, N'S10', N'Nice', NULL, NULL, 3, CAST(N'2023-03-04T13:03:46.003' AS DateTime))
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (12, NULL, N'Nice Product', N'20100', CAST(N'2023-02-12T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), N'10.00', 3, N'524', N'Nice Condition', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (13, NULL, N'Barcode Print Label', N'184', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), N'10.00', 2, N'S10', N'Nice', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (14, NULL, N'Nice Product', N'20100', CAST(N'2023-02-12T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), N'10.00', 1, N'524', N'Nice Condition', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (15, NULL, N'xyc', N'0003', CAST(N'2023-02-08T00:00:00.000' AS DateTime), CAST(N'2023-02-03T00:00:00.000' AS DateTime), N'45.00', 3, N'567', N'good', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (16, NULL, N'Barcode Label xyz', N'B-014', CAST(N'2023-02-16T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), N'10.00', 1, N'S-1234', N'Nice', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (17, NULL, N'RTL Barcode Label', N'B-101', CAST(N'2023-02-22T00:00:00.000' AS DateTime), CAST(N'2023-04-28T00:00:00.000' AS DateTime), N'500.00', 3, N'501', N'Nice Storage Condition', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (18, NULL, N'Product Label', N'B-202', CAST(N'2023-02-25T00:00:00.000' AS DateTime), CAST(N'2023-04-29T00:00:00.000' AS DateTime), N'540.00', 3, N'SL-102', N'Nice Condition', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (19, 11, N'DEXEND 30 CAPSULE', N'230291', CAST(N'2023-02-23T00:00:00.000' AS DateTime), CAST(N'2025-01-31T00:00:00.000' AS DateTime), N'264 X 1X 2''S PACK''S', 3, N'001', N'NMT 30''C TEMPERATURE', NULL, NULL, 3, CAST(N'2023-03-06T10:50:20.900' AS DateTime))
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (20, 1, N'DEXEND 30 CAPSULE', N'230291', CAST(N'2023-02-23T00:00:00.000' AS DateTime), CAST(N'2025-01-31T00:00:00.000' AS DateTime), N'264 X 1X 2''S PACK''S', 3, N'002', N'NMT 30°C TEMPERATURE', NULL, NULL, 3, CAST(N'2023-02-28T17:43:22.837' AS DateTime))
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (21, 3, N'Nice Label', N'N-0124', CAST(N'2023-02-28T00:00:00.000' AS DateTime), CAST(N'2025-06-11T00:00:00.000' AS DateTime), N'264 X 1 X 2''S PACK''S', 3, N'00124', N'Nice Condition', 3, CAST(N'2023-02-28T16:28:29.703' AS DateTime), 3, CAST(N'2023-02-28T17:24:36.333' AS DateTime))
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (22, 6, N'Nice Label', N'B-2012', CAST(N'2023-03-01T00:00:00.000' AS DateTime), CAST(N'2023-05-27T00:00:00.000' AS DateTime), N'260 PCS', 3, N'0124', N'250°C Temparature', 3, CAST(N'2023-03-01T14:22:46.550' AS DateTime), 3, CAST(N'2023-03-06T10:50:00.030' AS DateTime))
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (23, 10, N'Product Label 02', N'B-0124', CAST(N'2023-03-05T00:00:00.000' AS DateTime), CAST(N'2024-03-05T00:00:00.000' AS DateTime), N'250 Pcs', 3, N'01', N'Nice', 3, CAST(N'2023-03-05T13:19:57.367' AS DateTime), 3, CAST(N'2023-03-06T12:41:51.440' AS DateTime))
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (24, 11, N'Product Label', N'B-0123', CAST(N'2023-03-07T00:00:00.000' AS DateTime), CAST(N'2025-01-07T00:00:00.000' AS DateTime), N'250 PCS', 12, N'0124', N'Nice Storage', 12, CAST(N'2023-03-07T12:17:18.177' AS DateTime), 12, CAST(N'2023-03-07T12:17:22.847' AS DateTime))
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (25, 11, N'adsfas', N'asdfas', CAST(N'2023-03-07T00:00:00.000' AS DateTime), CAST(N'2023-03-07T00:00:00.000' AS DateTime), N'2510', 1, N'45', N'fdsgsd', 1, CAST(N'2023-03-07T13:17:23.050' AS DateTime), 1, CAST(N'2023-03-07T13:17:32.147' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ProductLabel] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductLabelPrintList] ON 
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (1, NULL, N'asdfasdf', N'asdf', CAST(N'2023-02-12T00:00:00.000' AS DateTime), CAST(N'2023-02-12T00:00:00.000' AS DateTime), N'4.00', N'sf', N'asdf', 1, CAST(N'2023-02-13T15:33:46.330' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (2, NULL, N'Nice Label', N'N-012', CAST(N'2023-02-13T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), N'10.00', N'S100', N'Nice Condition', 1, CAST(N'2023-02-13T15:55:48.280' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (3, NULL, N'Barcode Ribon', N'B20001', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-02-11T00:00:00.000' AS DateTime), N'540.00', N'02', N'Nice Ribon', 1, CAST(N'2023-02-13T16:22:19.877' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (4, NULL, N'Print Label', N'P-123', CAST(N'2023-02-13T00:00:00.000' AS DateTime), CAST(N'2023-04-27T00:00:00.000' AS DateTime), N'541.00', N'41', N'Print Nice', 2, CAST(N'2023-02-13T16:25:05.030' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (5, NULL, N'Printer', N'V-124', CAST(N'2023-02-04T00:00:00.000' AS DateTime), CAST(N'2023-04-14T00:00:00.000' AS DateTime), N'50.00', N'124', N'Nice', 2, CAST(N'2023-02-13T16:42:05.550' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (6, NULL, N'Printer', N'V-124', CAST(N'2023-02-04T00:00:00.000' AS DateTime), CAST(N'2023-04-14T00:00:00.000' AS DateTime), N'50.00', N'124', N'Nice', 1, CAST(N'2023-02-13T16:55:53.297' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (7, NULL, N'Barcode Nice', N'B96', CAST(N'2023-02-15T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), N'50.00', N'84', N'Storage Condition', 1, CAST(N'2023-02-13T17:02:57.497' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (8, NULL, N'Printer', N'V-124', CAST(N'2023-02-04T00:00:00.000' AS DateTime), CAST(N'2023-04-14T00:00:00.000' AS DateTime), N'50.00', N'124', N'Nice', 1, CAST(N'2023-02-13T17:19:12.410' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (9, NULL, N'Barcode Label', N'654564', CAST(N'2023-02-09T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), N'50.00', N'01', N'Nice', 3, CAST(N'2023-02-13T17:25:07.763' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (10, NULL, N'Barcode Label', N'654564', CAST(N'2023-02-09T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), N'50.00', N'01', N'Nice', 3, CAST(N'2023-02-13T17:36:24.853' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (11, NULL, N'Barcode Label', N'B201', CAST(N'2023-02-01T00:00:00.000' AS DateTime), CAST(N'2023-02-10T00:00:00.000' AS DateTime), N'40.00', N'01', N'Nice', 1, CAST(N'2023-02-13T21:54:47.717' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (12, NULL, N'Barcode Label', N'654564', CAST(N'2023-02-09T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), N'50.00', N'01', N'Nice', 1, CAST(N'2023-02-14T11:40:01.410' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (13, NULL, N'A4 Paper', N'A201', CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), N'50.00', N'100', N'Nice Storage Condition', 2, CAST(N'2023-02-14T11:55:18.923' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (14, NULL, N'A4 Paper', N'A201', CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), N'50.00', N'100', N'Nice Storage Condition', 2, CAST(N'2023-02-14T12:38:30.737' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (15, NULL, N'A4 Paper', N'A201', CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), N'50.00', N'100', N'Nice Storage Condition', 2, CAST(N'2023-02-14T12:47:26.090' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (16, NULL, N'Barcode Label', N'654564', CAST(N'2023-02-09T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), N'50.00', N'01', N'Nice', 1, CAST(N'2023-02-14T12:49:25.090' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (17, NULL, N'A4 Paper', N'A201', CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), N'50.00', N'100', N'Nice Storage Condition', 2, CAST(N'2023-02-14T12:52:05.410' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (18, NULL, N'Barcode Label', N'B201', CAST(N'2023-02-01T00:00:00.000' AS DateTime), CAST(N'2023-02-10T00:00:00.000' AS DateTime), N'40.00', N'01', N'Nice', 1, CAST(N'2023-02-14T12:55:20.427' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (19, NULL, N'A4 Paper', N'A201', CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), N'50.00', N'100', N'Nice Storage Condition', 2, CAST(N'2023-02-14T12:59:05.020' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (20, NULL, N'A4 Paper', N'A201', CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), N'50.00', N'100', N'Nice Storage Condition', 2, CAST(N'2023-02-14T13:10:35.247' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (21, NULL, N'A4 Paper', N'A201', CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), N'50.00', N'100', N'Nice Storage Condition', 2, CAST(N'2023-02-14T13:14:45.790' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (22, NULL, N'A4 Paper', N'A201', CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), N'50.00', N'100', N'Nice Storage Condition', 2, CAST(N'2023-02-14T13:17:52.350' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (23, NULL, N'A4 Paper', N'A201', CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), N'50.00', N'100', N'Nice Storage Condition', 2, CAST(N'2023-02-14T14:04:51.450' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (24, NULL, N'Barcode Label', N'654564', CAST(N'2023-02-09T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), N'50.00', N'01', N'Nice', 1, CAST(N'2023-02-14T14:14:00.740' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (25, NULL, N'Barcode Label', N'654564', CAST(N'2023-02-09T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), N'50.00', N'01', N'Nice', 1, CAST(N'2023-02-14T14:22:19.070' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (26, NULL, N'A4 Paper', N'A201', CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), N'50.00', N'100', N'Nice Storage Condition', 2, CAST(N'2023-02-14T14:40:37.977' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (27, NULL, N'Print Label', N'P-123', CAST(N'2023-02-13T00:00:00.000' AS DateTime), CAST(N'2023-04-27T00:00:00.000' AS DateTime), N'541.00', N'41', N'Print Nice', 1, CAST(N'2023-02-14T14:46:39.290' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (28, NULL, N'Barcode Print Label', N'184', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), N'10.00', N'S10', N'Nice', 3, CAST(N'2023-02-14T14:48:30.250' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (29, NULL, N'Barcode Print Label', N'184', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), N'10.00', N'S10', N'Nice', 3, CAST(N'2023-02-14T15:06:17.350' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (30, NULL, N'Barcode Print Label', N'184', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), N'10.00', N'S10', N'Nice', 3, CAST(N'2023-02-14T16:43:25.223' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (31, NULL, N'Nice Product', N'20100', CAST(N'2023-02-12T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), N'10.00', N'524', N'Nice Condition', 3, CAST(N'2023-02-14T16:51:35.733' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (32, NULL, N'Nice Product', N'20100', CAST(N'2023-02-12T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), N'10.00', N'524', N'Nice Condition', 3, CAST(N'2023-02-14T16:55:17.773' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (33, NULL, N'Nice Product', N'20100', CAST(N'2023-02-12T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), N'10.00', N'524', N'Nice Condition', 3, CAST(N'2023-02-14T16:57:10.957' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (34, NULL, N'A4 Paper', N'A201', CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), N'50.00', N'100', N'Nice Storage Condition', 2, CAST(N'2023-02-14T17:16:56.357' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (35, NULL, N'A4 Paper', N'A201', CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), N'50.00', N'100', N'Nice Storage Condition', 2, CAST(N'2023-02-14T17:17:29.070' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (36, NULL, N'Nice Product', N'20100', CAST(N'2023-02-12T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), N'10.00', N'524', N'Nice Condition', 3, CAST(N'2023-02-14T17:18:38.307' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (37, NULL, N'Barcode Print Label', N'184', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), N'10.00', N'S10', N'Nice', 2, CAST(N'2023-02-14T17:32:28.657' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (38, NULL, N'Barcode Print Label', N'184', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), N'10.00', N'S10', N'Nice', 2, CAST(N'2023-02-14T17:32:47.153' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (39, NULL, N'Barcode Print Label', N'184', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), N'10.00', N'S10', N'Nice', 2, CAST(N'2023-02-14T17:38:53.563' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (40, NULL, N'Barcode Print Label', N'184', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), N'10.00', N'S10', N'Nice', 2, CAST(N'2023-02-14T17:45:44.200' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (41, NULL, N'Nice Product', N'20100', CAST(N'2023-02-12T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), N'10.00', N'524', N'Nice Condition', 1, CAST(N'2023-02-14T17:49:14.483' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (42, NULL, N'xyc', N'0003', CAST(N'2023-02-08T00:00:00.000' AS DateTime), CAST(N'2023-02-03T00:00:00.000' AS DateTime), N'45.00', N'567', N'good', 3, CAST(N'2023-02-14T17:53:16.217' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (43, NULL, N'xyc', N'0003', CAST(N'2023-02-08T00:00:00.000' AS DateTime), CAST(N'2023-02-03T00:00:00.000' AS DateTime), N'45.00', N'567', N'good', 3, CAST(N'2023-02-15T16:12:09.667' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (44, NULL, N'xyc', N'0003', CAST(N'2023-02-08T00:00:00.000' AS DateTime), CAST(N'2023-02-03T00:00:00.000' AS DateTime), N'45.00', N'567', N'good', 3, CAST(N'2023-02-15T16:29:26.360' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (45, NULL, N'xyc', N'0003', CAST(N'2023-02-08T00:00:00.000' AS DateTime), CAST(N'2023-02-03T00:00:00.000' AS DateTime), N'45.00', N'567', N'good', 3, CAST(N'2023-02-15T16:32:19.583' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (46, NULL, N'xyc', N'0003', CAST(N'2023-02-08T00:00:00.000' AS DateTime), CAST(N'2023-02-03T00:00:00.000' AS DateTime), N'45.00', N'567', N'good', 3, CAST(N'2023-02-15T16:32:52.680' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (47, NULL, N'Barcode Print Label', N'184', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), N'10.00', N'S10', N'Nice', 2, CAST(N'2023-02-16T11:14:16.110' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (48, NULL, N'Barcode Print Label', N'184', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), N'10.00', N'S10', N'Nice', 2, CAST(N'2023-02-16T11:15:04.273' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (49, NULL, N'xyc', N'0003', CAST(N'2023-02-08T00:00:00.000' AS DateTime), CAST(N'2023-02-03T00:00:00.000' AS DateTime), N'45.00', N'567', N'good', 3, CAST(N'2023-02-16T11:15:51.210' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (50, NULL, N'xyc', N'0003', CAST(N'2023-02-08T00:00:00.000' AS DateTime), CAST(N'2023-02-03T00:00:00.000' AS DateTime), N'45.00', N'567', N'good', 3, CAST(N'2023-02-16T11:15:59.857' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (51, NULL, N'xyc', N'0003', CAST(N'2023-02-08T00:00:00.000' AS DateTime), CAST(N'2023-02-03T00:00:00.000' AS DateTime), N'45.00', N'567', N'good', 3, CAST(N'2023-02-16T11:16:51.703' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (52, NULL, N'Barcode Label xyz', N'B-014', CAST(N'2023-02-16T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), N'10.00', N'S-1234', N'Nice', 1, CAST(N'2023-02-16T11:18:32.490' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (53, NULL, N'Barcode Label xyz', N'B-014', CAST(N'2023-02-16T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), N'10.00', N'S-1234', N'Nice', 1, CAST(N'2023-02-16T12:38:54.670' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (54, NULL, N'Barcode Label xyz', N'B-014', CAST(N'2023-02-16T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), N'10.00', N'S-1234', N'Nice', 1, CAST(N'2023-02-16T15:27:50.133' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (55, NULL, N'Barcode Label xyz', N'B-014', CAST(N'2023-02-16T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), N'10.00', N'S-1234', N'Nice', 1, CAST(N'2023-02-18T14:44:41.013' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (56, NULL, N'Barcode Label xyz', N'B-014', CAST(N'2023-02-16T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), N'10.00', N'S-1234', N'Nice', 1, CAST(N'2023-02-18T14:50:42.843' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (57, NULL, N'Barcode Label xyz', N'B-014', CAST(N'2023-02-16T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), N'10.00', N'S-1234', N'Nice', 1, CAST(N'2023-02-18T14:51:28.337' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (58, NULL, N'Barcode Label xyz', N'B-014', CAST(N'2023-02-16T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), N'10.00', N'S-1234', N'Nice', 1, CAST(N'2023-02-18T16:31:22.223' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (59, NULL, N'xyc', N'0003', CAST(N'2023-02-08T00:00:00.000' AS DateTime), CAST(N'2023-02-03T00:00:00.000' AS DateTime), N'45.00', N'567', N'good', 3, CAST(N'2023-02-18T16:39:27.193' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (60, NULL, N'Barcode Label xyz', N'B-014', CAST(N'2023-02-16T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), N'10.00', N'S-1234', N'Nice', 1, CAST(N'2023-02-18T17:38:38.610' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (61, NULL, N'Barcode Label xyz', N'B-014', CAST(N'2023-02-16T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), N'10.00', N'S-1234', N'Nice', 1, CAST(N'2023-02-22T12:35:52.220' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (62, NULL, N'Barcode Label xyz', N'B-014', CAST(N'2023-02-16T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), N'10.00', N'S-1234', N'Nice', 1, CAST(N'2023-02-22T14:48:25.880' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (63, NULL, N'RTL Barcode Label', N'B-101', CAST(N'2023-02-22T00:00:00.000' AS DateTime), CAST(N'2023-04-28T00:00:00.000' AS DateTime), N'500.00', N'501', N'Nice Storage Condition', 3, CAST(N'2023-02-22T15:05:23.853' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (64, NULL, N'RTL Barcode Label', N'B-101', CAST(N'2023-02-22T00:00:00.000' AS DateTime), CAST(N'2023-04-28T00:00:00.000' AS DateTime), N'500.00', N'501', N'Nice Storage Condition', 3, CAST(N'2023-02-22T15:14:46.723' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (65, NULL, N'RTL Barcode Label', N'B-101', CAST(N'2023-02-22T00:00:00.000' AS DateTime), CAST(N'2023-04-28T00:00:00.000' AS DateTime), N'500.00', N'501', N'Nice Storage Condition', 3, CAST(N'2023-02-22T15:14:55.177' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (66, NULL, N'Barcode Label xyz', N'B-014', CAST(N'2023-02-16T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), N'10.00', N'S-1234', N'Nice', 1, CAST(N'2023-02-22T16:00:44.303' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (67, NULL, N'Barcode Label xyz', N'B-014', CAST(N'2023-02-16T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), N'10.00', N'S-1234', N'Nice', 1, CAST(N'2023-02-23T17:17:50.457' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (68, NULL, N'RTL Barcode Label', N'B-101', CAST(N'2023-02-22T00:00:00.000' AS DateTime), CAST(N'2023-04-28T00:00:00.000' AS DateTime), N'500.00', N'501', N'Nice Storage Condition', 3, CAST(N'2023-02-23T17:57:11.583' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (69, NULL, N'RTL Barcode Label', N'B-101', CAST(N'2023-02-22T00:00:00.000' AS DateTime), CAST(N'2023-04-28T00:00:00.000' AS DateTime), N'500.00', N'501', N'Nice Storage Condition', 3, CAST(N'2023-02-25T11:41:53.623' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (70, NULL, N'RTL Barcode Label', N'B-101', CAST(N'2023-02-22T00:00:00.000' AS DateTime), CAST(N'2023-04-28T00:00:00.000' AS DateTime), N'500.00', N'501', N'Nice Storage Condition', 3, CAST(N'2023-02-25T11:45:44.580' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (71, NULL, N'RTL Barcode Label', N'B-101', CAST(N'2023-02-22T00:00:00.000' AS DateTime), CAST(N'2023-04-28T00:00:00.000' AS DateTime), N'500.00', N'501', N'Nice Storage Condition', 3, CAST(N'2023-02-25T12:41:06.517' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (72, NULL, N'Barcode Nice', N'B96', CAST(N'2023-02-15T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), N'50.00', N'84', N'Storage Condition', 1, CAST(N'2023-02-25T12:50:50.793' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (73, NULL, N'Barcode Nice', N'B96', CAST(N'2023-02-15T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), N'50.00', N'84', N'Storage Condition', 1, CAST(N'2023-02-25T12:51:06.050' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (74, NULL, N'Product Label', N'B-202', CAST(N'2023-02-25T00:00:00.000' AS DateTime), CAST(N'2023-04-29T00:00:00.000' AS DateTime), N'540.00', N'SL-102', N'Nice Condition', 3, CAST(N'2023-02-25T12:52:22.767' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (75, NULL, N'Product Label', N'B-202', CAST(N'2023-02-25T00:00:00.000' AS DateTime), CAST(N'2023-04-29T00:00:00.000' AS DateTime), N'540.00', N'SL-102', N'Nice Condition', 3, CAST(N'2023-02-27T13:14:53.420' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (76, NULL, N'DEXEND 30 CAPSULE', N'230291', CAST(N'2023-02-23T00:00:00.000' AS DateTime), CAST(N'2025-01-31T00:00:00.000' AS DateTime), N'264 X 1X 2''S PACK''S', N'001', N'NMT 30''C TEMPERATURE', 3, CAST(N'2023-02-27T15:05:12.870' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (77, NULL, N'DEXEND 30 CAPSULE', N'230291', CAST(N'2023-02-23T00:00:00.000' AS DateTime), CAST(N'2025-01-31T00:00:00.000' AS DateTime), N'264 X 1X 2''S PACK''S', N'001', N'NMT 30''C TEMPERATURE', 3, CAST(N'2023-02-27T15:07:20.470' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (78, NULL, N'DEXEND 30 CAPSULE', N'230291', CAST(N'2023-02-23T00:00:00.000' AS DateTime), CAST(N'2025-01-31T00:00:00.000' AS DateTime), N'264 X 1X 2''S PACK''S', N'002', N'NMT 30°C TEMPERATURE', 3, CAST(N'2023-02-27T15:10:30.150' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (79, NULL, N'DEXEND 30 CAPSULE', N'230291', CAST(N'2023-02-23T00:00:00.000' AS DateTime), CAST(N'2025-01-31T00:00:00.000' AS DateTime), N'264 X 1X 2''S PACK''S', N'002', N'NMT 30°C TEMPERATURE', 3, CAST(N'2023-02-27T15:18:09.407' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (80, NULL, N'DEXEND 30 CAPSULE', N'230291', CAST(N'2023-02-23T00:00:00.000' AS DateTime), CAST(N'2025-01-31T00:00:00.000' AS DateTime), N'264 X 1X 2''S PACK''S', N'002', N'NMT 30°C TEMPERATURE', 3, CAST(N'2023-02-28T14:04:22.563' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (81, NULL, N'DEXEND 30 CAPSULE', N'230291', CAST(N'2023-02-23T00:00:00.000' AS DateTime), CAST(N'2025-01-31T00:00:00.000' AS DateTime), N'264 X 1X 2''S PACK''S', N'002', N'NMT 30°C TEMPERATURE', 3, CAST(N'2023-03-01T11:14:49.307' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (82, 3, N'Nice Label', N'N-0124', CAST(N'2023-02-28T00:00:00.000' AS DateTime), CAST(N'2025-06-11T00:00:00.000' AS DateTime), N'264 X 1 X 2''S PACK''S', N'00124', N'Nice Condition', 3, CAST(N'2023-03-01T13:30:21.707' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (83, 1, N'DEXEND 30 CAPSULE', N'230291', CAST(N'2023-02-23T00:00:00.000' AS DateTime), CAST(N'2025-01-31T00:00:00.000' AS DateTime), N'264 X 1X 2''S PACK''S', N'002', N'NMT 30°C TEMPERATURE', 3, CAST(N'2023-03-01T13:33:03.713' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (84, 3, N'Nice Label', N'N-0124', CAST(N'2023-02-28T00:00:00.000' AS DateTime), CAST(N'2025-06-11T00:00:00.000' AS DateTime), N'264 X 1 X 2''S PACK''S', N'00124', N'Nice Condition', 3, CAST(N'2023-03-01T13:34:40.960' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (85, 3, N'Nice Label', N'N-0124', CAST(N'2023-02-28T00:00:00.000' AS DateTime), CAST(N'2025-06-11T00:00:00.000' AS DateTime), N'264 X 1 X 2''S PACK''S', N'00124', N'Nice Condition', 3, CAST(N'2023-03-01T13:36:45.873' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (86, 6, N'Nice Label', N'B-2012', CAST(N'2023-03-01T00:00:00.000' AS DateTime), CAST(N'2023-05-27T00:00:00.000' AS DateTime), N'260 PCS', N'0124', N'250°C Temparature', 3, CAST(N'2023-03-01T14:23:13.187' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (87, 6, N'Nice Label', N'B-2012', CAST(N'2023-03-01T00:00:00.000' AS DateTime), CAST(N'2023-05-27T00:00:00.000' AS DateTime), N'260 PCS', N'0124', N'250°C Temparature', 3, CAST(N'2023-03-01T14:26:14.170' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (88, 6, N'Nice Label', N'B-2012', CAST(N'2023-03-01T00:00:00.000' AS DateTime), CAST(N'2023-05-27T00:00:00.000' AS DateTime), N'260 PCS', N'0124', N'250°C Temparature', 3, CAST(N'2023-03-01T14:27:55.360' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (89, 6, N'Nice Label', N'B-2012', CAST(N'2023-03-01T00:00:00.000' AS DateTime), CAST(N'2023-05-27T00:00:00.000' AS DateTime), N'260 PCS', N'0124', N'250°C Temparature', 3, CAST(N'2023-03-01T14:29:39.567' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (90, 6, N'Nice Label', N'B-2012', CAST(N'2023-03-01T00:00:00.000' AS DateTime), CAST(N'2023-05-27T00:00:00.000' AS DateTime), N'260 PCS', N'0124', N'250°C Temparature', 3, CAST(N'2023-03-01T14:30:30.430' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (91, 6, N'Nice Label', N'B-2012', CAST(N'2023-03-01T00:00:00.000' AS DateTime), CAST(N'2023-05-27T00:00:00.000' AS DateTime), N'260 PCS', N'0124', N'250°C Temparature', 3, CAST(N'2023-03-05T09:36:41.103' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (92, 6, N'Nice Label', N'B-2012', CAST(N'2023-03-01T00:00:00.000' AS DateTime), CAST(N'2023-05-27T00:00:00.000' AS DateTime), N'260 PCS', N'0124', N'250°C Temparature', 3, CAST(N'2023-03-05T09:37:59.077' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (93, 3, N'Nice Label', N'N-0124', CAST(N'2023-02-28T00:00:00.000' AS DateTime), CAST(N'2025-06-11T00:00:00.000' AS DateTime), N'264 X 1 X 2''S PACK''S', N'00124', N'Nice Condition', 3, CAST(N'2023-03-05T09:39:01.187' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (94, 3, N'Nice Label', N'N-0124', CAST(N'2023-02-28T00:00:00.000' AS DateTime), CAST(N'2025-06-11T00:00:00.000' AS DateTime), N'264 X 1 X 2''S PACK''S', N'00124', N'Nice Condition', 3, CAST(N'2023-03-05T09:39:42.663' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (95, 6, N'Nice Label', N'B-2012', CAST(N'2023-03-01T00:00:00.000' AS DateTime), CAST(N'2023-05-27T00:00:00.000' AS DateTime), N'260 PCS', N'0124', N'250°C Temparature', 3, CAST(N'2023-03-05T09:40:23.810' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (96, 10, N'asdasfas', N'B-0124', CAST(N'2023-03-05T00:00:00.000' AS DateTime), CAST(N'2024-03-05T00:00:00.000' AS DateTime), N'250 Pcs', N'01', N'Nice', 3, CAST(N'2023-03-05T13:20:57.630' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (97, 10, N'asdasfas', N'B-0124', CAST(N'2023-03-05T00:00:00.000' AS DateTime), CAST(N'2024-03-05T00:00:00.000' AS DateTime), N'250 Pcs', N'01', N'Nice', 3, CAST(N'2023-03-05T13:21:14.993' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (98, 10, N'asdasfas', N'B-0124', CAST(N'2023-03-05T00:00:00.000' AS DateTime), CAST(N'2024-03-05T00:00:00.000' AS DateTime), N'250 Pcs', N'01', N'Nice', 3, CAST(N'2023-03-05T13:21:33.300' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (99, 10, N'asdasfas', N'B-0124', CAST(N'2023-03-05T00:00:00.000' AS DateTime), CAST(N'2024-03-05T00:00:00.000' AS DateTime), N'250 Pcs', N'01', N'Nice', 3, CAST(N'2023-03-05T13:21:37.360' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (100, 10, N'asdasfas', N'B-0124', CAST(N'2023-03-05T00:00:00.000' AS DateTime), CAST(N'2024-03-05T00:00:00.000' AS DateTime), N'250 Pcs', N'01', N'Nice', 3, CAST(N'2023-03-05T13:22:24.407' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (101, NULL, N'asdasfas', N'B-0124', CAST(N'2023-03-05T00:00:00.000' AS DateTime), CAST(N'2024-03-05T00:00:00.000' AS DateTime), N'250 Pcs', N'01', N'Nice', 3, CAST(N'2023-03-06T12:21:45.577' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (102, NULL, N'Nice Label', N'B-2012', CAST(N'2023-03-01T00:00:00.000' AS DateTime), CAST(N'2023-05-27T00:00:00.000' AS DateTime), N'260 PCS', N'0124', N'250°C Temparature', 3, CAST(N'2023-03-06T12:22:44.300' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (103, NULL, N'Product Label 02', N'B-0124', CAST(N'2023-03-05T00:00:00.000' AS DateTime), CAST(N'2024-03-05T00:00:00.000' AS DateTime), N'250 Pcs', N'01', N'Nice', 3, CAST(N'2023-03-06T12:41:57.387' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (104, NULL, N'Product Label 02', N'B-0124', CAST(N'2023-03-05T00:00:00.000' AS DateTime), CAST(N'2024-03-05T00:00:00.000' AS DateTime), N'250 Pcs', N'01', N'Nice', 3, CAST(N'2023-03-06T12:43:20.880' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (105, NULL, N'Product Label 02', N'B-0124', CAST(N'2023-03-05T00:00:00.000' AS DateTime), CAST(N'2024-03-05T00:00:00.000' AS DateTime), N'250 Pcs', N'01', N'Nice', 3, CAST(N'2023-03-06T12:47:01.517' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (106, NULL, N'Product Label 02', N'B-0124', CAST(N'2023-03-05T00:00:00.000' AS DateTime), CAST(N'2024-03-05T00:00:00.000' AS DateTime), N'250 Pcs', N'01', N'Nice', 3, CAST(N'2023-03-06T12:48:09.233' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (107, NULL, N'Product Label 02', N'B-0124', CAST(N'2023-03-05T00:00:00.000' AS DateTime), CAST(N'2024-03-05T00:00:00.000' AS DateTime), N'250 Pcs', N'01', N'Nice', 3, CAST(N'2023-03-06T14:34:08.987' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (108, NULL, N'Product Label 02', N'B-0124', CAST(N'2023-03-05T00:00:00.000' AS DateTime), CAST(N'2024-03-05T00:00:00.000' AS DateTime), N'250 Pcs', N'01', N'Nice', 3, CAST(N'2023-03-06T14:35:12.027' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (109, NULL, N'Product Label 02', N'B-0124', CAST(N'2023-03-05T00:00:00.000' AS DateTime), CAST(N'2024-03-05T00:00:00.000' AS DateTime), N'250 Pcs', N'01', N'Nice', 3, CAST(N'2023-03-06T16:43:41.370' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (110, NULL, N'Product Label 02', N'B-0124', CAST(N'2023-03-05T00:00:00.000' AS DateTime), CAST(N'2024-03-05T00:00:00.000' AS DateTime), N'250 Pcs', N'01', N'Nice', 3, CAST(N'2023-03-07T11:08:06.693' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (111, NULL, N'Product Label', N'B-0123', CAST(N'2023-03-07T00:00:00.000' AS DateTime), CAST(N'2025-01-07T00:00:00.000' AS DateTime), N'250 PCS', N'0124', N'Nice Storage', 12, CAST(N'2023-03-07T12:17:43.253' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (112, NULL, N'Product Label', N'B-0123', CAST(N'2023-03-07T00:00:00.000' AS DateTime), CAST(N'2025-01-07T00:00:00.000' AS DateTime), N'250 PCS', N'0124', N'Nice Storage', 12, CAST(N'2023-03-07T13:17:50.317' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (113, NULL, N'Product Label', N'B-0123', CAST(N'2023-03-07T00:00:00.000' AS DateTime), CAST(N'2025-01-07T00:00:00.000' AS DateTime), N'250 PCS', N'0124', N'Nice Storage', 12, CAST(N'2023-03-07T13:18:04.730' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (114, NULL, N'Product Label', N'B-0123', CAST(N'2023-03-07T00:00:00.000' AS DateTime), CAST(N'2025-01-07T00:00:00.000' AS DateTime), N'250 PCS', N'0124', N'Nice Storage', 12, CAST(N'2023-03-07T13:18:15.400' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [FormVersionId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [SrNo], [StorageCondition], [PrintById], [PrintDate]) VALUES (115, NULL, N'adsfas', N'asdfas', CAST(N'2023-03-07T00:00:00.000' AS DateTime), CAST(N'2023-03-07T00:00:00.000' AS DateTime), N'2510', N'45', N'fdsgsd', 1, CAST(N'2023-03-07T13:18:44.690' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ProductLabelPrintList] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_FormTemplate] ON 
GO
INSERT [dbo].[tbl_FormTemplate] ([FromTemplateId], [TemplateName]) VALUES (1, N'Product Label')
GO
INSERT [dbo].[tbl_FormTemplate] ([FromTemplateId], [TemplateName]) VALUES (2, N'Process Label')
GO
INSERT [dbo].[tbl_FormTemplate] ([FromTemplateId], [TemplateName]) VALUES (3, N'Cleaned')
GO
INSERT [dbo].[tbl_FormTemplate] ([FromTemplateId], [TemplateName]) VALUES (4, N'Partially Cleaned')
GO
INSERT [dbo].[tbl_FormTemplate] ([FromTemplateId], [TemplateName]) VALUES (5, N'QA Passed')
GO
INSERT [dbo].[tbl_FormTemplate] ([FromTemplateId], [TemplateName]) VALUES (6, N'QA Quarantined')
GO
INSERT [dbo].[tbl_FormTemplate] ([FromTemplateId], [TemplateName]) VALUES (7, N'AreaOrEquipment')
GO
INSERT [dbo].[tbl_FormTemplate] ([FromTemplateId], [TemplateName]) VALUES (8, N'Material Dispensing Slip')
GO
SET IDENTITY_INSERT [dbo].[tbl_FormTemplate] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_FormTemplateVersion] ON 
GO
INSERT [dbo].[tbl_FormTemplateVersion] ([FormVersionId], [FormTemplateId], [FormNo], [VersionNo], [FormVersionDate], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (1, 1, N'SOP/QCOM/008/XV', N'01', CAST(N'2023-02-27T16:49:27.863' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_FormTemplateVersion] ([FormVersionId], [FormTemplateId], [FormNo], [VersionNo], [FormVersionDate], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (3, 2, N'SOP/QCOM/008/XY', N'02', CAST(N'2023-02-28T14:34:18.133' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_FormTemplateVersion] ([FormVersionId], [FormTemplateId], [FormNo], [VersionNo], [FormVersionDate], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (4, 3, N'SOP/XV', N'01', CAST(N'2023-03-01T12:48:52.523' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_FormTemplateVersion] ([FormVersionId], [FormTemplateId], [FormNo], [VersionNo], [FormVersionDate], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (5, 5, N' Form/QC/SY', N'02', CAST(N'2023-03-01T12:55:27.060' AS DateTime), NULL, NULL, 3, CAST(N'2023-03-05T16:54:36.763' AS DateTime))
GO
INSERT [dbo].[tbl_FormTemplateVersion] ([FormVersionId], [FormTemplateId], [FormNo], [VersionNo], [FormVersionDate], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (6, 4, N'PC/FormNo/01', N'03', CAST(N'2023-03-01T13:03:04.927' AS DateTime), NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[tbl_FormTemplateVersion] ([FormVersionId], [FormTemplateId], [FormNo], [VersionNo], [FormVersionDate], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (7, 6, N'FORM NO/Q', N'04', CAST(N'2023-03-01T13:05:36.777' AS DateTime), NULL, NULL, 3, CAST(N'2023-03-05T10:55:20.963' AS DateTime))
GO
INSERT [dbo].[tbl_FormTemplateVersion] ([FormVersionId], [FormTemplateId], [FormNo], [VersionNo], [FormVersionDate], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (8, 5, N'QA/FOM/X1', N'04', CAST(N'2023-03-05T10:58:33.307' AS DateTime), 3, CAST(N'2023-03-05T10:58:33.307' AS DateTime), 3, CAST(N'2023-03-05T10:58:49.557' AS DateTime))
GO
INSERT [dbo].[tbl_FormTemplateVersion] ([FormVersionId], [FormTemplateId], [FormNo], [VersionNo], [FormVersionDate], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (9, 7, N'ARE/Fom/X123', N'01', CAST(N'2023-03-05T11:00:27.633' AS DateTime), 3, CAST(N'2023-03-05T11:00:27.633' AS DateTime), 3, CAST(N'2023-03-05T11:00:27.633' AS DateTime))
GO
INSERT [dbo].[tbl_FormTemplateVersion] ([FormVersionId], [FormTemplateId], [FormNo], [VersionNo], [FormVersionDate], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (10, 2, N'Form/xyz', N'06', CAST(N'2023-03-05T13:18:07.447' AS DateTime), 3, CAST(N'2023-03-05T13:18:07.447' AS DateTime), 1, CAST(N'2023-03-07T13:17:00.450' AS DateTime))
GO
INSERT [dbo].[tbl_FormTemplateVersion] ([FormVersionId], [FormTemplateId], [FormNo], [VersionNo], [FormVersionDate], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (11, 2, N'PL/Form/X', N'01', CAST(N'2023-03-06T10:23:47.727' AS DateTime), 3, CAST(N'2023-03-06T10:23:47.727' AS DateTime), 3, CAST(N'2023-03-06T10:23:55.747' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tbl_FormTemplateVersion] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_ProcessLabel] ON 
GO
INSERT [dbo].[tbl_ProcessLabel] ([ProcessLabelId], [FormVersionId], [ProductName], [BatchNo], [BatchSize], [Status], [MfgDate], [ExpDate], [ContNo], [GrossWt], [TareWt], [NetWt], [CheckedBy], [CheckedDate], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (1, 1, N'Process Label', N'01', N'25X25', N'Nice', CAST(N'2023-01-01T00:00:00.000' AS DateTime), CAST(N'2025-01-01T00:00:00.000' AS DateTime), N'10', N'250kg', N'10kg', N'260kg', 3, CAST(N'2023-03-05T00:00:00.000' AS DateTime), 3, CAST(N'2023-03-05T00:00:00.000' AS DateTime), 3, CAST(N'2023-03-05T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[tbl_ProcessLabel] ([ProcessLabelId], [FormVersionId], [ProductName], [BatchNo], [BatchSize], [Status], [MfgDate], [ExpDate], [ContNo], [GrossWt], [TareWt], [NetWt], [CheckedBy], [CheckedDate], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (2, 11, N'Process Label Product', N'B-012', N'21X25', N'Process Label Status', CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(N'2025-12-06T00:00:00.000' AS DateTime), N'95', N'50kg', N'10kg', N'60kg', 3, CAST(N'2023-03-06T00:00:00.000' AS DateTime), 3, CAST(N'2023-03-06T10:25:44.270' AS DateTime), 3, CAST(N'2023-03-06T10:45:16.183' AS DateTime))
GO
INSERT [dbo].[tbl_ProcessLabel] ([ProcessLabelId], [FormVersionId], [ProductName], [BatchNo], [BatchSize], [Status], [MfgDate], [ExpDate], [ContNo], [GrossWt], [TareWt], [NetWt], [CheckedBy], [CheckedDate], [CreatorId], [CreateDate], [UpdatorId], [UpdateDate]) VALUES (3, 7, N'Process Label 03', N'B-03', N'303 X 205 ', N'Nice Status', CAST(N'2023-03-06T00:00:00.000' AS DateTime), CAST(N'2026-06-16T00:00:00.000' AS DateTime), N'10', N'95 kg', N'10 kg ', N'105 kg', 3, CAST(N'2023-03-06T00:00:00.000' AS DateTime), 3, CAST(N'2023-03-06T17:19:25.467' AS DateTime), 3, CAST(N'2023-03-06T17:20:00.157' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tbl_ProcessLabel] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_Role] ON 
GO
INSERT [dbo].[tbl_Role] ([RoleId], [RoleName]) VALUES (1, N'Admin')
GO
INSERT [dbo].[tbl_Role] ([RoleId], [RoleName]) VALUES (2, N'User')
GO
INSERT [dbo].[tbl_Role] ([RoleId], [RoleName]) VALUES (3, N'Guest')
GO
SET IDENTITY_INSERT [dbo].[tbl_Role] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_User] ON 
GO
INSERT [dbo].[tbl_User] ([UserId], [RoleId], [UserName], [DisplayName], [Password], [Email], [Phone], [IsActive]) VALUES (1, 1, N'Admin', N'Admin User', N'1234', N'User@gmail.com', N'12345', 1)
GO
INSERT [dbo].[tbl_User] ([UserId], [RoleId], [UserName], [DisplayName], [Password], [Email], [Phone], [IsActive]) VALUES (3, 1, N'Belal', N'Belal Hossain', N'1234', N'User@gmail.com', N'12345', 1)
GO
INSERT [dbo].[tbl_User] ([UserId], [RoleId], [UserName], [DisplayName], [Password], [Email], [Phone], [IsActive]) VALUES (4, 2, N'Abir', N'Abir Hossain', N'1234', N'abir@gmail.com', N'01715716388', 1)
GO
INSERT [dbo].[tbl_User] ([UserId], [RoleId], [UserName], [DisplayName], [Password], [Email], [Phone], [IsActive]) VALUES (5, 2, N'Shovo', N'Mokabbir Hossain', N'1234', N'shovo@gmail.com', N'01715716388', 1)
GO
INSERT [dbo].[tbl_User] ([UserId], [RoleId], [UserName], [DisplayName], [Password], [Email], [Phone], [IsActive]) VALUES (11, 2, N'Harun', N'Harun Hossain', N'1234', N'harun@gmail.com', N'01815', 1)
GO
INSERT [dbo].[tbl_User] ([UserId], [RoleId], [UserName], [DisplayName], [Password], [Email], [Phone], [IsActive]) VALUES (12, 2, N'Anik', N'Anik Hossain', N'1234', N'anik@gmail.com', N'01715716388', 1)
GO
SET IDENTITY_INSERT [dbo].[tbl_User] OFF
GO
ALTER TABLE [dbo].[tbl_FormTemplateVersion] ADD  CONSTRAINT [DF__tbl_FormV__FormV__3E52440B]  DEFAULT (getdate()) FOR [FormVersionDate]
GO
ALTER TABLE [dbo].[tbl_User] ADD  CONSTRAINT [DF_tbl_User_IsActive]  DEFAULT ((0)) FOR [IsActive]
GO
/****** Object:  StoredProcedure [dbo].[ProcessLabel_UserWiseGetAll]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ProcessLabel_UserWiseGetAll] 
(
	@UserId INT
)
AS
BEGIN
SELECT SL= ROW_NUMBER() OVER (ORDER BY PRL.ProcessLabelId DESC)
	  ,[PRL].[ProcessLabelId]    
      ,[PRL].[ProductName]
      ,[PRL].[BatchNo]
      ,[PRL].[BatchSize]
      ,[PRL].[Status]
      ,[PRL].[MfgDate]
      ,[PRL].[ExpDate]
      ,[PRL].[ContNo]
      ,[PRL].[GrossWt]
      ,[PRL].[TareWt]
      ,[PRL].[NetWt]
	  ,[FormVersionId]=ISNULL(PRL.[FormVersionId],0)
	  ,FormVersionNo='Form No : '+FTV.FormNo+'- Version No : '+ FTV.VersionNo
  FROM [dbo].[tbl_ProcessLabel] PRL
  LEFT JOIN tbl_FormTemplateVersion FTV ON FTV.FormVersionId=PRL.FormVersionId
  WHERE 
	 ((SELECT RoleId FROM tbl_User WHERE UserId=@UserId)=1) 
	 OR PRL.CheckedBy=@UserId

  ORDER BY PRL.ProcessLabelId DESC
END

GO
/****** Object:  StoredProcedure [dbo].[ProductLabel_GetAll]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ProductLabel_GetAll] 
(
	@UserId INT
)
AS
BEGIN
SELECT 
	   SL= ROW_NUMBER() OVER (ORDER BY PL.ProductLabelId DESC)
	  ,PL.ProductLabelId
	  ,PL.[ProductName]
      ,PL.[BatchNo]
      ,PL.[MfgDate]
      ,PL.[ExpDate]
      ,PL.[PackQuantity]
      ,PL.[SrNo]
      ,PL.[StorageCondition]
	  ,[FormVersionId]=ISNULL(PL.[FormVersionId],0)
	  ,FormVersionNo='Form No : '+FTV.FormNo+'- Version No : '+ FTV.VersionNo
FROM [dbo].[ProductLabel] PL
	 LEFT JOIN tbl_FormTemplateVersion FTV ON FTV.FormVersionId=PL.FormVersionId
	 WHERE 
	 ((SELECT RoleId FROM tbl_User WHERE UserId=@UserId)=1) 
	 OR PL.PackedBy=@UserId			 
ORDER BY PL.ProductLabelId DESC
END


GO
/****** Object:  StoredProcedure [dbo].[Rpt_ProcessLabelPrintList_UserWisePrintListWithDateRange]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Rpt_ProcessLabelPrintList_UserWisePrintListWithDateRange] 
(
	@PrintById INT
   ,@FromDate  DATETIME=NULL
   ,@ToDate    DATETIME=NULL
)
AS
BEGIN
SELECT 
	   SL= ROW_NUMBER() OVER (ORDER BY PRL.ProcessLabelId DESC)
	  --,[PRL].[ProcessLabelId]
      --,[PRL].[FormVersionId]
      ,[PRL].[ProductName]
	  ,[PRL].[PrintDate]
      ,[PRL].[BatchNo]
      ,[PRL].[BatchSize]
      ,[PRL].[Status]
      ,[PRL].[MfgDate]
      ,[PRL].[ExpDate]
      ,[PRL].[ContNo]
      ,[PRL].[GrossWt]
      ,[PRL].[TareWt]
      ,[PRL].[NetWt]
      ,[CheckedBy]=(SELECT UserName FROM tbl_User WHERE UserId=[PRL].[CheckedBy])
      ,[PRL].[CheckedDate]
      ,[[PrintBy]=[U].[DisplayName]      
  FROM [ProcessLabelPrintList] PRL
  INNER JOIN tbl_User U ON U.UserId=PRL.PrintById
  WHERE  (((SELECT RoleId FROM tbl_User WHERE UserId=@PrintById)=1) OR PRL.PrintById=@PrintById)	
		AND ((CAST(PRL.PrintDate AS DATE) BETWEEN CAST(@FromDate AS DATE) AND CAST(@ToDate AS DATE))  OR (@FromDate IS NULL AND @ToDate IS NULL))

  ORDER BY PRL.ProcessLabelId DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllFormVersionNo]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [dbo].[sp_GetAllFormVersionNo]
AS
BEGIN
SELECT 
FormVersionId, 
FormNo, 
VersionNo,
FormVersion='Form No : '+FormNo+' - Version No : '+VersionNo
From tbl_FormTemplateVersion
ORDER BY FormVersionId DESC
END

GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllUser]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_GetAllUser]
(
	@UserId INT
)
AS
BEGIN
SELECT U.UserId, U.DisplayName 
	From tbl_User U
	WHERE 
	 ((SELECT RoleId FROM tbl_User WHERE UserId=@UserId)=1) 
	 OR U.UserId=@UserId	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetUserByUserNameAndPassword]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetUserByUserNameAndPassword]
(
	 @UserName NVARCHAR(50)
	,@Password NVARCHAR(50)
)
AS
BEGIN
SELECT  [U].[UserName]
	   ,[U].[DisplayName]
       ,[U].[Password]
	   ,[U].[UserId]
	   ,[R].[RoleName]
FROM [dbo].[tbl_User] U
INNER JOIN [dbo].[tbl_Role] R ON R.RoleId=U.RoleId
WHERE UserName=@UserName AND [Password]=@Password
END

GO
/****** Object:  StoredProcedure [dbo].[sp_PrintedListByUserOrDateRange]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_PrintedListByUserOrDateRange] 
(
	@PrintById INT
   ,@FromDate  DATETIME=NULL
   ,@ToDate    DATETIME=NULL
)
AS
BEGIN
SELECT 
	   SL= ROW_NUMBER() OVER (ORDER BY PL.ProductPrintId DESC)
	  ,[PL].[ProductName]
	  ,[PL].[PrintDate]
      ,[PL].[BatchNo]
      ,[PL].[MfgDate]
      ,[PL].[ExpDate]
      ,[PL].[PackQuantity]    
      ,[PL].[SrNo]
      ,[PL].[StorageCondition]
	  ,PrintBy=[U].[DisplayName]
  FROM [dbo].[ProductLabelPrintList] PL
  INNER JOIN tbl_User U ON U.UserId=PL.PrintById
  WHERE  (((SELECT RoleId FROM tbl_User WHERE UserId=@PrintById)=1) OR PL.PrintById=@PrintById)	
		AND ((CAST(PL.PrintDate AS DATE) BETWEEN CAST(@FromDate AS DATE) AND CAST(@ToDate AS DATE))  OR (@FromDate IS NULL AND @ToDate IS NULL))

  ORDER BY PL.ProductPrintId DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ProductLabel_Create]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ProductLabel_Create]
(
	 @ProductName      NVARCHAR(250)
	,@BatchNo		   NVARCHAR(250)
	,@MfgDate		   DATETIME
	,@ExpDate		   DATETIME
	,@PackQuantity     NVARCHAR(250)
	,@PackedBy		   INT=NULL
	,@SrNo			    NVARCHAR(50)
	,@StorageCondition NVARCHAR(250)
)
AS
BEGIN
	INSERT INTO  [dbo].[ProductLabel] 
		(
			   [ProductName]
			  ,[BatchNo]
			  ,[MfgDate]
			  ,[ExpDate]
			  ,[PackQuantity]
			  ,[PackedBy]
			  ,[SrNo]
			  ,[StorageCondition]
		)
		VALUES 
		(
			 @ProductName  
			,@BatchNo		
			,@MfgDate		
			,@ExpDate		
			,@PackQuantity
			,@PackedBy		
			,@SrNo			
			,@StorageCondition
		)
SELECT SCOPE_IDENTITY()
END



GO
/****** Object:  StoredProcedure [dbo].[sp_ProductLabel_CreateOrUpdate]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ProductLabel_CreateOrUpdate]
(
	 @ProductLabelId   INT
	,@FormVersionId	   INT=NULL
	,@ProductName      NVARCHAR(250)
	,@BatchNo		   NVARCHAR(250)
	,@MfgDate		   DATETIME
	,@ExpDate		   DATETIME
	,@PackQuantity     NVARCHAR(250)
	,@PackedBy		   INT=NULL
	,@SrNo			   NVARCHAR(50)
	,@StorageCondition NVARCHAR(250)
	,@UpdatorId		   INT=NULL
)
AS
BEGIN
	IF (@ProductLabelId=0)
	BEGIN

		INSERT INTO  [dbo].[ProductLabel] 
			(
				   [FormVersionId]
				  ,[ProductName]
				  ,[BatchNo]
				  ,[MfgDate]
				  ,[ExpDate]
				  ,[PackQuantity]
				  ,[PackedBy]
				  ,[SrNo]
				  ,[StorageCondition]
				  ,[CreatorId]
				  ,[CreateDate]
				  ,[UpdatorId]
				  ,[UpdateDate]
			)
			VALUES 
			(
				 @FormVersionId
				,@ProductName  
				,@BatchNo		
				,@MfgDate		
				,@ExpDate		
				,@PackQuantity
				,@PackedBy		
				,@SrNo			
				,@StorageCondition
				,@UpdatorId
				,GETDATE()
				,@UpdatorId
				,GETDATE()
			)

			SELECT SCOPE_IDENTITY()
	END
 ELSE 
	BEGIN
			UPDATE ProductLabel
			SET 
			 [FormVersionId]		=@FormVersionId
			,[ProductName]			=@ProductName  
			,[BatchNo]				=@BatchNo		
			,[MfgDate]				=@MfgDate		
			,[ExpDate]				=@ExpDate		
			,[PackQuantity]			=@PackQuantity
			,[PackedBy]				=@PackedBy		
			,[SrNo]					=@SrNo			
			,[StorageCondition]		=@StorageCondition
			,[UpdatorId]			=@UpdatorId
			,[UpdateDate]		    =GETDATE()
			WHERE ProductLabelId=@ProductLabelId
			Select @ProductLabelId
	END
	

END


GO
/****** Object:  StoredProcedure [dbo].[sp_ProductLabelPrintList_Create]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_ProductLabelPrintList_Create] 
(
	@ProductLabelId  INT
)
AS
BEGIN
	INSERT INTO  [dbo].[ProductLabelPrintList] 
		(
			   [ProductName]
			  ,[BatchNo]
			  ,[MfgDate]
			  ,[ExpDate]
			  ,[PackQuantity]		
			  ,[SrNo]
			  ,[StorageCondition]
			  ,[PrintDate]
			  ,[PrintById]
		)		
	SELECT  ProductName
			,BatchNo
			,MfgDate
			,ExpDate
			,PackQuantity
			,SrNo
			,StorageCondition
			,GETDATE()
			,PackedBy
	FROM ProductLabel 
	WHERE ProductLabelId=@ProductLabelId
			 				
SELECT SCOPE_IDENTITY()
END

GO
/****** Object:  StoredProcedure [dbo].[sp_ProductLabelPrintList_GetByUserId]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ProductLabelPrintList_GetByUserId] 
(
	@UserId INT
)
AS
BEGIN
SELECT SL= ROW_NUMBER() OVER (ORDER BY PLL.ProductPrintId DESC)
	  ,[PLL].[ProductName]
	  ,[PLL].[PrintDate]
	  ,[PLL].[PackQuantity]
      ,[PLL].[SrNo]
      ,[PLL].[StorageCondition]
      ,[PLL].[BatchNo]
      ,[PLL].[MfgDate]
      ,[PLL].[ExpDate]
	  ,PrintBy=[U].[DisplayName]
FROM [dbo].[ProductLabelPrintList] PLL
INNER JOIN tbl_User U ON U.UserId=PLL.PrintById
WHERE ((SELECT RoleId FROM tbl_User WHERE UserId=@UserId)=1) 
	 OR PLL.PrintById=@UserId
ORDER BY PLL.ProductPrintId DESC
END

GO
/****** Object:  StoredProcedure [dbo].[spProductLabel_GetByProductLabelId]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spProductLabel_GetByProductLabelId] 
(
	@ProductLabelId INT
)
AS 
BEGIN
	SELECT [U].[DisplayName]
		   ,[PL].[ProductLabelId]
		  ,[PL].[ProductName]
		  ,[PL].[BatchNo]
		  ,[PL].[MfgDate]
		  ,[PL].[ExpDate]
		  ,[PL].[PackQuantity]
		  ,[PL].[PackedBy]
		  ,[PL].[SrNo]
		  ,[PL].[StorageCondition]
		  ,[FTV].FormNo
		  ,[FTV].VersionNo
		  ,[PL].FormVersionId
		  
	  FROM [dbo].[ProductLabel] PL
	  INNER JOIN tbl_User U ON U.UserId=PL.PackedBy
	  LEFT JOIN tbl_FormTemplateVersion FTV ON FTV.FormVersionId=PL.FormVersionId
	  WHERE ProductLabelId=@ProductLabelId
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_FormTemplate_Get]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[tbl_FormTemplate_Get]
AS
BEGIN
SELECT [FromTemplateId]
      ,[TemplateName]
  FROM [tbl_FormTemplate]
END
GO
/****** Object:  StoredProcedure [dbo].[tbl_FormTemplateVersion_CreateOrUpdate]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[tbl_FormTemplateVersion_CreateOrUpdate]
(
	 @FormVersionId	   INT
	,@FormTemplateId   INT 
	,@FormNo		   NVARCHAR(150)
	,@VersionNo		   NVARCHAR(10)
	,@UpdatorId		   INT
)
AS
BEGIN
	IF (@FormVersionId=0)
	 BEGIN
		INSERT INTO [tbl_FormTemplateVersion]
		(
			 [FormTemplateId]
			,[FormNo]
			,[VersionNo]
			,[CreatorId]
			,[CreateDate]
			,[UpdatorId]
			,[UpdateDate]
		)
		VALUES
		(
				 @FormTemplateId 
				,@FormNo		 
				,@VersionNo	
				,@UpdatorId
				,GETDATE()
				,@UpdatorId
				,GETDATE()
		)
		SELECT SCOPE_IDENTITY();
	 END
	ELSE
	 BEGIN
		UPDATE [tbl_FormTemplateVersion]
		 SET 

			 [FormTemplateId]      =@FormTemplateId 
			,[FormNo]			   =@FormNo		 
			,[VersionNo]		   =@VersionNo				
			,[UpdatorId]		   =@UpdatorId
			,[UpdateDate]		   =GETDATE()

			WHERE FormVersionId=@FormVersionId

			Select @FormVersionId
	 END
END
GO
/****** Object:  StoredProcedure [dbo].[tbl_FormTemplateVersion_GetAll]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_FormTemplateVersion_GetAll] 
AS
BEGIN
SELECT  
	   SL= ROW_NUMBER() OVER (ORDER BY FTV.FormVersionId DESC)
	  ,FTV.FormVersionId
	  ,FT.TemplateName
      ,[FTV].[FormNo]
      ,[FTV].[VersionNo]
	  ,FormTemplateId=ISNULL(FTV.FormTemplateId,0)
  FROM [dbo].[tbl_FormTemplateVersion] FTV
  INNER JOIN tbl_FormTemplate FT ON FT.FromTemplateId=FTV.FormTemplateId
  ORDER BY FormVersionId DESC
END

GO
/****** Object:  StoredProcedure [dbo].[tbl_ProcessLabel_CreateOrUpdate]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_ProcessLabel_CreateOrUpdate]
(	
	 @ProcessLabelId   INT
	,@FormVersionId	   INT
	,@ProductName	   NVARCHAR(150)
	,@BatchNo		   NVARCHAR(150)=NULL
	,@BatchSize		   NVARCHAR(150)=NULL
	,@Status		   NVARCHAR(250)=NULL
	,@MfgDate		   DATETIME
	,@ExpDate		   DATETIME
	,@ContNo		   NVARCHAR(150)=NULL
	,@GrossWt		   NVARCHAR(150)=NULL
	,@TareWt		   NVARCHAR(150)=NULL
	,@NetWt			   NVARCHAR(150)=NULL
	,@CheckedBy		   INT
	,@CheckedDate	   DATETIME
	,@UpdatorId		   INT
	
)
AS
BEGIN
	IF (@ProcessLabelId=0)
	BEGIN

		INSERT INTO  [dbo].[tbl_ProcessLabel] 
			(
				    
				    [FormVersionId]
				   ,[ProductName]
				   ,[BatchNo]
				   ,[BatchSize]
				   ,[Status]
				   ,[MfgDate]
				   ,[ExpDate]
				   ,[ContNo]
				   ,[GrossWt]
				   ,[TareWt]
				   ,[NetWt]
				   ,[CheckedBy]
				   ,[CheckedDate]  
				   ,[CreatorId]
				   ,[CreateDate]
				   ,[UpdatorId]
				   ,[UpdateDate]


			)
			VALUES 
			(
				  
				 @FormVersionId	 
				,@ProductName	 
				,@BatchNo		 
				,@BatchSize		 
				,@Status		 
				,@MfgDate		 
				,@ExpDate		 
				,@ContNo		 
				,@GrossWt		 
				,@TareWt		 
				,@NetWt			 
				,@CheckedBy		 
				,@CheckedDate	 
				,@UpdatorId	
				,GETDATE()
				,@UpdatorId
				,GETDATE()
			)

			SELECT SCOPE_IDENTITY()
	END
 ELSE 
	BEGIN
			UPDATE tbl_ProcessLabel
			SET 
			  [FormVersionId]			=@FormVersionId	
			 ,[ProductName]				=@ProductName	
			 ,[BatchNo]					=@BatchNo		
			 ,[BatchSize]				=@BatchSize		
			 ,[Status]					=@Status		
			 ,[MfgDate]					=@MfgDate		
			 ,[ExpDate]					=@ExpDate		
			 ,[ContNo]					=@ContNo		
			 ,[GrossWt]					=@GrossWt		
			 ,[TareWt]					=@TareWt		
			 ,[NetWt]					=@NetWt			
			 ,[CheckedBy]				=@CheckedBy		
			 ,[CheckedDate]  			=@CheckedDate	
			 ,[UpdatorId]				=@UpdatorId
			 ,[UpdateDate]				=GETDATE()
			WHERE ProcessLabelId=@ProcessLabelId

			Select @ProcessLabelId
	END
	

END


GO
/****** Object:  StoredProcedure [dbo].[tbl_ProcessLabel_GetByPLIdForPrint]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_ProcessLabel_GetByPLIdForPrint]
(
	@ProcessLabelId INT
)
AS 
BEGIN
	SELECT [U].[DisplayName]
		  ,[PRL].[ProcessLabelId]
		  ,[PRL].[ProductName]
		  ,[PRL].[BatchNo]
		  ,[PRL].[BatchSize]
		  ,[PRL].[Status]
		  ,[PRL].[MfgDate]
		  ,[PRL].[ExpDate]
		  ,[PRL].[ContNo]
		  ,[PRL].[GrossWt]
		  ,[PRL].[TareWt]
		  ,[PRL].[NetWt]
		  ,[PRL].[CheckedBy]
		  ,[PRL].[CheckedDate]
		  ,[FTV].FormNo
		  ,[FTV].VersionNo
		  ,[PRL].FormVersionId		  
	  FROM [dbo].[tbl_ProcessLabel] PRL
	  INNER JOIN tbl_User U ON U.UserId=PRL.CheckedBy
	  LEFT JOIN tbl_FormTemplateVersion FTV ON FTV.FormVersionId=PRL.FormVersionId
	  WHERE ProcessLabelId=@ProcessLabelId
END


GO
/****** Object:  StoredProcedure [dbo].[tbl_ProcessLabelPrintList_Create]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[tbl_ProcessLabelPrintList_Create] 
(
	@ProcessLabelId  INT
)
AS
BEGIN
	INSERT INTO  [dbo].[ProcessLabelPrintList] 
		(
				   [FormVersionId]
				  ,[ProductName]
				  ,[BatchNo]
				  ,[BatchSize]
				  ,[Status]
				  ,[MfgDate]
				  ,[ExpDate]
				  ,[ContNo]
				  ,[GrossWt]
				  ,[TareWt]
				  ,[NetWt]
				  ,[CheckedBy]
				  ,[CheckedDate]
				  ,[PrintById]
				  ,[PrintDate]
		)		
	SELECT  
			 [FormVersionId]
			,[ProductName]
			,[BatchNo]
			,[BatchSize]
			,[Status]
			,[MfgDate]
			,[ExpDate]
			,[ContNo]
			,[GrossWt]
			,[TareWt]
			,[NetWt]
			,[CheckedBy]
			,[CheckedDate]
			,[CheckedBy]
			,GETDATE()			
	FROM tbl_ProcessLabel 
	WHERE ProcessLabelId=@ProcessLabelId
			 				
SELECT SCOPE_IDENTITY()
END

GO
/****** Object:  StoredProcedure [dbo].[tbl_Role_GetAllUserRole]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_Role_GetAllUserRole]
AS
BEGIN
	SELECT  [RoleId]
		   ,[RoleName]
	FROM [dbo].[tbl_Role]
END
GO
/****** Object:  StoredProcedure [dbo].[tbl_User_DeleteUserByUserId]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_User_DeleteUserByUserId] 
(
	@UserId INT
)
AS
BEGIN
DELETE [dbo].[tbl_User] WHERE UserId=@UserId
END

GO
/****** Object:  StoredProcedure [dbo].[tbl_User_GetAll]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[tbl_User_GetAll]
AS
BEGIN
SELECT 
	   SL= ROW_NUMBER() OVER (ORDER BY [U].[UserId] DESC)
	  ,[U].[UserId]
      ,[U].[RoleId]
      ,[U].[UserName]
      ,[U].[DisplayName]
	  ,[U].[Email]
      ,[U].[Phone]
      ,[U].[Password]
	  ,UserRole=[R].[RoleName]
  FROM [dbo].[tbl_User] U
  INNER JOIN tbl_Role R ON R.RoleId=U.RoleId
  ORDER BY [U].[UserId] DESC
END
GO
/****** Object:  StoredProcedure [dbo].[tbl_User_Registration_CreateOrUpdate]    Script Date: 3/7/2023 3:27:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[tbl_User_Registration_CreateOrUpdate]
(
	 @UserId	   INT
	,@UserName     NVARCHAR(50)
    ,@DisplayName  NVARCHAR(250)=NULL
	,@Password	   NVARCHAR(50)
	,@Email		   NVARCHAR(30)=NULL
	,@Phone		   NVARCHAR(50)=NULL
	,@RoleId	   INT
)
AS
BEGIN  
	IF (@UserId=0)
		BEGIN
			INSERT INTO [tbl_User]
				  (
					   [UserName]
					  ,[DisplayName]
					  ,[Password]
					  ,[Email]
					  ,[Phone]
					  ,[IsActive]
					  ,[RoleId]
				  )
				  VALUES 
				  (
					 @UserName   
					,@DisplayName
					,@Password	 
					,@Email		 
					,@Phone	
					,1
					,@RoleId
				  )
			SELECT SCOPE_IDENTITY();
		END
	ELSE
		BEGIN
			UPDATE [tbl_User]
				SET 
					 [UserName]			=@UserName   
					,[DisplayName]		=@DisplayName
					,[Password]			=@Password	 
					,[Email]			=@Email		 
					,[Phone]			=@Phone	
					,[IsActive]			=1
					,[RoleId]			=@RoleId
					WHERE UserId=@UserId
			SELECT @UserId;

		END
  
END
GO
USE [master]
GO
ALTER DATABASE [LabelPrintDB] SET  READ_WRITE 
GO
