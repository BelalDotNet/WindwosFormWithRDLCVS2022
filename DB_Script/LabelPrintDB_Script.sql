USE [master]
GO
/****** Object:  Database [LabelPrintDB]    Script Date: 2/15/2023 4:08:47 PM ******/
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
/****** Object:  Table [dbo].[ProductLabel]    Script Date: 2/15/2023 4:08:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductLabel](
	[ProductLabelId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](250) NULL,
	[BatchNo] [nvarchar](250) NULL,
	[MfgDate] [datetime] NULL,
	[ExpDate] [datetime] NULL,
	[PackQuantity] [decimal](18, 2) NULL,
	[PackedBy] [int] NULL,
	[SrNo] [nvarchar](50) NULL,
	[StorageCondition] [nvarchar](250) NULL,
 CONSTRAINT [PK__ProductL__605E50DC6534D4A7] PRIMARY KEY CLUSTERED 
(
	[ProductLabelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductLabelPrintList]    Script Date: 2/15/2023 4:08:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductLabelPrintList](
	[ProductPrintId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](250) NULL,
	[BatchNo] [nvarchar](250) NULL,
	[MfgDate] [datetime] NULL,
	[ExpDate] [datetime] NULL,
	[PackQuantity] [decimal](18, 2) NULL,
	[PrintById] [int] NULL,
	[SrNo] [nvarchar](50) NULL,
	[StorageCondition] [nvarchar](250) NULL,
	[PrintDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductPrintId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_User]    Script Date: 2/15/2023 4:08:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[DisplayName] [nvarchar](250) NULL,
	[Password] [nvarchar](50) NULL,
	[Email] [nvarchar](30) NULL,
	[Phone] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ProductLabel] ON 
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition]) VALUES (1, N'asdfasdf', N'asdf', CAST(N'2023-02-12T00:00:00.000' AS DateTime), CAST(N'2023-02-12T00:00:00.000' AS DateTime), CAST(4.00 AS Decimal(18, 2)), 1, N'sf', N'asdf')
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition]) VALUES (2, N'Barcode Label', N'B201', CAST(N'2023-02-01T00:00:00.000' AS DateTime), CAST(N'2023-02-10T00:00:00.000' AS DateTime), CAST(40.00 AS Decimal(18, 2)), 1, N'01', N'Nice')
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition]) VALUES (3, N'Barcode Ribon', N'B20001', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-02-11T00:00:00.000' AS DateTime), CAST(540.00 AS Decimal(18, 2)), 1, N'02', N'Nice Ribon')
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition]) VALUES (4, N'Barcode Ribon', N'B20001', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-02-11T00:00:00.000' AS DateTime), CAST(540.00 AS Decimal(18, 2)), 1, N'02', N'Nice Ribon')
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition]) VALUES (5, N'Nice Label', N'N-012', CAST(N'2023-02-13T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), CAST(10.00 AS Decimal(18, 2)), 1, N'S100', N'Nice Condition')
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition]) VALUES (6, N'Print Label', N'P-123', CAST(N'2023-02-13T00:00:00.000' AS DateTime), CAST(N'2023-04-27T00:00:00.000' AS DateTime), CAST(541.00 AS Decimal(18, 2)), 1, N'41', N'Print Nice')
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition]) VALUES (7, N'Barcode Nice', N'B96', CAST(N'2023-02-15T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(18, 2)), 1, N'84', N'Storage Condition')
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition]) VALUES (8, N'Printer', N'V-124', CAST(N'2023-02-04T00:00:00.000' AS DateTime), CAST(N'2023-04-14T00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(18, 2)), 1, N'124', N'Nice')
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition]) VALUES (9, N'Barcode Label', N'654564', CAST(N'2023-02-09T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(18, 2)), 1, N'01', N'Nice')
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition]) VALUES (10, N'A4 Paper', N'A201', CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(18, 2)), 2, N'100', N'Nice Storage Condition')
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition]) VALUES (11, N'Barcode Print Label', N'184', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), CAST(10.00 AS Decimal(18, 2)), 3, N'S10', N'Nice')
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition]) VALUES (12, N'Nice Product', N'20100', CAST(N'2023-02-12T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), CAST(10.00 AS Decimal(18, 2)), 3, N'524', N'Nice Condition')
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition]) VALUES (13, N'Barcode Print Label', N'184', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), CAST(10.00 AS Decimal(18, 2)), 2, N'S10', N'Nice')
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition]) VALUES (14, N'Nice Product', N'20100', CAST(N'2023-02-12T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), CAST(10.00 AS Decimal(18, 2)), 1, N'524', N'Nice Condition')
GO
INSERT [dbo].[ProductLabel] ([ProductLabelId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PackedBy], [SrNo], [StorageCondition]) VALUES (15, N'xyc', N'0003', CAST(N'2023-02-08T00:00:00.000' AS DateTime), CAST(N'2023-02-03T00:00:00.000' AS DateTime), CAST(45.00 AS Decimal(18, 2)), 3, N'567', N'good')
GO
SET IDENTITY_INSERT [dbo].[ProductLabel] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductLabelPrintList] ON 
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (1, N'asdfasdf', N'asdf', CAST(N'2023-02-12T00:00:00.000' AS DateTime), CAST(N'2023-02-12T00:00:00.000' AS DateTime), CAST(4.00 AS Decimal(18, 2)), 1, N'sf', N'asdf', CAST(N'2023-02-13T15:33:46.330' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (2, N'Nice Label', N'N-012', CAST(N'2023-02-13T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), CAST(10.00 AS Decimal(18, 2)), 1, N'S100', N'Nice Condition', CAST(N'2023-02-13T15:55:48.280' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (3, N'Barcode Ribon', N'B20001', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-02-11T00:00:00.000' AS DateTime), CAST(540.00 AS Decimal(18, 2)), 1, N'02', N'Nice Ribon', CAST(N'2023-02-13T16:22:19.877' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (4, N'Print Label', N'P-123', CAST(N'2023-02-13T00:00:00.000' AS DateTime), CAST(N'2023-04-27T00:00:00.000' AS DateTime), CAST(541.00 AS Decimal(18, 2)), 2, N'41', N'Print Nice', CAST(N'2023-02-13T16:25:05.030' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (5, N'Printer', N'V-124', CAST(N'2023-02-04T00:00:00.000' AS DateTime), CAST(N'2023-04-14T00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(18, 2)), 2, N'124', N'Nice', CAST(N'2023-02-13T16:42:05.550' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (6, N'Printer', N'V-124', CAST(N'2023-02-04T00:00:00.000' AS DateTime), CAST(N'2023-04-14T00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(18, 2)), 1, N'124', N'Nice', CAST(N'2023-02-13T16:55:53.297' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (7, N'Barcode Nice', N'B96', CAST(N'2023-02-15T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(18, 2)), 1, N'84', N'Storage Condition', CAST(N'2023-02-13T17:02:57.497' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (8, N'Printer', N'V-124', CAST(N'2023-02-04T00:00:00.000' AS DateTime), CAST(N'2023-04-14T00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(18, 2)), 1, N'124', N'Nice', CAST(N'2023-02-13T17:19:12.410' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (9, N'Barcode Label', N'654564', CAST(N'2023-02-09T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(18, 2)), 3, N'01', N'Nice', CAST(N'2023-02-13T17:25:07.763' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (10, N'Barcode Label', N'654564', CAST(N'2023-02-09T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(18, 2)), 3, N'01', N'Nice', CAST(N'2023-02-13T17:36:24.853' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (11, N'Barcode Label', N'B201', CAST(N'2023-02-01T00:00:00.000' AS DateTime), CAST(N'2023-02-10T00:00:00.000' AS DateTime), CAST(40.00 AS Decimal(18, 2)), 1, N'01', N'Nice', CAST(N'2023-02-13T21:54:47.717' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (12, N'Barcode Label', N'654564', CAST(N'2023-02-09T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(18, 2)), 1, N'01', N'Nice', CAST(N'2023-02-14T11:40:01.410' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (13, N'A4 Paper', N'A201', CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(18, 2)), 2, N'100', N'Nice Storage Condition', CAST(N'2023-02-14T11:55:18.923' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (14, N'A4 Paper', N'A201', CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(18, 2)), 2, N'100', N'Nice Storage Condition', CAST(N'2023-02-14T12:38:30.737' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (15, N'A4 Paper', N'A201', CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(18, 2)), 2, N'100', N'Nice Storage Condition', CAST(N'2023-02-14T12:47:26.090' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (16, N'Barcode Label', N'654564', CAST(N'2023-02-09T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(18, 2)), 1, N'01', N'Nice', CAST(N'2023-02-14T12:49:25.090' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (17, N'A4 Paper', N'A201', CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(18, 2)), 2, N'100', N'Nice Storage Condition', CAST(N'2023-02-14T12:52:05.410' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (18, N'Barcode Label', N'B201', CAST(N'2023-02-01T00:00:00.000' AS DateTime), CAST(N'2023-02-10T00:00:00.000' AS DateTime), CAST(40.00 AS Decimal(18, 2)), 1, N'01', N'Nice', CAST(N'2023-02-14T12:55:20.427' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (19, N'A4 Paper', N'A201', CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(18, 2)), 2, N'100', N'Nice Storage Condition', CAST(N'2023-02-14T12:59:05.020' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (20, N'A4 Paper', N'A201', CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(18, 2)), 2, N'100', N'Nice Storage Condition', CAST(N'2023-02-14T13:10:35.247' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (21, N'A4 Paper', N'A201', CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(18, 2)), 2, N'100', N'Nice Storage Condition', CAST(N'2023-02-14T13:14:45.790' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (22, N'A4 Paper', N'A201', CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(18, 2)), 2, N'100', N'Nice Storage Condition', CAST(N'2023-02-14T13:17:52.350' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (23, N'A4 Paper', N'A201', CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(18, 2)), 2, N'100', N'Nice Storage Condition', CAST(N'2023-02-14T14:04:51.450' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (24, N'Barcode Label', N'654564', CAST(N'2023-02-09T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(18, 2)), 1, N'01', N'Nice', CAST(N'2023-02-14T14:14:00.740' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (25, N'Barcode Label', N'654564', CAST(N'2023-02-09T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(18, 2)), 1, N'01', N'Nice', CAST(N'2023-02-14T14:22:19.070' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (26, N'A4 Paper', N'A201', CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(18, 2)), 2, N'100', N'Nice Storage Condition', CAST(N'2023-02-14T14:40:37.977' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (27, N'Print Label', N'P-123', CAST(N'2023-02-13T00:00:00.000' AS DateTime), CAST(N'2023-04-27T00:00:00.000' AS DateTime), CAST(541.00 AS Decimal(18, 2)), 1, N'41', N'Print Nice', CAST(N'2023-02-14T14:46:39.290' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (28, N'Barcode Print Label', N'184', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), CAST(10.00 AS Decimal(18, 2)), 3, N'S10', N'Nice', CAST(N'2023-02-14T14:48:30.250' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (29, N'Barcode Print Label', N'184', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), CAST(10.00 AS Decimal(18, 2)), 3, N'S10', N'Nice', CAST(N'2023-02-14T15:06:17.350' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (30, N'Barcode Print Label', N'184', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), CAST(10.00 AS Decimal(18, 2)), 3, N'S10', N'Nice', CAST(N'2023-02-14T16:43:25.223' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (31, N'Nice Product', N'20100', CAST(N'2023-02-12T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), CAST(10.00 AS Decimal(18, 2)), 3, N'524', N'Nice Condition', CAST(N'2023-02-14T16:51:35.733' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (32, N'Nice Product', N'20100', CAST(N'2023-02-12T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), CAST(10.00 AS Decimal(18, 2)), 3, N'524', N'Nice Condition', CAST(N'2023-02-14T16:55:17.773' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (33, N'Nice Product', N'20100', CAST(N'2023-02-12T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), CAST(10.00 AS Decimal(18, 2)), 3, N'524', N'Nice Condition', CAST(N'2023-02-14T16:57:10.957' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (34, N'A4 Paper', N'A201', CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(18, 2)), 2, N'100', N'Nice Storage Condition', CAST(N'2023-02-14T17:16:56.357' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (35, N'A4 Paper', N'A201', CAST(N'2023-02-14T00:00:00.000' AS DateTime), CAST(N'2023-05-26T00:00:00.000' AS DateTime), CAST(50.00 AS Decimal(18, 2)), 2, N'100', N'Nice Storage Condition', CAST(N'2023-02-14T17:17:29.070' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (36, N'Nice Product', N'20100', CAST(N'2023-02-12T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), CAST(10.00 AS Decimal(18, 2)), 3, N'524', N'Nice Condition', CAST(N'2023-02-14T17:18:38.307' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (37, N'Barcode Print Label', N'184', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), CAST(10.00 AS Decimal(18, 2)), 2, N'S10', N'Nice', CAST(N'2023-02-14T17:32:28.657' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (38, N'Barcode Print Label', N'184', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), CAST(10.00 AS Decimal(18, 2)), 2, N'S10', N'Nice', CAST(N'2023-02-14T17:32:47.153' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (39, N'Barcode Print Label', N'184', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), CAST(10.00 AS Decimal(18, 2)), 2, N'S10', N'Nice', CAST(N'2023-02-14T17:38:53.563' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (40, N'Barcode Print Label', N'184', CAST(N'2023-02-05T00:00:00.000' AS DateTime), CAST(N'2023-03-24T00:00:00.000' AS DateTime), CAST(10.00 AS Decimal(18, 2)), 2, N'S10', N'Nice', CAST(N'2023-02-14T17:45:44.200' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (41, N'Nice Product', N'20100', CAST(N'2023-02-12T00:00:00.000' AS DateTime), CAST(N'2023-02-25T00:00:00.000' AS DateTime), CAST(10.00 AS Decimal(18, 2)), 1, N'524', N'Nice Condition', CAST(N'2023-02-14T17:49:14.483' AS DateTime))
GO
INSERT [dbo].[ProductLabelPrintList] ([ProductPrintId], [ProductName], [BatchNo], [MfgDate], [ExpDate], [PackQuantity], [PrintById], [SrNo], [StorageCondition], [PrintDate]) VALUES (42, N'xyc', N'0003', CAST(N'2023-02-08T00:00:00.000' AS DateTime), CAST(N'2023-02-03T00:00:00.000' AS DateTime), CAST(45.00 AS Decimal(18, 2)), 3, N'567', N'good', CAST(N'2023-02-14T17:53:16.217' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ProductLabelPrintList] OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_User] ON 
GO
INSERT [dbo].[tbl_User] ([UserId], [UserName], [DisplayName], [Password], [Email], [Phone]) VALUES (1, N'Admin', N'Admin User', N'1234', N'User@gmail.com', N'12345')
GO
INSERT [dbo].[tbl_User] ([UserId], [UserName], [DisplayName], [Password], [Email], [Phone]) VALUES (2, N'User', N'Demo User', N'1234', N'User@gmail.com', N'12345')
GO
INSERT [dbo].[tbl_User] ([UserId], [UserName], [DisplayName], [Password], [Email], [Phone]) VALUES (3, N'Belal', N'Belal Hossain', N'1234', N'User@gmail.com', N'12345')
GO
SET IDENTITY_INSERT [dbo].[tbl_User] OFF
GO
/****** Object:  StoredProcedure [dbo].[ProductLabel_GetAll]    Script Date: 2/15/2023 4:08:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ProductLabel_GetAll]
AS
BEGIN
SELECT ProductLabelId
	  ,[ProductName]
      ,[BatchNo]
      ,[MfgDate]
      ,[ExpDate]
      ,[PackQuantity]
      ,[SrNo]
      ,[StorageCondition] 
FROM [dbo].[ProductLabel]
ORDER BY ProductLabelId DESC
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetAllUser]    Script Date: 2/15/2023 4:08:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_GetAllUser]
AS
BEGIN
SELECT UserId, DisplayName From tbl_User
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetUserByUserNameAndPassword]    Script Date: 2/15/2023 4:08:47 PM ******/
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
SELECT [UserName]
	   ,[DisplayName]
      ,[Password]
	  ,[UserId]
FROM [dbo].[tbl_User]
WHERE UserName=@UserName AND [Password]=@Password
END

GO
/****** Object:  StoredProcedure [dbo].[sp_PrintedListByUserOrDateRange]    Script Date: 2/15/2023 4:08:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_PrintedListByUserOrDateRange] 
(
	@PrintById INT=NULL
   ,@FromDate DATETIME=NULL
   ,@ToDate   DATETIME=NULL
)
AS
BEGIN
SELECT 
	   PrintBy=[U].[DisplayName]
	  ,[PL].[PrintDate]
      ,[PL].[ProductName]
      ,[PL].[BatchNo]
      ,[PL].[MfgDate]
      ,[PL].[ExpDate]
      ,[PL].[PackQuantity]    
      ,[PL].[SrNo]
      ,[PL].[StorageCondition]
      
  FROM [dbo].[ProductLabelPrintList] PL
  INNER JOIN tbl_User U ON U.UserId=PL.PrintById
  WHERE (PL.PrintById=@PrintById OR @PrintById IS NULL)
		AND ((CAST(PL.PrintDate AS DATE) BETWEEN CAST(@FromDate AS DATE) AND CAST(@ToDate AS DATE))  OR (@FromDate IS NULL AND @ToDate IS NULL))
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ProductLabel_Create]    Script Date: 2/15/2023 4:08:47 PM ******/
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
	,@PackQuantity     DECIMAL(18,2)
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
/****** Object:  StoredProcedure [dbo].[sp_ProductLabelPrintList_Create]    Script Date: 2/15/2023 4:08:47 PM ******/
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
/****** Object:  StoredProcedure [dbo].[sp_ProductLabelPrintList_Get]    Script Date: 2/15/2023 4:08:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ProductLabelPrintList_Get]
AS
BEGIN
SELECT 
	   PrintBy=[U].[DisplayName]
	  ,[PL].[PrintDate]
	  ,[PL].[ProductName]
      ,[PL].[BatchNo]
      ,[PL].[MfgDate]
      ,[PL].[ExpDate]
      ,[PL].[PackQuantity]
      ,[PL].[SrNo]
      ,[PL].[StorageCondition] 
FROM [dbo].[ProductLabelPrintList] PL
INNER JOIN tbl_User U ON U.UserId=PL.PrintById
ORDER BY ProductPrintId DESC
END
GO
/****** Object:  StoredProcedure [dbo].[spProductLabel_GetByProductLabelId]    Script Date: 2/15/2023 4:08:47 PM ******/
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
		  
	  FROM [dbo].[ProductLabel] PL
	  INNER JOIN tbl_User U ON U.UserId=PL.PackedBy
	  WHERE ProductLabelId=@ProductLabelId
END
GO
USE [master]
GO
ALTER DATABASE [LabelPrintDB] SET  READ_WRITE 
GO
