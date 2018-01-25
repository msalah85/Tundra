USE [master]
GO
/****** Object:  Database [TundraUae]    Script Date: 1/25/2018 5:26:55 PM ******/
CREATE DATABASE [TundraUae]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TundraUae', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TundraUae.mdf' , SIZE = 6144KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'TundraUae_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\TundraUae_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [TundraUae] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TundraUae].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TundraUae] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TundraUae] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TundraUae] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TundraUae] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TundraUae] SET ARITHABORT OFF 
GO
ALTER DATABASE [TundraUae] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TundraUae] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TundraUae] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TundraUae] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TundraUae] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TundraUae] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TundraUae] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TundraUae] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TundraUae] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TundraUae] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TundraUae] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TundraUae] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TundraUae] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TundraUae] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TundraUae] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TundraUae] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TundraUae] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TundraUae] SET RECOVERY FULL 
GO
ALTER DATABASE [TundraUae] SET  MULTI_USER 
GO
ALTER DATABASE [TundraUae] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TundraUae] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TundraUae] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TundraUae] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [TundraUae] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TundraUae', N'ON'
GO
USE [TundraUae]
GO
/****** Object:  UserDefinedFunction [dbo].[GetDirhamExchangeRatio]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[GetDirhamExchangeRatio]
(
	-- Add the parameters for the function here
--	@startDate datetime, @carID bigint
)
RETURNS  money
AS
BEGIN
	-- Declare the return variable here
	DECLARE @ResultVar money

	SET @ResultVar = (SELECT TOP 1 ExchangeRate FROM Currencies WHERE CurrencyID = 2); -- Dirham currency.

	-- Return the result of the function
	RETURN @ResultVar

END





GO
/****** Object:  UserDefinedFunction [dbo].[GetDurationYearMonthDays]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[GetDurationYearMonthDays]
(
	-- Add the parameters for the function here
	@startDate datetime, @carID bigint
)
RETURNS  nvarchar(50)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @ResultVar nvarchar(50)

SET  @ResultVar = 'Y:' + (SELECT (CAST(LeftYear AS varchar(10))  + ', M:' +  CAST(LeftMonth AS varchar(10)) + ', D:' + CAST(LeftDays AS varchar(10))) AS DurationDate 
from (

SELECT
 (YEAR(WorkDuration) - 1900) AS LeftYear,
 (MONTH(WorkDuration) - 1) AS LeftMonth,
 (DAY(WorkDuration) - 1) AS LeftDays 
FROM 
 (SELECT (GETDATE() - @startDate) AS WorkDuration 
	FROM view_carinformation temp WHERE temp.carid = @carID) tmp

)  adad);

	-- Return the result of the function
	RETURN @ResultVar

END



GO
/****** Object:  Table [dbo].[Addins]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addins](
	[ID] [bigint] NOT NULL,
	[LanguageID] [int] NULL,
	[Title] [nvarchar](100) NULL,
	[ShortDesc] [ntext] NULL,
	[Details] [ntext] NULL,
	[Type] [nvarchar](50) NULL,
	[Priority] [int] NULL,
	[ViewHome] [bit] NULL,
	[Active] [bit] NULL,
	[ThisMonth] [bit] NULL,
	[Timestamp] [datetime] NULL,
	[main_picture] [nvarchar](200) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Auctions]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Auctions](
	[AuctionID] [int] IDENTITY(1,1) NOT NULL,
	[AuctionName] [nvarchar](100) NULL,
	[AuctionEmail] [nvarchar](100) NULL,
	[AuctionPhone] [nvarchar](100) NULL,
	[AuctionAddress] [nvarchar](500) NULL,
	[AuctionDesc] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_Auctions] PRIMARY KEY CLUSTERED 
(
	[AuctionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Buyers]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buyers](
	[BuyerID] [bigint] IDENTITY(1,1) NOT NULL,
	[Auction_ID] [int] NOT NULL,
	[BuyerName] [nvarchar](100) NULL,
	[BuyerEmail] [nvarchar](100) NULL,
	[BuyerPhone] [nvarchar](100) NULL,
	[BuyerAddress] [nvarchar](100) NULL,
	[BuyerDesc] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[OpeningBalance] [money] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_Buyers] PRIMARY KEY CLUSTERED 
(
	[BuyerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Capacities]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Capacities](
	[CapacityID] [int] IDENTITY(1,1) NOT NULL,
	[CapacityNameEn] [nvarchar](100) NULL,
	[CapacityNameAr] [nvarchar](100) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarCapacity] PRIMARY KEY CLUSTERED 
(
	[CapacityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CarExpenses]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarExpenses](
	[ExpenseID] [bigint] IDENTITY(1,1) NOT NULL,
	[Car_ID] [bigint] NULL,
	[Currency_ID] [int] NULL,
	[ExpenseType_ID] [int] NULL,
	[CompanyType] [nvarchar](50) NULL,
	[Company_ID] [bigint] NULL,
	[ExchangeCompany_ID] [bigint] NULL,
	[InvoiceCode] [nvarchar](150) NULL,
	[DueDate] [datetime] NULL,
	[PaymentDate] [datetime] NULL,
	[Notes] [nvarchar](3000) NULL,
	[ExpenseValue] [money] NULL,
	[PaymentValue] [money] NULL,
	[InOutType] [nvarchar](20) NULL,
	[Active] [bit] NULL,
	[Store_ID] [bigint] NULL,
	[AddDate] [datetime] NULL,
	[WhoAdd] [bigint] NULL,
	[AddIP] [nvarchar](50) NULL,
	[EditDate] [datetime] NULL,
	[WhoEdit] [bigint] NULL,
	[EditIP] [nvarchar](50) NULL,
	[Deleted] [bit] NULL,
	[DeleteDate] [datetime] NULL,
	[WhoDelete] [bigint] NULL,
	[DeleteIP] [nvarchar](50) NULL,
	[Timestamp] [timestamp] NULL,
 CONSTRAINT [PK_Car_Expenses] PRIMARY KEY CLUSTERED 
(
	[ExpenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CarInvoices]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarInvoices](
	[InvoiceID] [bigint] IDENTITY(1,1) NOT NULL,
	[SiteCompany_ID] [int] NULL,
	[Car_ID] [bigint] NULL,
	[Client_ID] [bigint] NULL,
	[Currency_ID] [int] NULL,
	[SalePrice] [money] NULL,
	[FirstAmount] [money] NULL,
	[InvoiceDate] [datetime] NULL,
	[Notes] [nvarchar](2000) NULL,
	[Timestamp] [timestamp] NULL,
	[Active] [bit] NULL,
	[Store_ID] [bigint] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarInvoices] PRIMARY KEY CLUSTERED 
(
	[InvoiceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CarOptions]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarOptions](
	[CarOptionID] [int] IDENTITY(1,1) NOT NULL,
	[CarOptionNameEn] [nvarchar](100) NULL,
	[CarOptionNameAr] [nvarchar](100) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarCarOption] PRIMARY KEY CLUSTERED 
(
	[CarOptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CarParts]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarParts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[Price] [money] NULL,
	[IsActive] [bit] NOT NULL CONSTRAINT [DF_Table_1_IsActice]  DEFAULT ((1)),
	[IsDeleted] [bit] NULL CONSTRAINT [DF_CarParts_IsDeleted]  DEFAULT ((0)),
	[YearId] [int] NULL,
	[MakerId] [int] NULL,
	[ModelId] [bigint] NULL,
	[TypeId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF_CarParts_CreatedDate]  DEFAULT (getdate()),
	[Periority] [int] NULL,
 CONSTRAINT [PK_CarParts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CarPartsImages]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarPartsImages](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](150) NULL,
	[PartId] [int] NULL,
	[IsMain] [bit] NULL,
	[IsActive] [bit] NULL,
	[Priority] [int] NULL,
 CONSTRAINT [PK_CarPartsImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CarPartTypes]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarPartTypes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name_En] [nvarchar](70) NOT NULL,
	[Name_Ar] [nvarchar](70) NULL,
	[IsDeleted] [bit] NOT NULL CONSTRAINT [DF_CarPartTypes_IsDeleted]  DEFAULT ((0)),
 CONSTRAINT [PK_CarPartTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CarsData]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarsData](
	[CarID] [bigint] IDENTITY(1,1) NOT NULL,
	[car_code] [bigint] NOT NULL,
	[view_home] [bit] NULL,
	[active] [bit] NULL,
	[featured_car] [bit] NULL,
	[Auction_ID] [int] NULL,
	[Buyer_ID] [int] NULL,
	[Marker_ID] [int] NULL,
	[Model_ID] [bigint] NULL,
	[WorkingStatus_ID] [int] NULL,
	[TransferStatus_ID] [int] NULL,
	[Year_ID] [int] NULL,
	[PortShipping_ID] [int] NULL,
	[TowingCompsny_ID] [bigint] NULL,
	[ShippingCompany_ID] [bigint] NULL,
	[Ship_ID] [bigint] NULL,
	[State_ID] [int] NULL,
	[Region_ID] [bigint] NULL,
	[Workshop_ID] [bigint] NULL,
	[Transport_ID] [bigint] NULL,
	[Clearance_ID] [bigint] NULL,
	[Store_ID] [bigint] NULL,
	[chassis_no] [nvarchar](150) NULL,
	[container_no] [nvarchar](150) NULL,
	[container_code] [nvarchar](150) NULL,
	[booking_no] [nvarchar](100) NULL,
	[poly_fielding] [nvarchar](3000) NULL,
	[lot_no] [nvarchar](150) NULL,
	[engine_no] [nvarchar](150) NULL,
	[sold] [bit] NULL,
	[exterior_color] [int] NULL,
	[interior_color] [int] NULL,
	[body_style] [int] NULL,
	[car_transmission] [int] NULL,
	[mileage] [nvarchar](100) NULL,
	[car_drive] [int] NULL,
	[car_engine] [int] NULL,
	[car_capacity] [int] NULL,
	[car_options] [nvarchar](1500) NULL,
	[car_remarks] [nvarchar](3000) NULL,
	[Customs_No] [nvarchar](150) NULL,
	[purchase_date] [datetime] NULL,
	[checkout_date] [datetime] NULL,
	[Shipping_date] [datetime] NULL,
	[expected_arrive_date] [datetime] NULL,
	[dubia_arrive_date] [datetime] NULL,
	[sharjah_arrive_date] [datetime] NULL,
	[arrive_date] [datetime] NULL,
	[WorkshopEntryDate] [datetime] NULL,
	[WorkshopExitDate] [datetime] NULL,
	[price_currency] [money] NULL,
	[real_price] [numeric](18, 0) NULL,
	[sale_price] [numeric](18, 0) NULL,
	[cost] [numeric](18, 0) NULL,
	[CurrencyExchange_ID] [int] NULL,
	[payement_to_who] [nvarchar](150) NULL,
	[sale_to] [nvarchar](150) NULL,
	[show_sale] [bit] NULL,
	[sale_date] [datetime] NULL,
	[visitors] [bigint] NULL,
	[main_picture] [nvarchar](150) NULL,
	[Timestamp] [timestamp] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_Cars_1] PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CarsMarker]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarsMarker](
	[MarkerID] [int] IDENTITY(1,1) NOT NULL,
	[MarkerNameEn] [nvarchar](100) NULL,
	[MarkerNameAr] [nvarchar](100) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarMarker] PRIMARY KEY CLUSTERED 
(
	[MarkerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CarsModel]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarsModel](
	[ModelID] [bigint] IDENTITY(1,1) NOT NULL,
	[Marker_ID] [int] NOT NULL,
	[TypeNameEn] [nvarchar](100) NULL,
	[TypeNameAr] [nvarchar](100) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarType] PRIMARY KEY CLUSTERED 
(
	[ModelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CarsStatus]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarsStatus](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusEn] [nvarchar](100) NULL,
	[StatusAr] [nvarchar](100) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarsStatus] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClearanceCompanies]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClearanceCompanies](
	[ClearanceID] [bigint] IDENTITY(1,1) NOT NULL,
	[ClearanceName] [nvarchar](100) NOT NULL,
	[ClearanceEmail] [nvarchar](100) NULL,
	[ClearancePhone] [nvarchar](100) NULL,
	[ClearanceAddress] [nvarchar](500) NULL,
	[ClearanceDesc] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[OpeningBalance] [money] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_ClearanceCompanies] PRIMARY KEY CLUSTERED 
(
	[ClearanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClientInvoicesPayments]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientInvoicesPayments](
	[ClientInvoicesPaymentsID] [bigint] IDENTITY(1,1) NOT NULL,
	[ClientPayments_ID] [bigint] NULL,
	[CarInvoice_ID] [bigint] NULL,
	[ClientInvoicesPaymentsValue] [money] NULL,
	[Active] [bit] NULL,
	[RegisterDate] [datetime] NULL,
	[Notes] [nvarchar](1000) NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_ClientInvoicesPayments] PRIMARY KEY CLUSTERED 
(
	[ClientInvoicesPaymentsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClientPayments]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientPayments](
	[PaymentID] [bigint] IDENTITY(1,1) NOT NULL,
	[Invoice_ID] [bigint] NULL,
	[Client_ID] [bigint] NOT NULL,
	[ExchangeCompany_ID] [bigint] NULL,
	[Currency_ID] [int] NULL,
	[PaymentValue] [money] NULL,
	[CloseOut] [money] NULL CONSTRAINT [DF_ClientPayments_CloseOut]  DEFAULT ((0)),
	[PaymentDate] [datetime] NULL,
	[ReceiverName] [nvarchar](100) NULL,
	[Notes] [nvarchar](2000) NULL,
	[Active] [bit] NULL,
	[Other] [nvarchar](50) NULL,
	[Timestamp] [timestamp] NULL,
	[RegisterDate] [datetime] NULL,
	[Store_ID] [bigint] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_ClientPayments] PRIMARY KEY CLUSTERED 
(
	[PaymentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Clients]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[ClientID] [bigint] IDENTITY(1,1) NOT NULL,
	[ClientName] [nvarchar](100) NOT NULL,
	[ClientEmail] [nvarchar](100) NULL,
	[ClientPhone] [nvarchar](100) NULL,
	[ClientFax] [nvarchar](100) NULL,
	[ClientAddress] [nvarchar](500) NULL,
	[ClientUsername] [nvarchar](100) NULL,
	[ClientPassword] [nvarchar](100) NULL,
	[ClientDesc] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[SMSActive] [bit] NULL,
	[OpeningBalance] [money] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Colors]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[ColorID] [int] IDENTITY(1,1) NOT NULL,
	[ColorNameEn] [nvarchar](100) NULL,
	[ColorNameAr] [nvarchar](100) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarColor] PRIMARY KEY CLUSTERED 
(
	[ColorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Currencies]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currencies](
	[CurrencyID] [int] NOT NULL,
	[CurrencyName] [nvarchar](50) NULL,
	[CurrencySymbol] [nvarchar](20) NULL,
	[ExchangeRate] [money] NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarCurrency] PRIMARY KEY CLUSTERED 
(
	[CurrencyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Drives]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drives](
	[DriveID] [int] IDENTITY(1,1) NOT NULL,
	[DriveNameEn] [nvarchar](100) NULL,
	[DriveNameAr] [nvarchar](100) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarDrive] PRIMARY KEY CLUSTERED 
(
	[DriveID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Engines]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Engines](
	[EngineID] [int] IDENTITY(1,1) NOT NULL,
	[EngineNameEn] [nvarchar](100) NULL,
	[EngineNameAr] [nvarchar](100) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarEngine] PRIMARY KEY CLUSTERED 
(
	[EngineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExchangeCompanies]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExchangeCompanies](
	[ExchangeCompanyID] [bigint] IDENTITY(1,1) NOT NULL,
	[ExchangeCompanyName] [nvarchar](100) NOT NULL,
	[ExchangeCompanyEmail] [nvarchar](100) NULL,
	[ExchangeCompanyPhone] [nvarchar](100) NULL,
	[ExchangeCompanyAddress] [nvarchar](500) NULL,
	[ExchangeCompanyDesc] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[OpeningBalance] [money] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_ExchangeCompanies] PRIMARY KEY CLUSTERED 
(
	[ExchangeCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExpenseTypes]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpenseTypes](
	[ExpenseTypeID] [int] IDENTITY(1,1) NOT NULL,
	[ExpenseTypeName] [nvarchar](150) NULL,
	[ExpenseTypeDetails] [nvarchar](3000) NULL,
	[CurrencyUsed] [nvarchar](20) NULL,
	[GroupName] [nvarchar](50) NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_ExpenseTypes] PRIMARY KEY CLUSTERED 
(
	[ExpenseTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MainSafeDebitCredit]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MainSafeDebitCredit](
	[SafeID] [bigint] IDENTITY(1,1) NOT NULL,
	[Employee_ID] [bigint] NULL,
	[Store_ID] [bigint] NULL,
	[SafeDebitValue] [nvarchar](100) NULL,
	[SafeDebitDate] [datetime] NULL,
	[SafeCreditValue] [nvarchar](100) NULL,
	[SafeCreditDate] [datetime] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_Ket_MainSafeDebitCredit] PRIMARY KEY CLUSTERED 
(
	[SafeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pictures]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pictures](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[LanguageID] [int] NULL,
	[CategoryType] [nvarchar](20) NULL,
	[MasterID] [bigint] NULL,
	[Title] [nvarchar](50) NULL,
	[Details] [nvarchar](1000) NULL,
	[URL] [nvarchar](150) NULL,
	[MainImage] [bit] NULL,
	[Active] [bit] NULL,
	[Priority] [int] NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PortShipping]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PortShipping](
	[PortShipID] [int] IDENTITY(1,1) NOT NULL,
	[PortShipEn] [nvarchar](100) NULL,
	[PortShipAr] [nvarchar](100) NULL,
	[PortShipDescEn] [nvarchar](2000) NULL,
	[PortShipDescAr] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_PortShipping_1] PRIMARY KEY CLUSTERED 
(
	[PortShipID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Regions]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regions](
	[RegionID] [bigint] IDENTITY(1,1) NOT NULL,
	[Auction_ID] [int] NULL,
	[RegionEn] [nvarchar](100) NULL,
	[RegionAr] [nvarchar](100) NULL,
	[CostforRegion] [decimal](18, 0) NULL,
	[RegionDescEn] [nvarchar](2000) NULL,
	[RegionDescAr] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_Regions] PRIMARY KEY CLUSTERED 
(
	[RegionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ShippingCompanies]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippingCompanies](
	[ShipCompanyID] [bigint] IDENTITY(1,1) NOT NULL,
	[ShipCompanyName] [nvarchar](100) NOT NULL,
	[ShipCompanyEmail] [nvarchar](100) NULL,
	[ShipCompanyPhone] [nvarchar](100) NULL,
	[ShipCompanyAddress] [nvarchar](500) NULL,
	[ShipCompanyDesc] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[OpeningBalance] [money] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_ShippingCompanies] PRIMARY KEY CLUSTERED 
(
	[ShipCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Ships]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ships](
	[ShipID] [int] IDENTITY(1,1) NOT NULL,
	[ShipEn] [nvarchar](100) NULL,
	[ShipAr] [nvarchar](100) NULL,
	[ShipDescEn] [nvarchar](2000) NULL,
	[ShipDescAr] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_PortShipping] PRIMARY KEY CLUSTERED 
(
	[ShipID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SiteCompanies]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteCompanies](
	[CompID] [int] NOT NULL,
	[CompName] [nvarchar](100) NULL,
	[CompEmail] [nvarchar](100) NULL,
	[CmopWebsite] [nvarchar](100) NULL,
	[CompPhone] [nvarchar](100) NULL,
	[CompFax] [nvarchar](100) NULL,
	[CompAddress] [nvarchar](150) NULL,
	[SecretCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_SiteCompanies] PRIMARY KEY CLUSTERED 
(
	[CompID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SiteLanguages]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteLanguages](
	[id] [int] NOT NULL,
	[lang_name] [nvarchar](75) NULL,
	[lang_word] [nvarchar](75) NULL,
	[lang_code] [nvarchar](50) NULL,
 CONSTRAINT [PK_SiteLanguages] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SiteLinks]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteLinks](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[link_order] [int] NULL,
	[link_lang_id] [int] NULL,
	[link_place] [nvarchar](50) NULL,
	[link_name] [nvarchar](300) NULL,
	[link_details] [ntext] NULL,
	[main_picture] [nvarchar](200) NULL,
	[ViewHome] [bit] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_SiteLinks] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[States]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[StateID] [int] IDENTITY(1,1) NOT NULL,
	[StateEn] [nvarchar](100) NULL,
	[StateAr] [nvarchar](100) NULL,
	[StateDescEn] [nvarchar](2000) NULL,
	[StateDescAr] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[StateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Stores]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stores](
	[StoreID] [bigint] IDENTITY(1,1) NOT NULL,
	[StoreName] [nvarchar](100) NOT NULL,
	[StoreEmail] [nvarchar](100) NULL,
	[StorePhone] [nvarchar](100) NULL,
	[StoreFax] [nvarchar](100) NULL,
	[StoreAddress] [nvarchar](500) NULL,
	[StoreDesc] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_Stores] PRIMARY KEY CLUSTERED 
(
	[StoreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Styles]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Styles](
	[CarStyleID] [int] IDENTITY(1,1) NOT NULL,
	[CarStyleNameEn] [nvarchar](100) NULL,
	[CarStyleNameAr] [nvarchar](100) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarCarStyle] PRIMARY KEY CLUSTERED 
(
	[CarStyleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbl_admin_n]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_admin_n](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[LanguageID] [int] NULL,
	[user_name] [nvarchar](100) NULL,
	[user_password] [nvarchar](100) NULL,
	[user_type] [nvarchar](50) NULL,
	[user_level] [nvarchar](50) NULL,
	[Store_ID] [bigint] NULL,
	[name] [nvarchar](150) NULL,
	[city] [char](10) NULL,
	[address] [nvarchar](300) NULL,
	[mobile] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[fax] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
 CONSTRAINT [PK_tbl_admin_n] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TowingCompanies]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TowingCompanies](
	[TowingCompanyID] [bigint] IDENTITY(1,1) NOT NULL,
	[TowingCompanyName] [nvarchar](100) NOT NULL,
	[TowingCompanyEmail] [nvarchar](100) NULL,
	[TowingCompanyPhone] [nvarchar](100) NULL,
	[TowingCompanyAddress] [nvarchar](500) NULL,
	[TowingCompanyDesc] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[OpeningBalance] [money] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_TowingCompanies] PRIMARY KEY CLUSTERED 
(
	[TowingCompanyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Transmissions]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transmissions](
	[TransmissionID] [int] IDENTITY(1,1) NOT NULL,
	[TransmissionNameEn] [nvarchar](100) NULL,
	[TransmissionNameAr] [nvarchar](100) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarTransmission] PRIMARY KEY CLUSTERED 
(
	[TransmissionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TransportCompanies]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransportCompanies](
	[TransportID] [bigint] IDENTITY(1,1) NOT NULL,
	[TransportName] [nvarchar](100) NOT NULL,
	[TransportEmail] [nvarchar](100) NULL,
	[TransportPhone] [nvarchar](100) NULL,
	[TransportAddress] [nvarchar](500) NULL,
	[TransportDesc] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[OpeningBalance] [money] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_TransportCompanies] PRIMARY KEY CLUSTERED 
(
	[TransportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[WorkingStatus]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkingStatus](
	[WorkingStatusID] [int] IDENTITY(1,1) NOT NULL,
	[WorkingStatusNameEn] [nvarchar](100) NULL,
	[WorkingStatusNameAr] [nvarchar](100) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_CarWorkingStatus] PRIMARY KEY CLUSTERED 
(
	[WorkingStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Workshops]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Workshops](
	[WorkshopID] [bigint] IDENTITY(1,1) NOT NULL,
	[WorkshopName] [nvarchar](100) NOT NULL,
	[WorkshopEmail] [nvarchar](100) NULL,
	[WorkshopPhone] [nvarchar](100) NULL,
	[WorkshopAddress] [nvarchar](500) NULL,
	[WorkshopDesc] [nvarchar](2000) NULL,
	[Priority] [int] NULL,
	[Active] [bit] NULL,
	[OpeningBalance] [money] NULL,
	[System_Who_Add] [bigint] NULL,
	[System_Add_Date] [datetime] NULL,
	[System_Modify_Date] [datetime] NULL,
	[System_Delete_Status] [bit] NULL,
	[System_Who_Delete] [bigint] NULL,
	[System_Delete_Date] [datetime] NULL,
	[System_LastAction_IP] [nvarchar](50) NULL,
 CONSTRAINT [PK_Workshops] PRIMARY KEY CLUSTERED 
(
	[WorkshopID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Years]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Years](
	[YearID] [int] IDENTITY(1,1) NOT NULL,
	[YearNameEn] [nvarchar](100) NULL,
 CONSTRAINT [PK_Years] PRIMARY KEY CLUSTERED 
(
	[YearID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[View_ClientInvoicesTemp]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_ClientInvoicesTemp]
AS
SELECT DISTINCT dbo.CarInvoices.Car_ID, dbo.CarInvoices.Client_ID, dbo.Clients.ClientName
FROM         dbo.Clients INNER JOIN
                      dbo.CarInvoices ON dbo.Clients.ClientID = dbo.CarInvoices.Client_ID

GO
/****** Object:  View [dbo].[View_CarInformation]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_CarInformation]
AS
SELECT        dbo.Auctions.AuctionName, dbo.Buyers.BuyerName, dbo.CarsMarker.MarkerNameEn, dbo.CarsMarker.MarkerNameAr, dbo.CarsModel.TypeNameEn, dbo.CarsModel.TypeNameAr, dbo.CarsStatus.StatusEn, 
                         dbo.CarsStatus.StatusAr, dbo.Colors.ColorNameEn, dbo.Colors.ColorNameAr, Colors_1.ColorNameEn AS ExtColorEn, Colors_1.ColorNameAr AS ExtColorAr, dbo.Capacities.CapacityNameEn, 
                         dbo.Capacities.CapacityNameAr, dbo.WorkingStatus.WorkingStatusNameEn, dbo.WorkingStatus.WorkingStatusNameAr, dbo.PortShipping.PortShipEn, dbo.PortShipping.PortShipAr, dbo.Drives.DriveNameEn, 
                         dbo.Drives.DriveNameAr, dbo.Engines.EngineNameEn, dbo.Engines.EngineNameAr, dbo.ShippingCompanies.ShipCompanyName, dbo.Ships.ShipEn, dbo.Ships.ShipAr, dbo.Styles.CarStyleNameEn, 
                         dbo.Styles.CarStyleNameAr, dbo.Regions.RegionEn, dbo.Regions.RegionAr, dbo.States.StateEn, dbo.States.StateAr, dbo.Workshops.WorkshopName, dbo.Years.YearNameEn, 
                         dbo.Transmissions.TransmissionNameEn, dbo.Transmissions.TransmissionNameAr, dbo.CarsData.CarID, dbo.CarsData.car_code, dbo.CarsData.view_home, dbo.CarsData.active, dbo.CarsData.featured_car, 
                         dbo.CarsData.Auction_ID, dbo.CarsData.Buyer_ID, dbo.CarsData.Marker_ID, dbo.CarsData.Model_ID, dbo.CarsData.WorkingStatus_ID, dbo.CarsData.TransferStatus_ID, dbo.CarsData.Year_ID, 
                         dbo.CarsData.PortShipping_ID, dbo.CarsData.TowingCompsny_ID, dbo.CarsData.ShippingCompany_ID, dbo.CarsData.Ship_ID, dbo.CarsData.State_ID, dbo.CarsData.Region_ID, dbo.CarsData.Workshop_ID, 
                         dbo.CarsData.chassis_no, dbo.CarsData.container_no, dbo.CarsData.container_code, dbo.CarsData.booking_no, dbo.CarsData.poly_fielding, dbo.CarsData.lot_no, dbo.CarsData.engine_no, dbo.CarsData.sold, 
                         dbo.CarsData.exterior_color, dbo.CarsData.interior_color, dbo.CarsData.body_style, dbo.CarsData.car_transmission, dbo.CarsData.mileage, dbo.CarsData.car_drive, dbo.CarsData.car_engine, 
                         dbo.CarsData.car_capacity, dbo.CarsData.car_options, dbo.CarsData.car_remarks, dbo.CarsData.Customs_No, dbo.CarsData.purchase_date, dbo.CarsData.checkout_date, dbo.CarsData.Shipping_date, 
                         dbo.CarsData.expected_arrive_date, dbo.CarsData.dubia_arrive_date, dbo.CarsData.sharjah_arrive_date, dbo.CarsData.arrive_date, dbo.CarsData.WorkshopEntryDate, dbo.CarsData.WorkshopExitDate, 
                         dbo.CarsData.price_currency, dbo.CarsData.real_price, dbo.CarsData.sale_price, dbo.CarsData.cost, dbo.CarsData.CurrencyExchange_ID, dbo.CarsData.payement_to_who, dbo.CarsData.sale_to, 
                         dbo.CarsData.show_sale, dbo.CarsData.sale_date, dbo.CarsData.visitors, dbo.CarsData.main_picture, dbo.CarsData.Timestamp, dbo.CarsData.System_Who_Add, dbo.CarsData.System_Add_Date, 
                         dbo.CarsData.System_Modify_Date, dbo.CarsData.System_Delete_Status, dbo.CarsData.System_Who_Delete, dbo.CarsData.System_Delete_Date, dbo.CarsData.System_LastAction_IP, 
                         dbo.TowingCompanies.TowingCompanyName, dbo.CarsData.Transport_ID, dbo.CarsData.Clearance_ID, dbo.CarsData.Store_ID, dbo.Stores.StoreName, dbo.View_ClientInvoicesTemp.Client_ID, 
                         dbo.View_ClientInvoicesTemp.ClientName, ISNULL
                             ((SELECT        TOP (1) SalePrice
                                 FROM            dbo.CarInvoices
                                 WHERE        (Car_ID = dbo.CarsData.CarID)), 0) AS SalePrice
FROM            dbo.Auctions RIGHT OUTER JOIN
                         dbo.CarsMarker INNER JOIN
                         dbo.CarsData ON dbo.CarsMarker.MarkerID = dbo.CarsData.Marker_ID INNER JOIN
                         dbo.CarsModel ON dbo.CarsData.Model_ID = dbo.CarsModel.ModelID INNER JOIN
                         dbo.CarsStatus ON dbo.CarsData.TransferStatus_ID = dbo.CarsStatus.StatusID INNER JOIN
                         dbo.WorkingStatus ON dbo.CarsData.WorkingStatus_ID = dbo.WorkingStatus.WorkingStatusID LEFT OUTER JOIN
                         dbo.Buyers ON dbo.CarsData.Buyer_ID = dbo.Buyers.BuyerID ON dbo.Auctions.AuctionID = dbo.CarsData.Auction_ID LEFT OUTER JOIN
                         dbo.View_ClientInvoicesTemp ON dbo.CarsData.CarID = dbo.View_ClientInvoicesTemp.Car_ID LEFT OUTER JOIN
                         dbo.Stores ON dbo.CarsData.Store_ID = dbo.Stores.StoreID LEFT OUTER JOIN
                         dbo.TowingCompanies ON dbo.CarsData.TowingCompsny_ID = dbo.TowingCompanies.TowingCompanyID LEFT OUTER JOIN
                         dbo.Transmissions ON dbo.CarsData.car_transmission = dbo.Transmissions.TransmissionID LEFT OUTER JOIN
                         dbo.Years ON dbo.CarsData.Year_ID = dbo.Years.YearID LEFT OUTER JOIN
                         dbo.Workshops ON dbo.CarsData.Workshop_ID = dbo.Workshops.WorkshopID LEFT OUTER JOIN
                         dbo.States ON dbo.CarsData.State_ID = dbo.States.StateID LEFT OUTER JOIN
                         dbo.Regions ON dbo.CarsData.Region_ID = dbo.Regions.RegionID LEFT OUTER JOIN
                         dbo.Styles ON dbo.CarsData.body_style = dbo.Styles.CarStyleID LEFT OUTER JOIN
                         dbo.Ships ON dbo.CarsData.Ship_ID = dbo.Ships.ShipID LEFT OUTER JOIN
                         dbo.ShippingCompanies ON dbo.CarsData.ShippingCompany_ID = dbo.ShippingCompanies.ShipCompanyID LEFT OUTER JOIN
                         dbo.Engines ON dbo.CarsData.car_engine = dbo.Engines.EngineID LEFT OUTER JOIN
                         dbo.Drives ON dbo.CarsData.car_drive = dbo.Drives.DriveID LEFT OUTER JOIN
                         dbo.PortShipping ON dbo.CarsData.PortShipping_ID = dbo.PortShipping.PortShipID LEFT OUTER JOIN
                         dbo.Capacities ON dbo.CarsData.car_capacity = dbo.Capacities.CapacityID LEFT OUTER JOIN
                         dbo.Colors AS Colors_1 ON dbo.CarsData.exterior_color = Colors_1.ColorID LEFT OUTER JOIN
                         dbo.Colors ON dbo.CarsData.interior_color = dbo.Colors.ColorID
WHERE        (dbo.CarsData.System_Delete_Status = 0)

GO
/****** Object:  View [dbo].[View_CarSalesInvoices]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_CarSalesInvoices]
AS
SELECT     dbo.CarInvoices.InvoiceID, dbo.CarInvoices.SiteCompany_ID, dbo.CarInvoices.Car_ID, dbo.CarInvoices.Client_ID, dbo.CarInvoices.Currency_ID, 
                      dbo.CarInvoices.SalePrice, dbo.CarInvoices.FirstAmount,
                          (SELECT     SUM(ClientInvoicesPaymentsValue) AS Expr1
                            FROM          dbo.ClientInvoicesPayments
                            WHERE      (Active = 1) AND (CarInvoice_ID = dbo.CarInvoices.InvoiceID)) AS TotalSubPaymentsForThis,
                          (SELECT     SUM(PaymentValue) AS Expr2
                            FROM          dbo.ClientPayments
                            WHERE      (Active = 1) AND (Invoice_ID = dbo.CarInvoices.InvoiceID)) AS TotalPaymentsForThis, dbo.CarInvoices.InvoiceDate, dbo.CarInvoices.Notes, 
                      dbo.CarInvoices.Timestamp, dbo.View_CarInformation.car_code, dbo.View_CarInformation.MarkerNameEn, dbo.View_CarInformation.MarkerNameAr, 
                      dbo.View_CarInformation.TypeNameEn, dbo.View_CarInformation.TypeNameAr, dbo.View_CarInformation.ExtColorEn, dbo.View_CarInformation.ExtColorAr, 
                      dbo.View_CarInformation.EngineNameEn, dbo.View_CarInformation.EngineNameAr, dbo.View_CarInformation.WorkingStatusNameEn, 
                      dbo.View_CarInformation.WorkingStatusNameAr, dbo.View_CarInformation.chassis_no, dbo.View_CarInformation.container_no, 
                      dbo.View_CarInformation.container_code, dbo.View_CarInformation.lot_no, dbo.View_CarInformation.engine_no, dbo.View_CarInformation.arrive_date, 
                      dbo.View_CarInformation.main_picture, dbo.Clients.ClientName, dbo.Clients.ClientEmail, dbo.Clients.ClientPhone, dbo.Currencies.CurrencyName, 
                      dbo.Currencies.CurrencySymbol, dbo.Currencies.ExchangeRate, dbo.SiteCompanies.CompName, dbo.SiteCompanies.CompEmail, dbo.SiteCompanies.CmopWebsite, 
                      dbo.SiteCompanies.CompPhone, dbo.SiteCompanies.CompFax, dbo.SiteCompanies.CompAddress, dbo.SiteCompanies.SecretCode, 
                      dbo.View_CarInformation.YearNameEn, dbo.CarInvoices.Active, dbo.Clients.OpeningBalance, dbo.View_CarInformation.Store_ID, 
                      dbo.View_CarInformation.StoreName
FROM         dbo.CarInvoices INNER JOIN
                      dbo.Clients ON dbo.CarInvoices.Client_ID = dbo.Clients.ClientID INNER JOIN
                      dbo.Currencies ON dbo.CarInvoices.Currency_ID = dbo.Currencies.CurrencyID INNER JOIN
                      dbo.SiteCompanies ON dbo.CarInvoices.SiteCompany_ID = dbo.SiteCompanies.CompID INNER JOIN
                      dbo.View_CarInformation ON dbo.CarInvoices.Car_ID = dbo.View_CarInformation.CarID

GO
/****** Object:  View [dbo].[View_ClientPayments]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_ClientPayments]
AS
SELECT     dbo.ClientPayments.PaymentID, dbo.ClientPayments.Invoice_ID, dbo.ClientPayments.Client_ID, dbo.ClientPayments.ExchangeCompany_ID, 
                      dbo.ClientPayments.Currency_ID, dbo.ClientPayments.PaymentValue, dbo.ClientPayments.CloseOut, dbo.ClientPayments.PaymentDate, 
                      dbo.ClientPayments.ReceiverName, dbo.ClientPayments.Notes, dbo.ClientPayments.Active, dbo.ClientPayments.Other, dbo.ClientPayments.Timestamp, 
                      dbo.ClientPayments.RegisterDate, dbo.Clients.ClientName, dbo.Clients.ClientEmail, dbo.Clients.ClientPhone, dbo.Clients.OpeningBalance, 
                      dbo.ExchangeCompanies.ExchangeCompanyName, dbo.Currencies.CurrencyName, dbo.Currencies.CurrencySymbol, dbo.Currencies.ExchangeRate, 
                      ISNULL(dbo.ClientPayments.PaymentValue, 0) - ISNULL(dbo.ClientPayments.CloseOut, 0) AS ReceiptRest, dbo.ClientPayments.Store_ID, dbo.Stores.StoreName
FROM         dbo.ClientPayments INNER JOIN
                      dbo.Clients ON dbo.ClientPayments.Client_ID = dbo.Clients.ClientID INNER JOIN
                      dbo.Currencies ON dbo.ClientPayments.Currency_ID = dbo.Currencies.CurrencyID INNER JOIN
                      dbo.Stores ON dbo.ClientPayments.Store_ID = dbo.Stores.StoreID LEFT OUTER JOIN
                      dbo.ExchangeCompanies ON dbo.ClientPayments.ExchangeCompany_ID = dbo.ExchangeCompanies.ExchangeCompanyID
UNION ALL
SELECT     0 AS PaymentID, dbo.CarInvoices.InvoiceID, dbo.CarInvoices.Client_ID, NULL AS ExchangeCompany_ID, dbo.CarInvoices.Currency_ID, dbo.CarInvoices.FirstAmount, 
                      0.00 AS CloseOut, dbo.CarInvoices.InvoiceDate, 'First Amount' AS ReceiverName, dbo.CarInvoices.Notes, dbo.CarInvoices.Active, NULL AS Other, 
                      dbo.CarInvoices.Timestamp, NULL AS RegisterDate, Clients_1.ClientName, Clients_1.ClientEmail, Clients_1.ClientPhone, Clients_1.OpeningBalance, 
                      'First Amount' AS ExchangeCompanyName, Currencies_1.CurrencyName, Currencies_1.CurrencySymbol, Currencies_1.ExchangeRate, 0.00 AS ReceiptRest, 
                      dbo.CarInvoices.Store_ID, Stores_1.StoreName
FROM         dbo.CarInvoices INNER JOIN
                      dbo.Clients AS Clients_1 ON dbo.CarInvoices.Client_ID = Clients_1.ClientID INNER JOIN
                      dbo.Currencies AS Currencies_1 ON dbo.CarInvoices.Currency_ID = Currencies_1.CurrencyID INNER JOIN
                      dbo.Stores AS Stores_1 ON dbo.CarInvoices.Store_ID = Stores_1.StoreID
WHERE     (dbo.CarInvoices.FirstAmount > 0) AND (dbo.CarInvoices.Active = 1)

GO
/****** Object:  View [dbo].[View_InvoicesSubPayments]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_InvoicesSubPayments]
AS
SELECT     dbo.View_CarSalesInvoices.MarkerNameEn, dbo.View_CarSalesInvoices.TypeNameEn, dbo.View_CarSalesInvoices.SalePrice, 
                      dbo.View_CarSalesInvoices.FirstAmount, dbo.View_CarSalesInvoices.TotalSubPaymentsForThis, dbo.View_CarSalesInvoices.TotalPaymentsForThis, 
                      dbo.View_CarSalesInvoices.InvoiceDate, dbo.View_CarSalesInvoices.InvoiceID, dbo.View_ClientPayments.PaymentID, 
                      dbo.ClientInvoicesPayments.ClientInvoicesPaymentsValue, dbo.ClientInvoicesPayments.Active, dbo.ClientInvoicesPayments.RegisterDate, 
                      dbo.ClientInvoicesPayments.Notes, dbo.View_ClientPayments.ClientName, dbo.ClientInvoicesPayments.ClientInvoicesPaymentsID, 
                      dbo.View_ClientPayments.Client_ID, dbo.View_CarSalesInvoices.main_picture
FROM         dbo.View_CarSalesInvoices INNER JOIN
                      dbo.ClientInvoicesPayments ON dbo.View_CarSalesInvoices.InvoiceID = dbo.ClientInvoicesPayments.CarInvoice_ID INNER JOIN
                      dbo.View_ClientPayments ON dbo.ClientInvoicesPayments.ClientPayments_ID = dbo.View_ClientPayments.PaymentID

GO
/****** Object:  View [dbo].[View_ExpensesBuyers]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_ExpensesBuyers]
AS
SELECT     dbo.CarExpenses.ExpenseID, dbo.CarExpenses.Car_ID, dbo.CarExpenses.Currency_ID, dbo.CarExpenses.ExpenseType_ID, dbo.CarExpenses.CompanyType, 
                      dbo.CarExpenses.Company_ID, dbo.CarExpenses.InvoiceCode, dbo.CarExpenses.DueDate, dbo.CarExpenses.PaymentDate, dbo.CarExpenses.Notes, 
                      dbo.CarExpenses.ExpenseValue, dbo.CarExpenses.InOutType, dbo.CarExpenses.Active, dbo.CarExpenses.AddDate, dbo.CarExpenses.WhoAdd, 
                      dbo.CarExpenses.AddIP, dbo.CarExpenses.EditDate, dbo.CarExpenses.WhoEdit, dbo.CarExpenses.EditIP, dbo.CarExpenses.Deleted, dbo.CarExpenses.DeleteDate, 
                      dbo.CarExpenses.WhoDelete, dbo.CarExpenses.DeleteIP, dbo.CarExpenses.Timestamp, dbo.CarsData.car_code, dbo.Currencies.CurrencySymbol, 
                      dbo.Currencies.ExchangeRate, dbo.ExpenseTypes.ExpenseTypeName, dbo.Buyers.BuyerName COLLATE SQL_Latin1_General_CP1_CI_AI AS CompanyName, 
                      dbo.Buyers.OpeningBalance, dbo.ExchangeCompanies.ExchangeCompanyID, dbo.ExchangeCompanies.ExchangeCompanyName, dbo.CarExpenses.PaymentValue, 
                      dbo.CarExpenses.Store_ID, dbo.Stores.StoreName, dbo.ExpenseTypes.GroupName
FROM         dbo.Currencies INNER JOIN
                      dbo.CarExpenses ON dbo.Currencies.CurrencyID = dbo.CarExpenses.Currency_ID INNER JOIN
                      dbo.Buyers ON dbo.CarExpenses.Company_ID = dbo.Buyers.BuyerID INNER JOIN
                      dbo.Stores ON dbo.CarExpenses.Store_ID = dbo.Stores.StoreID LEFT OUTER JOIN
                      dbo.ExchangeCompanies ON dbo.CarExpenses.ExchangeCompany_ID = dbo.ExchangeCompanies.ExchangeCompanyID LEFT OUTER JOIN
                      dbo.CarsData ON dbo.CarExpenses.Car_ID = dbo.CarsData.CarID LEFT OUTER JOIN
                      dbo.ExpenseTypes ON dbo.CarExpenses.ExpenseType_ID = dbo.ExpenseTypes.ExpenseTypeID
WHERE     (dbo.CarExpenses.CompanyType = 'buyer') AND (dbo.CarExpenses.Deleted = 0)

GO
/****** Object:  View [dbo].[View_ExpensesClearances]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_ExpensesClearances]
AS
SELECT     dbo.CarExpenses.ExpenseID, dbo.CarExpenses.Car_ID, dbo.CarExpenses.Currency_ID, dbo.CarExpenses.ExpenseType_ID, dbo.CarExpenses.CompanyType, 
                      dbo.CarExpenses.Company_ID, dbo.CarExpenses.InvoiceCode, dbo.CarExpenses.DueDate, dbo.CarExpenses.PaymentDate, dbo.CarExpenses.Notes, 
                      dbo.CarExpenses.ExpenseValue, dbo.CarExpenses.InOutType, dbo.CarExpenses.Active, dbo.CarExpenses.AddDate, dbo.CarExpenses.WhoAdd, 
                      dbo.CarExpenses.AddIP, dbo.CarExpenses.EditDate, dbo.CarExpenses.WhoEdit, dbo.CarExpenses.EditIP, dbo.CarExpenses.Deleted, dbo.CarExpenses.DeleteDate, 
                      dbo.CarExpenses.WhoDelete, dbo.CarExpenses.DeleteIP, dbo.CarExpenses.Timestamp, dbo.CarsData.car_code, dbo.Currencies.CurrencySymbol, 
                      dbo.Currencies.ExchangeRate, dbo.ExpenseTypes.ExpenseTypeName, 
                      dbo.ClearanceCompanies.ClearanceName COLLATE SQL_Latin1_General_CP1_CI_AI AS CompanyName, dbo.ClearanceCompanies.OpeningBalance, 
                      dbo.ExchangeCompanies.ExchangeCompanyID, dbo.ExchangeCompanies.ExchangeCompanyName, dbo.CarExpenses.PaymentValue, dbo.CarExpenses.Store_ID, 
                      dbo.Stores.StoreName, dbo.ExpenseTypes.GroupName
FROM         dbo.Currencies INNER JOIN
                      dbo.CarExpenses ON dbo.Currencies.CurrencyID = dbo.CarExpenses.Currency_ID INNER JOIN
                      dbo.ClearanceCompanies ON dbo.CarExpenses.Company_ID = dbo.ClearanceCompanies.ClearanceID INNER JOIN
                      dbo.Stores ON dbo.CarExpenses.Store_ID = dbo.Stores.StoreID LEFT OUTER JOIN
                      dbo.ExchangeCompanies ON dbo.CarExpenses.ExchangeCompany_ID = dbo.ExchangeCompanies.ExchangeCompanyID LEFT OUTER JOIN
                      dbo.ExpenseTypes ON dbo.CarExpenses.ExpenseType_ID = dbo.ExpenseTypes.ExpenseTypeID LEFT OUTER JOIN
                      dbo.CarsData ON dbo.CarExpenses.Car_ID = dbo.CarsData.CarID
WHERE     (dbo.CarExpenses.CompanyType = N'clearance') AND (dbo.CarExpenses.Deleted = 0)

GO
/****** Object:  View [dbo].[View_ExpensesShipping]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_ExpensesShipping]
AS
SELECT     dbo.CarExpenses.ExpenseID, dbo.CarExpenses.Car_ID, dbo.CarExpenses.Currency_ID, dbo.CarExpenses.ExpenseType_ID, dbo.CarExpenses.CompanyType, 
                      dbo.CarExpenses.Company_ID, dbo.CarExpenses.InvoiceCode, dbo.CarExpenses.DueDate, dbo.CarExpenses.PaymentDate, dbo.CarExpenses.Notes, 
                      dbo.CarExpenses.ExpenseValue, dbo.CarExpenses.InOutType, dbo.CarExpenses.Active, dbo.CarExpenses.AddDate, dbo.CarExpenses.WhoAdd, 
                      dbo.CarExpenses.AddIP, dbo.CarExpenses.EditDate, dbo.CarExpenses.WhoEdit, dbo.CarExpenses.EditIP, dbo.CarExpenses.Deleted, dbo.CarExpenses.DeleteDate, 
                      dbo.CarExpenses.WhoDelete, dbo.CarExpenses.DeleteIP, dbo.CarExpenses.Timestamp, dbo.CarsData.car_code, dbo.Currencies.CurrencySymbol, 
                      dbo.Currencies.ExchangeRate, dbo.ExpenseTypes.ExpenseTypeName, 
                      dbo.ShippingCompanies.ShipCompanyName COLLATE SQL_Latin1_General_CP1_CI_AI AS CompanyName, dbo.ShippingCompanies.OpeningBalance, 
                      dbo.ExchangeCompanies.ExchangeCompanyID, dbo.ExchangeCompanies.ExchangeCompanyName, dbo.CarExpenses.PaymentValue, dbo.CarExpenses.Store_ID, 
                      dbo.Stores.StoreName, dbo.ExpenseTypes.GroupName
FROM         dbo.Currencies INNER JOIN
                      dbo.CarExpenses ON dbo.Currencies.CurrencyID = dbo.CarExpenses.Currency_ID INNER JOIN
                      dbo.ShippingCompanies ON dbo.CarExpenses.Company_ID = dbo.ShippingCompanies.ShipCompanyID INNER JOIN
                      dbo.Stores ON dbo.CarExpenses.Store_ID = dbo.Stores.StoreID LEFT OUTER JOIN
                      dbo.ExchangeCompanies ON dbo.CarExpenses.ExchangeCompany_ID = dbo.ExchangeCompanies.ExchangeCompanyID LEFT OUTER JOIN
                      dbo.ExpenseTypes ON dbo.CarExpenses.ExpenseType_ID = dbo.ExpenseTypes.ExpenseTypeID LEFT OUTER JOIN
                      dbo.CarsData ON dbo.CarExpenses.Car_ID = dbo.CarsData.CarID
WHERE     (dbo.CarExpenses.CompanyType = N'shipping') AND (dbo.CarExpenses.Deleted = 0)

GO
/****** Object:  View [dbo].[View_ExpensesTowing]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_ExpensesTowing]
AS
SELECT     dbo.CarExpenses.ExpenseID, dbo.CarExpenses.Car_ID, dbo.CarExpenses.Currency_ID, dbo.CarExpenses.ExpenseType_ID, dbo.CarExpenses.CompanyType, 
                      dbo.CarExpenses.Company_ID, dbo.CarExpenses.InvoiceCode, dbo.CarExpenses.DueDate, dbo.CarExpenses.PaymentDate, dbo.CarExpenses.Notes, 
                      dbo.CarExpenses.ExpenseValue, dbo.CarExpenses.InOutType, dbo.CarExpenses.Active, dbo.CarExpenses.AddDate, dbo.CarExpenses.WhoAdd, 
                      dbo.CarExpenses.AddIP, dbo.CarExpenses.EditDate, dbo.CarExpenses.WhoEdit, dbo.CarExpenses.EditIP, dbo.CarExpenses.Deleted, dbo.CarExpenses.DeleteDate, 
                      dbo.CarExpenses.WhoDelete, dbo.CarExpenses.DeleteIP, dbo.CarExpenses.Timestamp, dbo.CarsData.car_code, dbo.Currencies.CurrencySymbol, 
                      dbo.Currencies.ExchangeRate, dbo.ExpenseTypes.ExpenseTypeName, 
                      dbo.TowingCompanies.TowingCompanyName COLLATE SQL_Latin1_General_CP1_CI_AI AS CompanyName, dbo.TowingCompanies.OpeningBalance, 
                      dbo.ExchangeCompanies.ExchangeCompanyID, dbo.ExchangeCompanies.ExchangeCompanyName, dbo.CarExpenses.PaymentValue, dbo.CarExpenses.Store_ID, 
                      dbo.Stores.StoreName, dbo.ExpenseTypes.GroupName
FROM         dbo.Currencies INNER JOIN
                      dbo.CarExpenses ON dbo.Currencies.CurrencyID = dbo.CarExpenses.Currency_ID INNER JOIN
                      dbo.TowingCompanies ON dbo.CarExpenses.Company_ID = dbo.TowingCompanies.TowingCompanyID INNER JOIN
                      dbo.Stores ON dbo.CarExpenses.Store_ID = dbo.Stores.StoreID LEFT OUTER JOIN
                      dbo.ExchangeCompanies ON dbo.CarExpenses.ExchangeCompany_ID = dbo.ExchangeCompanies.ExchangeCompanyID LEFT OUTER JOIN
                      dbo.ExpenseTypes ON dbo.CarExpenses.ExpenseType_ID = dbo.ExpenseTypes.ExpenseTypeID LEFT OUTER JOIN
                      dbo.CarsData ON dbo.CarExpenses.Car_ID = dbo.CarsData.CarID
WHERE     (dbo.CarExpenses.CompanyType = N'towing') AND (dbo.CarExpenses.Deleted = 0)

GO
/****** Object:  View [dbo].[View_ExpensesTransports]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_ExpensesTransports]
AS
SELECT     dbo.CarExpenses.ExpenseID, dbo.CarExpenses.Car_ID, dbo.CarExpenses.Currency_ID, dbo.CarExpenses.ExpenseType_ID, dbo.CarExpenses.CompanyType, 
                      dbo.CarExpenses.Company_ID, dbo.CarExpenses.InvoiceCode, dbo.CarExpenses.DueDate, dbo.CarExpenses.PaymentDate, dbo.CarExpenses.Notes, 
                      dbo.CarExpenses.ExpenseValue, dbo.CarExpenses.InOutType, dbo.CarExpenses.Active, dbo.CarExpenses.AddDate, dbo.CarExpenses.WhoAdd, 
                      dbo.CarExpenses.AddIP, dbo.CarExpenses.EditDate, dbo.CarExpenses.WhoEdit, dbo.CarExpenses.EditIP, dbo.CarExpenses.Deleted, dbo.CarExpenses.DeleteDate, 
                      dbo.CarExpenses.WhoDelete, dbo.CarExpenses.DeleteIP, dbo.CarExpenses.Timestamp, dbo.CarsData.car_code, dbo.Currencies.CurrencySymbol, 
                      dbo.Currencies.ExchangeRate, dbo.ExpenseTypes.ExpenseTypeName, 
                      dbo.TransportCompanies.TransportName COLLATE SQL_Latin1_General_CP1_CI_AI AS CompanyName, dbo.TransportCompanies.OpeningBalance, 
                      dbo.ExchangeCompanies.ExchangeCompanyID, dbo.ExchangeCompanies.ExchangeCompanyName, dbo.CarExpenses.PaymentValue, dbo.CarExpenses.Store_ID, 
                      dbo.Stores.StoreName, dbo.ExpenseTypes.GroupName
FROM         dbo.Currencies INNER JOIN
                      dbo.CarExpenses ON dbo.Currencies.CurrencyID = dbo.CarExpenses.Currency_ID INNER JOIN
                      dbo.Stores ON dbo.CarExpenses.Store_ID = dbo.Stores.StoreID LEFT OUTER JOIN
                      dbo.TransportCompanies ON dbo.CarExpenses.Company_ID = dbo.TransportCompanies.TransportID LEFT OUTER JOIN
                      dbo.ExchangeCompanies ON dbo.CarExpenses.ExchangeCompany_ID = dbo.ExchangeCompanies.ExchangeCompanyID LEFT OUTER JOIN
                      dbo.ExpenseTypes ON dbo.CarExpenses.ExpenseType_ID = dbo.ExpenseTypes.ExpenseTypeID LEFT OUTER JOIN
                      dbo.CarsData ON dbo.CarExpenses.Car_ID = dbo.CarsData.CarID
WHERE     (dbo.CarExpenses.CompanyType = N'transport') AND (dbo.CarExpenses.Deleted = 0) OR
                      (dbo.CarExpenses.CompanyType = N'cash')

GO
/****** Object:  View [dbo].[View_ExpensesWorkshop]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_ExpensesWorkshop]
AS
SELECT     dbo.CarExpenses.ExpenseID, dbo.CarExpenses.Car_ID, dbo.CarExpenses.Currency_ID, dbo.CarExpenses.ExpenseType_ID, dbo.CarExpenses.CompanyType, 
                      dbo.CarExpenses.Company_ID, dbo.CarExpenses.InvoiceCode, dbo.CarExpenses.DueDate, dbo.CarExpenses.PaymentDate, dbo.CarExpenses.Notes, 
                      dbo.CarExpenses.ExpenseValue, dbo.CarExpenses.InOutType, dbo.CarExpenses.Active, dbo.CarExpenses.AddDate, dbo.CarExpenses.WhoAdd, 
                      dbo.CarExpenses.AddIP, dbo.CarExpenses.EditDate, dbo.CarExpenses.WhoEdit, dbo.CarExpenses.EditIP, dbo.CarExpenses.Deleted, dbo.CarExpenses.DeleteDate, 
                      dbo.CarExpenses.WhoDelete, dbo.CarExpenses.DeleteIP, dbo.CarExpenses.Timestamp, dbo.CarsData.car_code, dbo.Currencies.CurrencySymbol, 
                      dbo.Currencies.ExchangeRate, dbo.ExpenseTypes.ExpenseTypeName, dbo.Workshops.WorkshopName COLLATE SQL_Latin1_General_CP1_CI_AI AS CompanyName,
                       dbo.Workshops.OpeningBalance, dbo.ExchangeCompanies.ExchangeCompanyID, dbo.ExchangeCompanies.ExchangeCompanyName, 
                      dbo.CarExpenses.PaymentValue, dbo.CarExpenses.Store_ID, dbo.Stores.StoreName, dbo.ExpenseTypes.GroupName
FROM         dbo.Currencies INNER JOIN
                      dbo.CarExpenses ON dbo.Currencies.CurrencyID = dbo.CarExpenses.Currency_ID INNER JOIN
                      dbo.Workshops ON dbo.CarExpenses.Company_ID = dbo.Workshops.WorkshopID INNER JOIN
                      dbo.Stores ON dbo.CarExpenses.Store_ID = dbo.Stores.StoreID LEFT OUTER JOIN
                      dbo.ExchangeCompanies ON dbo.CarExpenses.ExchangeCompany_ID = dbo.ExchangeCompanies.ExchangeCompanyID LEFT OUTER JOIN
                      dbo.ExpenseTypes ON dbo.CarExpenses.ExpenseType_ID = dbo.ExpenseTypes.ExpenseTypeID LEFT OUTER JOIN
                      dbo.CarsData ON dbo.CarExpenses.Car_ID = dbo.CarsData.CarID
WHERE     (dbo.CarExpenses.CompanyType = N'workshop') AND (dbo.CarExpenses.Deleted = 0)

GO
/****** Object:  View [dbo].[View_ExpensesList]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*UNION ALL
SELECT     ExpenseID, Car_ID, Currency_ID, ExpenseType_ID, CompanyType, Company_ID, InvoiceCode, DueDate, PaymentDate, Notes, ExpenseValue, InOutType, Active, 
                      AddDate, WhoAdd, AddIP, EditDate, WhoEdit, EditIP, Deleted, DeleteDate, WhoDelete, DeleteIP, Timestamp, car_code, CurrencySymbol, ExchangeRate, 
                      ExpenseTypeName, CompanyName, OpeningBalance, ExchangeCompanyID, ExchangeCompanyName
FROM         dbo.View_Clearances
UNION ALL
SELECT     ExpenseID, Car_ID, Currency_ID, ExpenseType_ID, CompanyType, Company_ID, InvoiceCode, DueDate, PaymentDate, Notes, ExpenseValue, InOutType, Active, 
                      AddDate, WhoAdd, AddIP, EditDate, WhoEdit, EditIP, Deleted, DeleteDate, WhoDelete, DeleteIP, Timestamp, car_code, CurrencySymbol, ExchangeRate, 
                      ExpenseTypeName, CompanyName, OpeningBalance, ExchangeCompanyID, ExchangeCompanyName
FROM         dbo.View_Transports*/
CREATE VIEW [dbo].[View_ExpensesList]
AS
SELECT     ExpenseID, Car_ID, Currency_ID, ExpenseType_ID, CompanyType, Company_ID, InvoiceCode, DueDate, PaymentDate, Notes, ExpenseValue, InOutType, Active, 
                      AddDate, WhoAdd, AddIP, EditDate, WhoEdit, EditIP, Deleted, DeleteDate, WhoDelete, DeleteIP, Timestamp, car_code, CurrencySymbol, ExchangeRate, 
                      ExpenseTypeName, CompanyName, OpeningBalance, ExchangeCompanyID, ExchangeCompanyName, PaymentValue, Store_ID, StoreName, GroupName
FROM         dbo.View_ExpensesBuyers
UNION ALL
SELECT     ExpenseID, Car_ID, Currency_ID, ExpenseType_ID, CompanyType, Company_ID, InvoiceCode, DueDate, PaymentDate, Notes, ExpenseValue, InOutType, Active, 
                      AddDate, WhoAdd, AddIP, EditDate, WhoEdit, EditIP, Deleted, DeleteDate, WhoDelete, DeleteIP, Timestamp, car_code, CurrencySymbol, ExchangeRate, 
                      ExpenseTypeName, CompanyName, OpeningBalance, ExchangeCompanyID, ExchangeCompanyName, PaymentValue, Store_ID, StoreName, GroupName
FROM         dbo.View_ExpensesShipping
UNION ALL
SELECT     ExpenseID, Car_ID, Currency_ID, ExpenseType_ID, CompanyType, Company_ID, InvoiceCode, DueDate, PaymentDate, Notes, ExpenseValue, InOutType, Active, 
                      AddDate, WhoAdd, AddIP, EditDate, WhoEdit, EditIP, Deleted, DeleteDate, WhoDelete, DeleteIP, Timestamp, car_code, CurrencySymbol, ExchangeRate, 
                      ExpenseTypeName, CompanyName, OpeningBalance, ExchangeCompanyID, ExchangeCompanyName, PaymentValue, Store_ID, StoreName, GroupName
FROM         dbo.View_ExpensesTowing
UNION ALL
SELECT     ExpenseID, Car_ID, Currency_ID, ExpenseType_ID, CompanyType, Company_ID, InvoiceCode, DueDate, PaymentDate, Notes, ExpenseValue, InOutType, Active, 
                      AddDate, WhoAdd, AddIP, EditDate, WhoEdit, EditIP, Deleted, DeleteDate, WhoDelete, DeleteIP, Timestamp, car_code, CurrencySymbol, ExchangeRate, 
                      ExpenseTypeName, CompanyName, OpeningBalance, ExchangeCompanyID, ExchangeCompanyName, PaymentValue, Store_ID, StoreName, GroupName
FROM         dbo.View_ExpensesClearances
UNION ALL
SELECT     ExpenseID, Car_ID, Currency_ID, ExpenseType_ID, CompanyType, Company_ID, InvoiceCode, DueDate, PaymentDate, Notes, ExpenseValue, InOutType, Active, 
                      AddDate, WhoAdd, AddIP, EditDate, WhoEdit, EditIP, Deleted, DeleteDate, WhoDelete, DeleteIP, Timestamp, car_code, CurrencySymbol, ExchangeRate, 
                      ExpenseTypeName, CompanyName, OpeningBalance, ExchangeCompanyID, ExchangeCompanyName, PaymentValue, Store_ID, StoreName, GroupName
FROM         dbo.View_ExpensesTransports
UNION ALL
SELECT     ExpenseID, Car_ID, Currency_ID, ExpenseType_ID, CompanyType, Company_ID, InvoiceCode, DueDate, PaymentDate, Notes, ExpenseValue, InOutType, Active, 
                      AddDate, WhoAdd, AddIP, EditDate, WhoEdit, EditIP, Deleted, DeleteDate, WhoDelete, DeleteIP, Timestamp, car_code, CurrencySymbol, ExchangeRate, 
                      ExpenseTypeName, CompanyName, OpeningBalance, ExchangeCompanyID, ExchangeCompanyName, PaymentValue, Store_ID, StoreName, GroupName
FROM         dbo.View_ExpensesWorkshop

GO
/****** Object:  View [dbo].[View_CarInformation.temp]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_CarInformation.temp]
AS
SELECT     dbo.Auctions.AuctionName, dbo.Buyers.BuyerName, dbo.CarsMarker.MarkerNameEn, dbo.CarsMarker.MarkerNameAr, dbo.CarsModel.TypeNameEn, 
                      dbo.CarsModel.TypeNameAr, dbo.CarsStatus.StatusEn, dbo.CarsStatus.StatusAr, dbo.Colors.ColorNameEn, dbo.Colors.ColorNameAr, 
                      Colors_1.ColorNameEn AS ExtColorEn, Colors_1.ColorNameAr AS ExtColorAr, dbo.Capacities.CapacityNameEn, dbo.Capacities.CapacityNameAr, 
                      dbo.WorkingStatus.WorkingStatusNameEn, dbo.WorkingStatus.WorkingStatusNameAr, dbo.PortShipping.PortShipEn, dbo.PortShipping.PortShipAr, 
                      dbo.Drives.DriveNameEn, dbo.Drives.DriveNameAr, dbo.Engines.EngineNameEn, dbo.Engines.EngineNameAr, dbo.ShippingCompanies.ShipCompanyName, 
                      dbo.Ships.ShipEn, dbo.Ships.ShipAr, dbo.Styles.CarStyleNameEn, dbo.Styles.CarStyleNameAr, dbo.Regions.RegionEn, dbo.Regions.RegionAr, dbo.States.StateEn, 
                      dbo.States.StateAr, dbo.Workshops.WorkshopName, dbo.Years.YearNameEn, dbo.Transmissions.TransmissionNameEn, dbo.Transmissions.TransmissionNameAr, 
                      dbo.CarsData.CarID, dbo.CarsData.car_code, dbo.CarsData.view_home, dbo.CarsData.active, dbo.CarsData.featured_car, dbo.CarsData.Auction_ID, 
                      dbo.CarsData.Buyer_ID, dbo.CarsData.Marker_ID, dbo.CarsData.Model_ID, dbo.CarsData.WorkingStatus_ID, dbo.CarsData.TransferStatus_ID, dbo.CarsData.Year_ID, 
                      dbo.CarsData.PortShipping_ID, dbo.CarsData.TowingCompsny_ID, dbo.CarsData.ShippingCompany_ID, dbo.CarsData.Ship_ID, dbo.CarsData.State_ID, 
                      dbo.CarsData.Region_ID, dbo.CarsData.Workshop_ID, dbo.CarsData.chassis_no, dbo.CarsData.container_no, dbo.CarsData.container_code, 
                      dbo.CarsData.booking_no, dbo.CarsData.poly_fielding, dbo.CarsData.lot_no, dbo.CarsData.engine_no, dbo.CarsData.sold, dbo.CarsData.exterior_color, 
                      dbo.CarsData.interior_color, dbo.CarsData.body_style, dbo.CarsData.car_transmission, dbo.CarsData.mileage, dbo.CarsData.car_drive, dbo.CarsData.car_engine, 
                      dbo.CarsData.car_capacity, dbo.CarsData.car_options, dbo.CarsData.car_remarks, dbo.CarsData.Customs_No, dbo.CarsData.purchase_date, 
                      dbo.CarsData.checkout_date, dbo.CarsData.Shipping_date, dbo.CarsData.expected_arrive_date, dbo.CarsData.dubia_arrive_date, dbo.CarsData.sharjah_arrive_date, 
                      dbo.CarsData.arrive_date, dbo.CarsData.WorkshopEntryDate, dbo.CarsData.WorkshopExitDate, dbo.CarsData.price_currency, dbo.CarsData.real_price, 
                      dbo.CarsData.sale_price, dbo.CarsData.cost, dbo.CarsData.CurrencyExchange_ID, dbo.CarsData.payement_to_who, dbo.CarsData.sale_to, dbo.CarsData.show_sale, 
                      dbo.CarsData.sale_date, dbo.CarsData.visitors, dbo.CarsData.main_picture, dbo.CarsData.Timestamp, dbo.CarsData.System_Who_Add, 
                      dbo.CarsData.System_Add_Date, dbo.CarsData.System_Modify_Date, dbo.CarsData.System_Delete_Status, dbo.CarsData.System_Who_Delete, 
                      dbo.CarsData.System_Delete_Date, dbo.CarsData.System_LastAction_IP, dbo.TowingCompanies.TowingCompanyName, dbo.CarsData.Transport_ID, 
                      dbo.CarsData.Clearance_ID, dbo.CarsData.Store_ID, dbo.Stores.StoreName, dbo.View_ClientInvoicesTemp.Client_ID, dbo.View_ClientInvoicesTemp.ClientName
FROM         dbo.WorkingStatus INNER JOIN
                      dbo.Auctions INNER JOIN
                      dbo.CarsData ON dbo.Auctions.AuctionID = dbo.CarsData.Auction_ID INNER JOIN
                      dbo.Buyers ON dbo.CarsData.Buyer_ID = dbo.Buyers.BuyerID INNER JOIN
                      dbo.CarsMarker ON dbo.CarsData.Marker_ID = dbo.CarsMarker.MarkerID INNER JOIN
                      dbo.CarsModel ON dbo.CarsData.Model_ID = dbo.CarsModel.ModelID INNER JOIN
                      dbo.CarsStatus ON dbo.CarsData.TransferStatus_ID = dbo.CarsStatus.StatusID ON 
                      dbo.WorkingStatus.WorkingStatusID = dbo.CarsData.WorkingStatus_ID LEFT OUTER JOIN
                      dbo.View_ClientInvoicesTemp ON dbo.CarsData.CarID = dbo.View_ClientInvoicesTemp.Car_ID LEFT OUTER JOIN
                      dbo.Stores ON dbo.CarsData.Store_ID = dbo.Stores.StoreID LEFT OUTER JOIN
                      dbo.TowingCompanies ON dbo.CarsData.TowingCompsny_ID = dbo.TowingCompanies.TowingCompanyID LEFT OUTER JOIN
                      dbo.Transmissions ON dbo.CarsData.car_transmission = dbo.Transmissions.TransmissionID LEFT OUTER JOIN
                      dbo.Years ON dbo.CarsData.Year_ID = dbo.Years.YearID LEFT OUTER JOIN
                      dbo.Workshops ON dbo.CarsData.Workshop_ID = dbo.Workshops.WorkshopID LEFT OUTER JOIN
                      dbo.States ON dbo.CarsData.State_ID = dbo.States.StateID LEFT OUTER JOIN
                      dbo.Regions ON dbo.CarsData.Region_ID = dbo.Regions.RegionID LEFT OUTER JOIN
                      dbo.Styles ON dbo.CarsData.body_style = dbo.Styles.CarStyleID LEFT OUTER JOIN
                      dbo.Ships ON dbo.CarsData.Ship_ID = dbo.Ships.ShipID LEFT OUTER JOIN
                      dbo.ShippingCompanies ON dbo.CarsData.ShippingCompany_ID = dbo.ShippingCompanies.ShipCompanyID LEFT OUTER JOIN
                      dbo.Engines ON dbo.CarsData.car_engine = dbo.Engines.EngineID LEFT OUTER JOIN
                      dbo.Drives ON dbo.CarsData.car_drive = dbo.Drives.DriveID LEFT OUTER JOIN
                      dbo.PortShipping ON dbo.CarsData.PortShipping_ID = dbo.PortShipping.PortShipID LEFT OUTER JOIN
                      dbo.Capacities ON dbo.CarsData.car_capacity = dbo.Capacities.CapacityID LEFT OUTER JOIN
                      dbo.Colors AS Colors_1 ON dbo.CarsData.exterior_color = Colors_1.ColorID LEFT OUTER JOIN
                      dbo.Colors ON dbo.CarsData.interior_color = dbo.Colors.ColorID
WHERE     (dbo.CarsData.System_Delete_Status = 0)

GO
/****** Object:  View [dbo].[View_CarMakerMode.temp]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_CarMakerMode.temp]
AS
SELECT     dbo.CarsData.CarID, dbo.CarsData.car_code, dbo.CarsData.view_home, dbo.CarsData.active, dbo.CarsData.featured_car, dbo.CarsData.Auction_ID, 
                      dbo.CarsData.Buyer_ID, dbo.CarsData.Marker_ID, dbo.CarsData.Model_ID, dbo.CarsData.WorkingStatus_ID, dbo.CarsData.TransferStatus_ID, dbo.CarsData.Year_ID, 
                      dbo.CarsData.PortShipping_ID, dbo.CarsData.TowingCompsny_ID, dbo.CarsData.ShippingCompany_ID, dbo.CarsData.Ship_ID, dbo.CarsData.State_ID, 
                      dbo.CarsData.Region_ID, dbo.CarsData.Workshop_ID, dbo.CarsData.Transport_ID, dbo.CarsData.Clearance_ID, dbo.CarsData.Store_ID, dbo.CarsData.chassis_no, 
                      dbo.CarsData.container_no, dbo.CarsData.container_code, dbo.CarsData.booking_no, dbo.CarsData.poly_fielding, dbo.CarsData.lot_no, dbo.CarsData.engine_no, 
                      dbo.CarsData.sold, dbo.CarsData.exterior_color, dbo.CarsData.interior_color, dbo.CarsData.body_style, dbo.CarsData.car_transmission, dbo.CarsData.mileage, 
                      dbo.CarsData.car_drive, dbo.CarsData.car_engine, dbo.CarsData.car_capacity, dbo.CarsData.car_options, dbo.CarsData.car_remarks, dbo.CarsData.Customs_No, 
                      dbo.CarsData.purchase_date, dbo.CarsData.checkout_date, dbo.CarsData.Shipping_date, dbo.CarsData.expected_arrive_date, dbo.CarsData.dubia_arrive_date, 
                      dbo.CarsData.sharjah_arrive_date, dbo.CarsData.arrive_date, dbo.CarsData.WorkshopEntryDate, dbo.CarsData.WorkshopExitDate, dbo.CarsData.price_currency, 
                      dbo.CarsData.real_price, dbo.CarsData.sale_price, dbo.CarsData.cost, dbo.CarsData.CurrencyExchange_ID, dbo.CarsData.payement_to_who, dbo.CarsData.sale_to, 
                      dbo.CarsData.show_sale, dbo.CarsData.sale_date, dbo.CarsData.visitors, dbo.CarsData.main_picture, dbo.CarsData.Timestamp, dbo.CarsData.System_Who_Add, 
                      dbo.CarsData.System_Add_Date, dbo.CarsData.System_Modify_Date, dbo.CarsData.System_Delete_Status, dbo.CarsData.System_Who_Delete, 
                      dbo.CarsData.System_Delete_Date, dbo.CarsData.System_LastAction_IP, dbo.CarsMarker.MarkerNameEn, dbo.CarsMarker.MarkerNameAr, 
                      dbo.CarsModel.TypeNameEn, dbo.CarsModel.TypeNameAr
FROM         dbo.CarsData INNER JOIN
                      dbo.CarsModel ON dbo.CarsData.Model_ID = dbo.CarsModel.ModelID INNER JOIN
                      dbo.CarsMarker ON dbo.CarsModel.Marker_ID = dbo.CarsMarker.MarkerID

GO
/****** Object:  View [dbo].[View_ClientPayments.temp]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_ClientPayments.temp]
AS
SELECT     dbo.ClientPayments.PaymentID, dbo.ClientPayments.Invoice_ID, dbo.ClientPayments.Client_ID, dbo.ClientPayments.ExchangeCompany_ID, 
                      dbo.ClientPayments.Currency_ID, dbo.ClientPayments.PaymentValue, dbo.ClientPayments.CloseOut, dbo.ClientPayments.PaymentDate, 
                      dbo.ClientPayments.ReceiverName, dbo.ClientPayments.Notes, dbo.ClientPayments.Active, dbo.ClientPayments.Other, dbo.ClientPayments.Timestamp, 
                      dbo.ClientPayments.RegisterDate, dbo.Clients.ClientName, dbo.Clients.ClientEmail, dbo.Clients.ClientPhone, dbo.Clients.OpeningBalance, 
                      dbo.ExchangeCompanies.ExchangeCompanyName, dbo.Currencies.CurrencyName, dbo.Currencies.CurrencySymbol, dbo.Currencies.ExchangeRate, 
                      ISNULL(dbo.ClientPayments.PaymentValue, 0) - ISNULL(dbo.ClientPayments.CloseOut, 0) AS ReceiptRest
FROM         dbo.ClientPayments INNER JOIN
                      dbo.Clients ON dbo.ClientPayments.Client_ID = dbo.Clients.ClientID INNER JOIN
                      dbo.Currencies ON dbo.ClientPayments.Currency_ID = dbo.Currencies.CurrencyID LEFT OUTER JOIN
                      dbo.ExchangeCompanies ON dbo.ClientPayments.ExchangeCompany_ID = dbo.ExchangeCompanies.ExchangeCompanyID

GO
/****** Object:  View [dbo].[View_FirstAmountsForClientPaymentsTemp]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_FirstAmountsForClientPaymentsTemp]
AS
SELECT     NULL AS PaymentID, dbo.CarInvoices.InvoiceID, dbo.CarInvoices.Client_ID, NULL AS ExchangeCompany_ID, dbo.CarInvoices.Currency_ID, 
                      dbo.CarInvoices.FirstAmount, 0.00 AS CloseOut, dbo.CarInvoices.InvoiceDate, NULL AS ReceiverName, dbo.CarInvoices.Notes, dbo.CarInvoices.Active, NULL 
                      AS Other, dbo.CarInvoices.Timestamp, NULL AS RegisterDate, dbo.Clients.ClientName, dbo.Clients.ClientEmail, dbo.Clients.ClientPhone, 
                      dbo.Clients.OpeningBalance, NULL AS ExchangeCompanyName, dbo.Currencies.CurrencyName, dbo.Currencies.CurrencySymbol, dbo.Currencies.ExchangeRate, 
                      0.00 AS ReceiptRest
FROM         dbo.CarInvoices INNER JOIN
                      dbo.Clients ON dbo.CarInvoices.Client_ID = dbo.Clients.ClientID INNER JOIN
                      dbo.Currencies ON dbo.CarInvoices.Currency_ID = dbo.Currencies.CurrencyID
WHERE     (dbo.CarInvoices.Active = 1)

GO
/****** Object:  View [dbo].[View_SafeValuesList]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_SafeValuesList]
AS
SELECT     TOP (100) PERCENT dbo.MainSafeDebitCredit.SafeID, dbo.MainSafeDebitCredit.Employee_ID, dbo.MainSafeDebitCredit.Store_ID, 
                      dbo.MainSafeDebitCredit.SafeDebitValue, dbo.MainSafeDebitCredit.SafeDebitDate, dbo.MainSafeDebitCredit.SafeCreditValue, dbo.MainSafeDebitCredit.SafeCreditDate, 
                      dbo.MainSafeDebitCredit.System_Who_Add, dbo.MainSafeDebitCredit.System_Add_Date, dbo.MainSafeDebitCredit.System_Modify_Date, 
                      dbo.MainSafeDebitCredit.System_Delete_Status, dbo.MainSafeDebitCredit.System_Who_Delete, dbo.MainSafeDebitCredit.System_Delete_Date, 
                      dbo.MainSafeDebitCredit.System_LastAction_IP, dbo.tbl_admin_n.name, dbo.Stores.StoreName
FROM         dbo.MainSafeDebitCredit INNER JOIN
                      dbo.tbl_admin_n ON dbo.MainSafeDebitCredit.Employee_ID = dbo.tbl_admin_n.id INNER JOIN
                      dbo.Stores ON dbo.MainSafeDebitCredit.Store_ID = dbo.Stores.StoreID
WHERE     (dbo.MainSafeDebitCredit.System_Delete_Status = 0)

GO
ALTER TABLE [dbo].[CarPartsImages]  WITH CHECK ADD  CONSTRAINT [FK_CarPartsImages_CarParts] FOREIGN KEY([PartId])
REFERENCES [dbo].[CarParts] ([Id])
GO
ALTER TABLE [dbo].[CarPartsImages] CHECK CONSTRAINT [FK_CarPartsImages_CarParts]
GO
ALTER TABLE [dbo].[Pictures]  WITH NOCHECK ADD  CONSTRAINT [FK_Images_SiteLinks] FOREIGN KEY([MasterID])
REFERENCES [dbo].[SiteLinks] ([id])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[Pictures] NOCHECK CONSTRAINT [FK_Images_SiteLinks]
GO
ALTER TABLE [dbo].[SiteLinks]  WITH CHECK ADD  CONSTRAINT [FK_SiteLinks_SiteLanguages] FOREIGN KEY([link_lang_id])
REFERENCES [dbo].[SiteLanguages] ([id])
GO
ALTER TABLE [dbo].[SiteLinks] CHECK CONSTRAINT [FK_SiteLinks_SiteLanguages]
GO
ALTER TABLE [dbo].[tbl_admin_n]  WITH CHECK ADD  CONSTRAINT [FK_tbl_admin_n_Stores] FOREIGN KEY([Store_ID])
REFERENCES [dbo].[Stores] ([StoreID])
GO
ALTER TABLE [dbo].[tbl_admin_n] CHECK CONSTRAINT [FK_tbl_admin_n_Stores]
GO
/****** Object:  StoredProcedure [dbo].[AddinsDeleteAddin]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <...>
-- Description:	<delete addin info.>
-- =============================================
CREATE PROCEDURE [dbo].[AddinsDeleteAddin]
	-- Add the parameters for the stored procedure here
	@id bigint	
	
AS
BEGIN
	
	SET NOCOUNT ON;

--    SELECT COUNT(ID) AS ID FROM Addins WHERE ParentID = @id;
--
--	IF @@ROWCOUNT <= 0
		Delete from  Addins Where ID = @id;
			
END










GO
/****** Object:  StoredProcedure [dbo].[AddinsGetAddinDetailsById]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <24-3-2010>
-- Description:	<Get Addins by link id>
-- =============================================
CREATE PROCEDURE [dbo].[AddinsGetAddinDetailsById]
	-- Add the parameters for the stored procedure here
	@id bigint

	
AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select * from  Addins Where ID = @id 
			
END












GO
/****** Object:  StoredProcedure [dbo].[AddinsGetAddinsByLanguageId]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <24-3-2010>
-- Description:	<Get Addins by language id>
-- =============================================
CREATE PROCEDURE [dbo].[AddinsGetAddinsByLanguageId]
	-- Add the parameters for the stored procedure here
	
	@LanguageID int
		
AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT     Addins.*, SiteLanguages.lang_name 
	FROM         Addins INNER JOIN
                      SiteLanguages ON Addins.LanguageID = SiteLanguages.ID
	WHERE     (Addins.LanguageID = @LanguageID);
			
END














GO
/****** Object:  StoredProcedure [dbo].[AddinsGetAddinsByLanguageIdLimitedCount]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.....>
-- Description:	<Get Addins list>
-- =============================================
CREATE PROCEDURE [dbo].[AddinsGetAddinsByLanguageIdLimitedCount]
	-- Add the parameters for the stored procedure here
		
	@LanguageID int,
	@limit int
	
	
AS
BEGIN
	
	SET NOCOUNT ON;
	

	SET ROWCOUNT @limit
	SELECT * from  Addins WHERE LanguageID = @LanguageID order by id desc

	--EXEC('SELECT TOP 10 * from  Addins Where 1 = 1 AND id IN (' + @IDs + ') order by id desc')

END


















GO
/****** Object:  StoredProcedure [dbo].[AddinsGetAllActiveAddins]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.....>
-- Description:	<Get Addins by language id>
-- =============================================
CREATE PROCEDURE [dbo].[AddinsGetAllActiveAddins]


AS
BEGIN
	
	SET NOCOUNT ON;
    
	Select * from  Addins Where Active = 1;
			
END













GO
/****** Object:  StoredProcedure [dbo].[AddinUpdateAddin]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <29-3-2010>
-- Description:	<Update Addin>
-- =============================================
CREATE PROCEDURE [dbo].[AddinUpdateAddin] 
	-- Add the parameters for the stored procedure here
	@ID bigint,
	@LanguageID int,
	@Title nvarchar(100),
	@ShortDesc ntext,
	@Details ntext,
	@Type nvarchar(50),
	@Priority int,
	@ViewHome bit,
	@Active bit,
	@ThisMonth bit,
	@Timestamp datetime,
	@main_picture nvarchar(200)
	

AS
BEGIN

    -- Insert statements for procedure here

	Update Addins  Set LanguageID = @LanguageID, Title = @Title, ShortDesc = @ShortDesc, Details = @Details, [Type] = @Type, 
	Priority = @Priority, ViewHome = @ViewHome, Active = @Active, ThisMonth = @ThisMonth, [Timestamp] = @Timestamp, main_picture = @main_picture
	Where ID = @ID;

END








GO
/****** Object:  StoredProcedure [dbo].[AdminDeleteUser]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <30-12-2011>
-- Description:	<Delete one employee>
-- =============================================
CREATE PROCEDURE [dbo].[AdminDeleteUser] 			
           @Id bigint 
AS
BEGIN

	--SELECT COUNT(*) FROM [CarsData] WHERE System_Who_Add = @Id
	--UNION ALL
	--SELECT COUNT(*) FROM [ClientPayments] WHERE System_Who_Add = @Id
	--UNION ALL
	--SELECT COUNT(*) FROM [CarInvoices] WHERE System_Who_Add = @Id
	--UNION ALL
	--SELECT COUNT(*) FROM [CarExpenses] WHERE WhoAdd = @Id

	--IF(@@ROWCOUNT <= 0)	
		DELETE FROM [tbl_admin_n] WHERE id = @Id
		RETURN @@ROWCOUNT;
END










GO
/****** Object:  StoredProcedure [dbo].[AdminUpdateUsers]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <24-3-2010>
-- Description:	<Check user id exist in tbl_admin_n table>
-- =============================================
CREATE PROCEDURE [dbo].[AdminUpdateUsers] 
			
           @Id bigint 
           ,@LanguageID int 
           ,@user_name nvarchar(100) 
           ,@user_password nvarchar(100) 
           ,@user_type nvarchar(50) 
           ,@user_level nvarchar(50), @Store_ID bigint 
           ,@name nvarchar(150) 
           ,@city char(10) 
           ,@address nvarchar(300) 
           ,@mobile nvarchar(50) 
           ,@phone nvarchar(50) 
           ,@fax nvarchar(50) 
           ,@email nvarchar(50)
AS
BEGIN

	UPDATE [tbl_admin_n]
	   SET [LanguageID] = @LanguageID
		  ,[user_name] = @user_name
		  ,[user_password] = @user_password
		  ,[user_type] = @user_type
		  ,[user_level] = @user_level, [Store_ID]= @Store_ID
		  ,[name] = @name
		  ,[city] = @city
		  ,[address] = @address
		  ,[mobile] = @mobile
		  ,[phone] = @phone
		  ,[fax] = @fax
		  ,[email] = @email
	 WHERE id = @Id
END









GO
/****** Object:  StoredProcedure [dbo].[AdminUsersGetUserByEmail]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <28-3-2010>
-- Description:	<Check user email exist in tbl_admin_n table
--                   if exist sent his passowrd to him.>
-- =============================================
CREATE PROCEDURE [dbo].[AdminUsersGetUserByEmail] 
	-- Add the parameters for the stored procedure here
	
	@email nvarchar(50)

AS
BEGIN

    -- Insert statements for procedure here

	SELECT     a.*, 
                      Stores.StoreName
	FROM         tbl_admin_n a INNER JOIN
						  Stores ON a.Store_ID = Stores.StoreID
	WHERE     (a.email = @email);

END








GO
/****** Object:  StoredProcedure [dbo].[AdminUsersLogin]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <24-3-2010>
-- Description:	<Check user id exist in tbl_admin_n table>
-- =============================================
CREATE PROCEDURE [dbo].[AdminUsersLogin] 
	-- Add the parameters for the stored procedure here
	@userName nvarchar(50),
	@password nvarchar(50)

AS
BEGIN
    -- Insert statements for procedure here
	SELECT top 1 id, [name], user_type, user_level, Store_ID from tbl_admin_n where [user_name]= @userName AND user_password = @password AND user_level = 'A';

END



GO
/****** Object:  StoredProcedure [dbo].[Auctions_AddEdit]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Auctions_AddEdit]
			@AuctionID int
			,@AuctionName nvarchar(100)
           ,@AuctionEmail nvarchar(100)
           ,@AuctionPhone nvarchar(100)
           ,@AuctionAddress nvarchar(500)
           ,@AuctionDesc nvarchar(2000)
           ,@Priority int
           ,@Active bit
           ,@System_Who_Add bigint
           --,@System_Add_Date datetime
           --,@System_Modify_Date datetime
           --,@System_Delete_Status bit
           --,@System_Who_Delete bigint
           --,@System_Delete_Date datetime
           ,@System_LastAction_IP nvarchar(50)
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [Auctions] WHERE (AuctionName = @AuctionName AND AuctionEmail = @AuctionEmail 
		AND AuctionPhone = @AuctionPhone AND AuctionAddress = @AuctionAddress AND AuctionDesc = @AuctionDesc) 


	IF((@@ROWCOUNT <= 0)  AND (@AuctionID <= 0))
	BEGIN

INSERT INTO [Auctions]
           ([AuctionName]
           ,[AuctionEmail]
           ,[AuctionPhone]
           ,[AuctionAddress]
           ,[AuctionDesc]
           ,[Priority]
           ,[Active]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           (@AuctionName 
           ,@AuctionEmail 
           ,@AuctionPhone 
           ,@AuctionAddress 
           ,@AuctionDesc 
           ,@Priority
           ,@Active 
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

UPDATE [Auctions]
           SET [AuctionName] = @AuctionName
           ,[AuctionEmail] = @AuctionEmail
           ,[AuctionPhone] = @AuctionPhone
           ,[AuctionAddress] = @AuctionAddress
           ,[AuctionDesc] = @AuctionDesc
           ,[Priority] = @Priority
           ,[Active] = @Active
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE AuctionID = @AuctionID
	

	END


END














GO
/****** Object:  StoredProcedure [dbo].[Auctions_DeleteOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Auctions_DeleteOne]
			@AuctionID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

--	Update [Auctions] SET System_Delete_Date = GETDATE(), System_Delete_Status = 1 WHERE AuctionID = @AuctionID
	
END












GO
/****** Object:  StoredProcedure [dbo].[Auctions_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Auctions_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT AuctionID, AuctionName FROM [Auctions]
    WHERE Active = 1 AND System_Delete_Status = 0
	
END











GO
/****** Object:  StoredProcedure [dbo].[Auctions_GetOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Auctions_GetOne]
			@AuctionID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [Auctions]
    WHERE AuctionID = @AuctionID
	
END









GO
/****** Object:  StoredProcedure [dbo].[Buyers_AddEdit]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Buyers_AddEdit]
			@BuyerID bigint, @Auction_ID int
			,@BuyerName nvarchar(100)
           ,@BuyerEmail nvarchar(100)
           ,@BuyerPhone nvarchar(100)
           ,@BuyerAddress nvarchar(500)
           ,@BuyerDesc nvarchar(2000)
           ,@Priority int
           ,@Active bit, @OpeningBalance money
           ,@System_Who_Add bigint
           --,@System_Add_Date datetime
           --,@System_Modify_Date datetime
           --,@System_Delete_Status bit
           --,@System_Who_Delete bigint
           --,@System_Delete_Date datetime
           ,@System_LastAction_IP nvarchar(50)
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [Buyers] WHERE (Auction_ID = @Auction_ID AND BuyerName = @BuyerName AND BuyerEmail = @BuyerEmail 
		AND BuyerPhone = @BuyerPhone AND BuyerAddress = @BuyerAddress AND BuyerDesc = @BuyerDesc);

	IF((@@ROWCOUNT <= 0)  AND (@BuyerID <= 0))
	BEGIN

	INSERT INTO [Buyers]
           ([Auction_ID], [BuyerName]
           ,[BuyerEmail]
           ,[BuyerPhone]
           ,[BuyerAddress]
           ,[BuyerDesc]
           ,[Priority]
           ,[Active], [OpeningBalance]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           (@Auction_ID, @BuyerName 
           ,@BuyerEmail 
           ,@BuyerPhone 
           ,@BuyerAddress 
           ,@BuyerDesc 
           ,@Priority
           ,1 , @OpeningBalance
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

UPDATE [Buyers]
           SET [Auction_ID] = @Auction_ID, [BuyerName] = @BuyerName
           ,[BuyerEmail] = @BuyerEmail
           ,[BuyerPhone] = @BuyerPhone
           ,[BuyerAddress] = @BuyerAddress
           ,[BuyerDesc] = @BuyerDesc
           ,[Priority] = @Priority
           ,[Active] = 1, [OpeningBalance] = @OpeningBalance
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE BuyerID = @BuyerID
	

	END


END
















GO
/****** Object:  StoredProcedure [dbo].[Buyers_DeleteOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Buyers_DeleteOne]
			@BuyerID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

--	Update [Buyers]
--	SET System_Delete_Date = GETDATE(), System_Delete_Status = 1
--    WHERE BuyerID = @BuyerID
	
END













GO
/****** Object:  StoredProcedure [dbo].[Buyers_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Buyers_GetNames]
		@Auction_ID int	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT BuyerID, BuyerName FROM [Buyers]
    WHERE Active = 1 AND System_Delete_Status = 0 
	AND Auction_ID = @Auction_ID;
	
END












GO
/****** Object:  StoredProcedure [dbo].[Buyers_GetNames2]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Buyers_GetNames2]
		--@Auction_ID int	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT BuyerID, BuyerName FROM [Buyers]
    WHERE Active = 1 AND System_Delete_Status = 0 
	--AND Auction_ID = @Auction_ID;
	
END













GO
/****** Object:  StoredProcedure [dbo].[Buyers_GetOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Buyers_GetOne]
			@BuyerID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT     Buyers.*, Auctions.AuctionName
	FROM         Buyers INNER JOIN
						  Auctions ON Buyers.Auction_ID = Auctions.AuctionID
	WHERE     (Buyers.BuyerID = @BuyerID)
	
END











GO
/****** Object:  StoredProcedure [dbo].[Capacities_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Capacities_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT CapacityID, CapacityNameEn, CapacityNameAr FROM [Capacities]
      WHERE Active = 1 AND System_Delete_Status = 0
	
END












GO
/****** Object:  StoredProcedure [dbo].[Cars_AddEditCar]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:	<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Cars_AddEditCar]
			@CarID bigint
		   ,@car_code bigint
           ,@view_home bit
           ,@active bit
           ,@featured_car bit
           ,@Auction_ID int
           ,@Buyer_ID int
           ,@Marker_ID int
           ,@Model_ID bigint
           ,@WorkingStatus_ID int
           ,@TransferStatus_ID int
           ,@Year_ID int
           ,@PortShipping_ID int
           ,@ShippingCompany_ID bigint
           ,@Ship_ID bigint
           ,@State_ID int
           ,@Region_ID bigint
           ,@Workshop_ID bigint, @Store_ID bigint
           ,@chassis_no nvarchar(150)
           ,@container_no nvarchar(150), @container_code nvarchar(150), @booking_no nvarchar(100), @poly_fielding nvarchar(3000)
           ,@lot_no nvarchar(150)
           ,@engine_no nvarchar(150)
           ,@sold bit
           ,@exterior_color int
           ,@interior_color int
           ,@body_style int
           ,@car_transmission int
           ,@mileage nvarchar(100)
           ,@car_drive int
           ,@car_engine int
           ,@car_capacity int
           ,@car_options nvarchar(1500)
           ,@car_remarks nvarchar(3000)
           ,@Customs_No nvarchar(150) --
           ,@checkout_date datetime, @expected_arrive_date datetime, @dubia_arrive_date datetime, @sharjah_arrive_date datetime
           ,@arrive_date datetime
           ,@Shipping_date datetime
           ,@WorkshopEntryDate datetime
           ,@WorkshopExitDate datetime
           ,@price_currency money
           ,@real_price numeric
           ,@sale_price numeric
           ,@cost numeric
           ,@CurrencyExchange_ID int
           ,@payement_to_who nvarchar(150)
           ,@sale_to nvarchar(150)
           ,@show_sale bit
           ,@sale_date datetime
           ,@visitors bigint
           ,@main_picture nvarchar(50)
           ,@System_Who_Add bigint
           ,@System_LastAction_IP nvarchar(50),
		   @purchase_date datetime
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	IF(((SELECT COUNT(*) FROM [CarsData] WHERE (car_code = @car_code) OR (chassis_no = @chassis_no)) <= 0)  AND (@CarID <= 0))
	BEGIN
		INSERT INTO CarsData (car_code, view_home, active, featured_car, Auction_ID, Buyer_ID, Marker_ID, Model_ID, WorkingStatus_ID, TransferStatus_ID, Year_ID, PortShipping_ID, ShippingCompany_ID, Ship_ID, State_ID, Region_ID, 
							 Workshop_ID, Store_ID, chassis_no, container_no, container_code, booking_no, poly_fielding, lot_no, engine_no, sold, exterior_color, interior_color, body_style, car_transmission, mileage, car_drive, 
							 car_engine, car_capacity, car_options, car_remarks, Customs_No, checkout_date, expected_arrive_date, dubia_arrive_date, sharjah_arrive_date, arrive_date, Shipping_date, WorkshopEntryDate, 
							 WorkshopExitDate, price_currency, real_price, sale_price, cost, CurrencyExchange_ID, payement_to_who, sale_to, show_sale, sale_date, visitors, main_picture, System_Who_Add, System_Add_Date, 
							 System_Delete_Status, System_LastAction_IP, purchase_date)
			VALUES        (@car_code,@view_home,@active,@featured_car,@Auction_ID,@Buyer_ID,@Marker_ID,@Model_ID,@WorkingStatus_ID,@TransferStatus_ID,@Year_ID,@PortShipping_ID,@ShippingCompany_ID,@Ship_ID,@State_ID,@Region_ID,@Workshop_ID,@Store_ID,@chassis_no,@container_no,@container_code,@booking_no,@poly_fielding,@lot_no,@engine_no,@sold,@exterior_color,@interior_color,@body_style,@car_transmission,@mileage,@car_drive,@car_engine,@car_capacity,@car_options,@car_remarks,@Customs_No,@checkout_date,@expected_arrive_date,@dubia_arrive_date,@sharjah_arrive_date,@arrive_date,@Shipping_date,@WorkshopEntryDate,@WorkshopExitDate,@price_currency,@real_price,@sale_price,@cost,@CurrencyExchange_ID,@payement_to_who,@sale_to,@show_sale,@sale_date,@visitors,@main_picture,@System_Who_Add,
							  GETDATE(), 0,@System_LastAction_IP, @purchase_date);
	END
	ELSE
	BEGIN
		UPDATE  CarsData
			SET                car_code = @car_code, view_home = @view_home, active = @active, featured_car = @featured_car, Auction_ID = @Auction_ID, Buyer_ID = @Buyer_ID, Marker_ID = @Marker_ID, Model_ID = @Model_ID, 
									 WorkingStatus_ID = @WorkingStatus_ID, TransferStatus_ID = @TransferStatus_ID, Year_ID = @Year_ID, PortShipping_ID = @PortShipping_ID, ShippingCompany_ID = @ShippingCompany_ID, 
									 Ship_ID = @Ship_ID, State_ID = @State_ID, Region_ID = @Region_ID, Workshop_ID = @Workshop_ID, Store_ID = @Store_ID, chassis_no = @chassis_no, container_no = @container_no, 
									 container_code = @container_code, booking_no = @booking_no, poly_fielding = @poly_fielding, lot_no = @lot_no, engine_no = @engine_no, sold = @sold, exterior_color = @exterior_color, 
									 interior_color = @interior_color, body_style = @body_style, car_transmission = @car_transmission, mileage = @mileage, car_drive = @car_drive, car_engine = @car_engine, car_capacity = @car_capacity, 
									 car_options = @car_options, car_remarks = @car_remarks, Customs_No = @Customs_No, checkout_date = @checkout_date, expected_arrive_date = @expected_arrive_date, 
									 dubia_arrive_date = @dubia_arrive_date, sharjah_arrive_date = @sharjah_arrive_date, arrive_date = @arrive_date, Shipping_date = @Shipping_date, WorkshopEntryDate = @WorkshopEntryDate, 
									 WorkshopExitDate = @WorkshopExitDate, price_currency = @price_currency, real_price = @real_price, sale_price = @sale_price, cost = @cost, CurrencyExchange_ID = @CurrencyExchange_ID, 
									 payement_to_who = @payement_to_who, sale_to = @sale_to, show_sale = @show_sale, sale_date = @sale_date, visitors = @visitors, main_picture = @main_picture, System_Who_Add = @System_Who_Add, 
									 System_Modify_Date = GETDATE(), System_Delete_Status = 0, System_LastAction_IP = @System_LastAction_IP, purchase_date=@purchase_date
			WHERE (CarID = @CarID);
	END

	--SET NOCOUNT ON;
	SELECT TOP 1 CarID FROM [CarsData] WHERE (car_code = @car_code) OR (chassis_no = @chassis_no) OR CarID = @CarID
END























GO
/****** Object:  StoredProcedure [dbo].[Cars_DeleteCar]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Cars_DeleteCar]
	@CarID bigint,
	@System_Who_Delete bigint, 
	@System_LastAction_IP nvarchar(50)	
AS
BEGIN	
	SET NOCOUNT ON;
	Update [CarsData] SET System_Delete_Date = GETDATE(), System_Delete_Status = 1, System_Who_Delete = @System_Who_Delete WHERE CarID = @CarID
	RETURN @@ROWCOUNT;
END














GO
/****** Object:  StoredProcedure [dbo].[Cars_GetCarChassis]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:	<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Cars_GetCarChassis]
	@ChassisNo nvarchar(50)
AS
BEGIN
	
	SET NOCOUNT ON;
	SELECT chassis_no FROM [CarsData] Where chassis_no = @ChassisNo

END




















GO
/****** Object:  StoredProcedure [dbo].[Cars_GetCarsCustom]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <17-04-2010>
-- Description:	<get cars list>
-- =============================================
CREATE PROCEDURE [dbo].[Cars_GetCarsCustom]
	-- Add the parameters for the stored procedure here
	@row int,
	@totalrows int
AS
BEGIN
	
	SET NOCOUNT ON;
	SET @row = @row + 1;

	SELECT * FROM (SELECT *,row_number() over(order by CarID DESC) AS [rownum]
	FROM [View_CarInformation]) AS PeopleRecords
	WHERE rownum between ((@row - 1) * @totalrows + 1) AND (@row * @totalrows)

END



















GO
/****** Object:  StoredProcedure [dbo].[Cars_GetCarsCustomCount]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <17-04-2010>
-- Description:	<get cars list>
-- =============================================
CREATE PROCEDURE [dbo].[Cars_GetCarsCustomCount]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	
	SET NOCOUNT ON;
	SELECT COUNT(*) FROM (SELECT *,row_number() over(order by CarID DESC) AS [rownum]
	                            FROM [View_CarInformation] Where 1=1) AS PeopleRecords

END


















GO
/****** Object:  StoredProcedure [dbo].[Cars_getNewCarCode]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:	<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Cars_getNewCarCode]
				
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT (MAX(ISNULL(car_code, 0)) + 1) AS NEWCODE FROM [CarsData] 

END




















GO
/****** Object:  StoredProcedure [dbo].[Cars_GetOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Cars_GetOne]
	@CarID int	
AS
BEGIN
	
	SET NOCOUNT ON;

		SELECT        AuctionName, BuyerName, MarkerNameEn, MarkerNameAr, TypeNameEn, TypeNameAr, StatusEn, StatusAr, ColorNameEn, ColorNameAr, ExtColorEn, ExtColorAr, CapacityNameEn, CapacityNameAr, 
							 WorkingStatusNameEn, WorkingStatusNameAr, PortShipEn, PortShipAr, DriveNameEn, DriveNameAr, EngineNameEn, EngineNameAr, ShipCompanyName, ShipEn, ShipAr, CarStyleNameEn, CarStyleNameAr, 
							 RegionEn, RegionAr, StateEn, StateAr, WorkshopName, YearNameEn, TransmissionNameEn, TransmissionNameAr, CarID, car_code, view_home, active, featured_car, Auction_ID, Buyer_ID, Marker_ID, Model_ID,
							  WorkingStatus_ID, TransferStatus_ID, Year_ID, PortShipping_ID, TowingCompsny_ID, ShippingCompany_ID, Ship_ID, State_ID, Region_ID, Workshop_ID, chassis_no, container_no, container_code, booking_no, 
							 poly_fielding, lot_no, engine_no, sold, exterior_color, interior_color, body_style, car_transmission, mileage, car_drive, car_engine, car_capacity, car_options, car_remarks, Customs_No, purchase_date, 
							 checkout_date, Shipping_date, expected_arrive_date, dubia_arrive_date, sharjah_arrive_date, arrive_date, WorkshopEntryDate, WorkshopExitDate, price_currency, real_price, sale_price, cost, 
							 CurrencyExchange_ID, payement_to_who, sale_to, show_sale, sale_date, visitors, main_picture, Timestamp, System_Who_Add, System_Add_Date, System_Modify_Date, System_Delete_Status, 
							 System_Who_Delete, System_Delete_Date, System_LastAction_IP, TowingCompanyName, Transport_ID, Clearance_ID, Store_ID, StoreName, Client_ID, ClientName, SalePrice
		FROM            View_CarInformation
		WHERE        (CarID = @CarID)
	

END














GO
/****** Object:  StoredProcedure [dbo].[CarsMaker_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[CarsMaker_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT MarkerID, MarkerNameEn, MarkerNameAr FROM [CarsMarker]
    WHERE Active = 1 AND System_Delete_Status = 0
	
END













GO
/****** Object:  StoredProcedure [dbo].[CarsMarker_AddEdit]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[CarsMarker_AddEdit]
		   	@MarkerID int
		   ,@MarkerNameEn nvarchar(100)
           ,@MarkerNameAr nvarchar(100)
           ,@Priority int
           ,@Active bit
           ,@System_Who_Add bigint
           ,@System_LastAction_IP nvarchar(50)
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT * FROM [CarsMarker] WHERE ([MarkerNameEn] = @MarkerNameEn);

	IF((@@ROWCOUNT <= 0) AND (@MarkerID <= 0))
	BEGIN

	INSERT INTO [CarsMarker]
           ([MarkerNameEn]
           ,[MarkerNameAr]
           ,[Priority]
           ,[Active]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           (@MarkerNameEn
           ,@MarkerNameAr
           ,@Priority  
           ,@Active 
           ,@System_Who_Add 
           ,GETDATE()
           ,0
           ,@System_LastAction_IP)

	END
	ELSE
	BEGIN

	UPDATE [CarsMarker]
    SET [MarkerNameEn] = @MarkerNameEn
           ,[MarkerNameAr] = @MarkerNameAr
           ,[Priority] = @Priority
           ,[Active] = @Active
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE MarkerID = @MarkerID
	

	END


END


















GO
/****** Object:  StoredProcedure [dbo].[CarsMarker_DeleteOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[CarsMarker_DeleteOne]
	@MarkerID int,
	@System_LastAction_IP nvarchar(50)
	
AS
BEGIN
	
	SET NOCOUNT ON;

--	Update [CarsMarker] 
--	SET [System_Delete_Status] = 1, [System_LastAction_IP] = @System_LastAction_IP
--	WHERE (@MarkerID = @MarkerID);
	

END













GO
/****** Object:  StoredProcedure [dbo].[CarsMarker_GetOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[CarsMarker_GetOne]
		   	@MarkerID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [CarsMarker] WHERE (MarkerID = @MarkerID);
	

END













GO
/****** Object:  StoredProcedure [dbo].[CarStyles_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[CarStyles_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT CarStyleID, CarStyleNameEn, CarStyleNameAr 
	FROM   Styles
	WHERE Active = 1 AND System_Delete_Status = 0

END












GO
/****** Object:  StoredProcedure [dbo].[CarTransferStatus_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[CarTransferStatus_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT StatusID, StatusEn, StatusAr 
	FROM   CarsStatus
	WHERE Active = 1 AND System_Delete_Status = 0

END












GO
/****** Object:  StoredProcedure [dbo].[CarWorkingStatus_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[CarWorkingStatus_GetNames]
				
AS
BEGIN	
	SET NOCOUNT ON;
	SELECT WorkingStatusID, WorkingStatusNameEn, WorkingStatusNameAr 
	FROM   WorkingStatus
	WHERE Active = 1 AND System_Delete_Status = 0

END












GO
/****** Object:  StoredProcedure [dbo].[ClearanceCompanies_AddEdit]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[ClearanceCompanies_AddEdit]
			@ClearanceID bigint
			,@ClearanceName nvarchar(100)
           ,@ClearanceEmail nvarchar(100)
           ,@ClearancePhone nvarchar(100)
           ,@ClearanceAddress nvarchar(500)
           ,@ClearanceDesc nvarchar(2000)
           ,@Priority int
           ,@Active bit, @OpeningBalance money
           ,@System_Who_Add bigint
           --,@System_Add_Date datetime
           --,@System_Modify_Date datetime
           --,@System_Delete_Status bit
           --,@System_Who_Delete bigint
           --,@System_Delete_Date datetime
           ,@System_LastAction_IP nvarchar(50)
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [ClearanceCompanies] WHERE (ClearanceName = @ClearanceName);

	IF((@@ROWCOUNT <= 0)  AND (@ClearanceID <= 0))
	BEGIN

INSERT INTO [ClearanceCompanies]
           ([ClearanceName]
           ,[ClearanceEmail]
           ,[ClearancePhone]
           ,[ClearanceAddress]
           ,[ClearanceDesc]
           ,[Priority]
           ,[Active], [OpeningBalance]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           ( @ClearanceName 
           ,@ClearanceEmail 
           ,@ClearancePhone 
           ,@ClearanceAddress 
           ,@ClearanceDesc 
           ,@Priority
           ,1, @OpeningBalance 
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

	UPDATE [ClearanceCompanies]
           SET [ClearanceName] = @ClearanceName
           ,[ClearanceEmail] = @ClearanceEmail
           ,[ClearancePhone] = @ClearancePhone
           ,[ClearanceAddress] = @ClearanceAddress
           ,[ClearanceDesc] = @ClearanceDesc
           ,[Priority] = @Priority
           ,[Active] = 1, [OpeningBalance] = @OpeningBalance
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE ClearanceID = @ClearanceID
	

	END


END



















GO
/****** Object:  StoredProcedure [dbo].[ClearanceCompanies_DeleteOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[ClearanceCompanies_DeleteOne]
			@ClearanceID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

--	UPDATE [ClearanceCompanies]
--	SET System_Delete_Date = GETDATE(), System_Delete_Status = 1
--    WHERE ClearanceID = @ClearanceID
	
END














GO
/****** Object:  StoredProcedure [dbo].[ClearanceCompanies_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[ClearanceCompanies_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT ClearanceID, ClearanceName FROM [ClearanceCompanies]
    WHERE Active = 1 AND System_Delete_Status = 0
	
END













GO
/****** Object:  StoredProcedure [dbo].[ClearanceCompanies_GetOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[ClearanceCompanies_GetOne]
			@ClearanceID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [ClearanceCompanies]
    WHERE ClearanceID = @ClearanceID
	
END










GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_AddEdit]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO














-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[ClientPayments_AddEdit]
			@PaymentID bigint
		   ,@Invoice_ID bigint
           ,@Client_ID bigint
           ,@ExchangeCompany_ID bigint
           ,@Currency_ID int
           ,@PaymentValue money
           ,@PaymentDate datetime
           ,@ReceiverName nvarchar(100)
           ,@Notes nvarchar(2000)
           ,@Store_ID bigint
           ,@Other nvarchar(50)
			,@System_Who_Add bigint
           ,@System_LastAction_IP nvarchar(50)
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SELECT * FROM [ClientPayments] WHERE ([PaymentDate] = @PaymentDate AND [ReceiverName] = @ReceiverName AND [Client_ID] = @Client_ID AND Invoice_ID = @Invoice_ID AND [Currency_ID] = @Currency_ID AND [PaymentValue] = @PaymentValue)

	IF (@PaymentID <= 0 AND @@ROWCOUNT <= 0)
	BEGIN

	INSERT INTO [ClientPayments]
           ([Invoice_ID]
           ,[Client_ID]
           ,[ExchangeCompany_ID]
           ,[Currency_ID]
           ,[PaymentValue]
           ,[PaymentDate]
           ,[ReceiverName]
           ,[Notes]
           ,[Active]
           ,[Other], [RegisterDate]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP],Store_ID)
     VALUES
           (@Invoice_ID
           ,@Client_ID
           ,@ExchangeCompany_ID
           ,@Currency_ID
           ,@PaymentValue
           ,@PaymentDate
           ,@ReceiverName
           ,@Notes
           ,1
           ,@Other, GETDATE()
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP,@Store_ID)

	END
	ELSE
	BEGIN

	UPDATE [ClientPayments]
           SET [Invoice_ID] = @Invoice_ID
           ,[Client_ID] = @Client_ID
           ,[ExchangeCompany_ID] = @ExchangeCompany_ID
           ,[Currency_ID] = @Currency_ID
           ,[PaymentValue] = @PaymentValue
           ,[PaymentDate] = @PaymentDate
           ,[ReceiverName] = @ReceiverName
           ,[Notes] = @Notes, Active = 1
           ,[Other] = @Other--, [RegisterDate] = @RegisterDate
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP, Store_ID=@Store_ID
     WHERE PaymentID = @PaymentID

	END

END
























GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_GetOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO












-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[ClientPayments_GetOne]
			@PaymentID bigint
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SELECT * FROM [View_ClientPayments] WHERE ([PaymentID] = @PaymentID)

END






















GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_InvoicesToReset]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[ClientPayments_InvoicesToReset]
			@Client_ID bigint
AS
BEGIN
	
	SET NOCOUNT ON;
	--
	SELECT InvoiceID, main_picture,
	( MarkerNameEn + ' - ' + TypeNameEn + ', Value: ' + CONVERT(NVARCHAR(20), SalePrice) + ' AED, Rest: ' + CONVERT(NVARCHAR(20), (ISNULL(SalePrice, 0) - (ISNULL(FirstAmount, 0) + ISNULL(TotalPaymentsForThis, 0) + ISNULL(TotalSubPaymentsForThis, 0)))) + ' AED, Date: ' + CONVERT(NVARCHAR(20), InvoiceDate, 103)) AS InvoiceVal 
	FROM View_CarSalesInvoices WHERE ((ISNULL(SalePrice, 0) - (ISNULL(FirstAmount, 0) + ISNULL(TotalPaymentsForThis, 0) + ISNULL(TotalSubPaymentsForThis, 0)) > 0) AND [Client_ID] = @Client_ID AND Active = 1)

END



























GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_ReceiptsToReset]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
















-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[ClientPayments_ReceiptsToReset]
			@Client_ID bigint
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SELECT PaymentID, 
	('Value: ' + CONVERT(VARCHAR(10), PaymentValue) + ' AED, Rest: ' + CONVERT(VARCHAR(10), (ISNULL(PaymentValue,0) - ISNULL(CloseOut,0))) + ' AED, Date: ' + CONVERT(VARCHAR(10), PaymentDate, 103)) AS PaymentVal 
	FROM [View_ClientPayments] WHERE (Invoice_ID IS NULL AND (ISNULL(PaymentValue, 0) - ISNULL(CloseOut,0) > 0) AND [Client_ID] = @Client_ID AND Active = 1)

END


























GO
/****** Object:  StoredProcedure [dbo].[ClientPayments_ToggleOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO















-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<Active/DisActive payment and its childs>
-- =============================================
CREATE PROCEDURE [dbo].[ClientPayments_ToggleOne]
			@PaymentID bigint,
			@Toggle bit
AS
BEGIN
	
	SET NOCOUNT ON;
	
	--DECLARE @SubPayments int
	IF(@Toggle = 0)
	BEGIN

	DECLARE @subPaymentsValues money, @closeOutVal money;
	SET @subPaymentsValues = (SELECT SUM(ClientInvoicesPaymentsValue) AS EXP1 FROM ClientInvoicesPayments WHERE Active = 1 AND [ClientPayments_ID] = @PaymentID)
	SET @closeOutVal = (SELECT TOP 1 CloseOut FROM ClientPayments WHERE PaymentID = @PaymentID)

	UPdate ClientPayments SET CloseOut = (ISNULL(@closeOutVal, 0) - ISNULL(@subPaymentsValues, 0)), Active = @Toggle WHERE ([PaymentID] = @PaymentID)	
	UPDATE ClientInvoicesPayments SET  Active = @Toggle WHERE ([ClientPayments_ID] = @PaymentID)
	
	-- Select Sum(payments) from ClientInvoicesPayments for this paymentID
	-- Update CloseOut = CloseOut - Sum(payments) in ClientPayments for this paymentID

	END

END

























GO
/****** Object:  StoredProcedure [dbo].[Clients_AddEdit]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Clients_AddEdit]
			@ClientID bigint
			,@ClientName nvarchar(100)
           ,@ClientEmail nvarchar(100)
           ,@ClientUsername nvarchar(100)
           ,@ClientPassword nvarchar(100)
           ,@ClientPhone nvarchar(100), @ClientFax nvarchar(100)
           ,@ClientAddress nvarchar(500)
           ,@ClientDesc nvarchar(2000)
           ,@Priority int
           ,@Active bit, @SMSActive bit, @OpeningBalance money
           ,@System_Who_Add bigint
           ,@System_LastAction_IP nvarchar(50)
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [Clients] WHERE (ClientName = @ClientName);

	IF((@@ROWCOUNT <= 0)  AND (@ClientID <= 0))
	BEGIN

INSERT INTO [Clients]
           ([ClientName]
           ,[ClientEmail]
           ,[ClientUsername]
           ,[ClientPassword]
           ,[ClientPhone], [ClientFax]
           ,[ClientAddress]
           ,[ClientDesc]
           ,[Priority]
           ,[Active], [SMSActive], [OpeningBalance]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           ( @ClientName 
           ,@ClientEmail 
           ,@ClientUsername 
           ,@ClientPassword 
           ,@ClientPhone, @ClientFax 
           ,@ClientAddress 
           ,@ClientDesc 
           ,@Priority
           ,1, 1, @OpeningBalance 
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

UPDATE [Clients]
           SET [ClientName] = @ClientName
           ,[ClientEmail] = @ClientEmail
           ,[ClientUsername] = @ClientUsername
           ,[ClientPassword] = @ClientPassword
           ,[ClientPhone] = @ClientPhone, [ClientFax] = @ClientFax
           ,[ClientAddress] = @ClientAddress
           ,[ClientDesc] = @ClientDesc
           ,[Priority] = @Priority
           ,[Active] = 1, [SMSActive] = @SMSActive, [OpeningBalance] = @OpeningBalance
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE ClientID = @ClientID
	

	END


END




















GO
/****** Object:  StoredProcedure [dbo].[Clients_DeleteOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Clients_DeleteOne]
			@ClientID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

--	UPDATE [Clients]
--	SET System_Delete_Date = GETDATE(), System_Delete_Status = 1
--    WHERE ClientID = @ClientID
	
END














GO
/****** Object:  StoredProcedure [dbo].[Clients_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Clients_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT ClientID, ClientName FROM [Clients]
    WHERE Active = 1 AND System_Delete_Status = 0
	
END













GO
/****** Object:  StoredProcedure [dbo].[Clients_GetOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Clients_GetOne]
			@ClientID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [Clients]
    WHERE ClientID = @ClientID
	
END










GO
/****** Object:  StoredProcedure [dbo].[ClientSubPayments_AddEdit]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[ClientSubPayments_AddEdit]
			@ClientInvoicesPaymentsID bigint
		   ,@ClientPayments_ID bigint
           ,@CarInvoice_ID bigint
           ,@ClientInvoicesPaymentsValue money
--           ,@Active bit
           ,@RegisterDate datetime
           ,@Notes nvarchar(1000)
			,@System_Who_Add bigint
           ,@System_LastAction_IP nvarchar(50)
AS
BEGIN
	
	SET NOCOUNT ON;
	
------------------------------------------------ ------------------------------------------------
-- Check entered value <= ReceiptValue and <= InvoiceValueRequired.
DECLARE @ReceiptVal decimal, @InvoiceRequiredVal decimal, @DataExisitBefore int;
SET @ReceiptVal = (SELECT TOP 1 (ISNULL(PaymentValue, 0) - ISNULL(CloseOut, 0)) As Exp1 FROM ClientPayments WHERE PaymentID = @ClientPayments_ID);
SET @InvoiceRequiredVal = (SELECT TOP 1 (SalePrice - (ISNULL(FirstAmount, 0) + ISNULL(TotalSubPaymentsForThis, 0) + ISNULL(TotalPaymentsForThis, 0))) As Exp2 FROM View_CarSalesInvoices WHERE InvoiceID = @CarInvoice_ID);
------------------------------------------------ ------------------------------------------------
-- Check data exist before to avoid dublication.
SELECT @DataExisitBefore = COUNT(*) FROM [ClientInvoicesPayments] WHERE ([RegisterDate] = @RegisterDate 
					AND [ClientPayments_ID] = @ClientPayments_ID AND CarInvoice_ID = @CarInvoice_ID 
					AND [ClientInvoicesPaymentsValue] = @ClientInvoicesPaymentsValue);
------------------------------------------------ ------------------------------------------------

IF(@ClientInvoicesPaymentsValue <= @ReceiptVal AND @ClientInvoicesPaymentsValue <= @InvoiceRequiredVal)
BEGIN

	IF (@ClientInvoicesPaymentsID <= 0 AND @DataExisitBefore <= 0)
	BEGIN

	INSERT INTO [ClientInvoicesPayments]
           ([CarInvoice_ID]
           ,[ClientPayments_ID]
           ,[ClientInvoicesPaymentsValue]
           ,[RegisterDate]
           ,[Notes]
           ,[Active]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
           
     VALUES
           (@CarInvoice_ID
           ,@ClientPayments_ID
           ,@ClientInvoicesPaymentsValue
           ,@RegisterDate
           ,@Notes
           ,1
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP)

	END
	ELSE
	BEGIN

	UPDATE [ClientInvoicesPayments]
           SET [CarInvoice_ID] = @CarInvoice_ID
           ,[ClientPayments_ID] = @ClientPayments_ID
           ,[ClientInvoicesPaymentsValue] = @ClientInvoicesPaymentsValue
           ,[RegisterDate] = @RegisterDate
           ,[Notes] = @Notes
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE ClientInvoicesPaymentsID = @ClientInvoicesPaymentsID

	END

Update ClientPayments
	SET CloseOut = ((Select TOP 1 ISNULL(CloseOut, 0) FROM ClientPayments  WHERE PaymentID = @ClientPayments_ID) + ISNULL(@ClientInvoicesPaymentsValue, 0))
	Where PaymentID = @ClientPayments_ID

END -- End parent if.

--SET NOCOUNT ON;
SELECT (@InvoiceRequiredVal - @ClientInvoicesPaymentsValue) AS DifferInvoices, (@ReceiptVal - @ClientInvoicesPaymentsValue) AS DifferReceipt;


END -- END sp.






























GO
/****** Object:  StoredProcedure [dbo].[ClientSubPayments_GetOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO













-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[ClientSubPayments_GetOne]
			@ClientInvoicesPaymentsID bigint
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SELECT * FROM [View_InvoicesSubPayments] WHERE ([ClientInvoicesPaymentsID] = @ClientInvoicesPaymentsID)

END
























GO
/****** Object:  StoredProcedure [dbo].[ClientSubPayments_ToggleOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[ClientSubPayments_ToggleOne]
			@ClientInvoicesPaymentsID bigint,
			@Toggle bit
AS
BEGIN
	
	SET NOCOUNT ON;
	
	IF(@Toggle = 0)
	BEGIN

	DECLARE @paymentID bigint, @currentSubPaymentVal money, @closeOutVal money;
	SET @paymentID = (SELECT TOP 1 ClientPayments_ID FROM ClientInvoicesPayments WHERE ClientInvoicesPaymentsID = @ClientInvoicesPaymentsID);
	SET @currentSubPaymentVal = (SELECT TOP 1 ClientInvoicesPaymentsValue FROM ClientInvoicesPayments WHERE ClientInvoicesPaymentsID = @ClientInvoicesPaymentsID);
	SET @closeOutVal = (SELECT TOP 1 CloseOut FROM ClientPayments WHERE PaymentID = @paymentID);
	
	UPDATE ClientInvoicesPayments SET Active = 0 WHERE ([ClientInvoicesPaymentsID] = @ClientInvoicesPaymentsID);

	IF((ISNULL(@closeOutVal, 0) - ISNULL(@currentSubPaymentVal, 0)) >= 0)
		UPdate ClientPayments SET CloseOut = (ISNULL(@closeOutVal, 0) - ISNULL(@currentSubPaymentVal, 0)) WHERE ([PaymentID] = @paymentID);

	-- Select Sum(payments) from ClientInvoicesPayments for this ClientInvoicesPaymentsID
	-- Update CloseOut = CloseOut - Sum(payments) in ClientSubPayments for this ClientInvoicesPaymentsID

	END
END





GO
/****** Object:  StoredProcedure [dbo].[Colors_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Colors_GetNames]
				
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT ColorID, ColorNameEn, ColorNameAr 
	FROM   Colors
	WHERE Active = 1 AND System_Delete_Status = 0

END













GO
/****** Object:  StoredProcedure [dbo].[Currencies_DeleteCurrency]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<@2011 Minutesuae Web Designers>
-- ALTER date: <11/05/2011>
-- Description:	<........>
-- =============================================
CREATE PROCEDURE [dbo].[Currencies_DeleteCurrency] 
			@CurrencyID int

AS
BEGIN
	
   DELETE FROM  [Currencies] WHERE CurrencyID = @CurrencyID
	
END














GO
/****** Object:  StoredProcedure [dbo].[Currencies_GetCurrency]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<@2011 Minutesuae Web Designers>
-- ALTER date: <11/05/2011>
-- Description:	<........>
-- =============================================
CREATE PROCEDURE [dbo].[Currencies_GetCurrency] 
			@CurrencyID int

AS
BEGIN
	
   SELECT * FROM  [Currencies]   
	WHERE CurrencyID = @CurrencyID
	
END












GO
/****** Object:  StoredProcedure [dbo].[Currencies_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Currencies_GetNames]
				
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT [CurrencyID]
      ,[CurrencyName]
      ,[CurrencySymbol]
      ,[ExchangeRate]
	  FROM [Currencies]
	  Where [Active] = 1 AND [System_Delete_Status] = 0

END













GO
/****** Object:  StoredProcedure [dbo].[Currencies_SaveCurrency]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










-- =============================================
-- Author:		<@2011 Minutesuae Web Designers>
-- ALTER date: <11/05/2011>
-- Description:	<........>
-- =============================================
CREATE PROCEDURE [dbo].[Currencies_SaveCurrency] 
			@CurrencyID int
		   ,@CurrencyName nvarchar(50)
           ,@CurrencySymbol nvarchar(20)
           ,@ExchangeRate money
--           ,@Priority int
--           ,@Active bit
           ,@System_Who_Add bigint
--           ,@System_Add_Date datetime
--           ,@System_Modify_Date datetime
--           ,@System_Delete_Status bit
--           ,@System_Who_Delete bigint
--           ,@System_Delete_Date datetime
           ,@System_LastAction_IP nvarchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.		
	
	IF( @CurrencyID > 0)  
	BEGIN

   UPDATE [Currencies]
   SET [CurrencyName] = @CurrencyName
      ,[CurrencySymbol] = @CurrencySymbol
      ,[ExchangeRate] = @ExchangeRate
      ,[Priority] = 1
      ,[Active] = 1
--      ,[System_Who_Add] = @System_Who_Add
--      ,[System_Add_Date] = @System_Add_Date
      ,[System_Modify_Date] = GETDATE()
      ,[System_Delete_Status] = 0
--      ,[System_Who_Delete] = @System_Who_Delete
--      ,[System_Delete_Date] = @System_Delete_Date
      ,[System_LastAction_IP] = @System_LastAction_IP
	WHERE CurrencyID = @CurrencyID
	
	END		
	ELSE
	BEGIN	
		INSERT INTO [Currencies]
           ([CurrencyName]
           ,[CurrencySymbol]
           ,[ExchangeRate]
           ,[Priority]
           ,[Active]
           ,[System_Who_Add]
           ,[System_Add_Date]
--           ,[System_Modify_Date]
           ,[System_Delete_Status]
--           ,[System_Who_Delete]
--           ,[System_Delete_Date]
           ,[System_LastAction_IP])
     VALUES
           (@CurrencyName
           ,@CurrencySymbol
           ,@ExchangeRate
           ,1
           ,1
           ,@System_Who_Add 
           ,GETDATE()
           --,@System_Modify_Date 
           ,0
--           ,@System_Who_Delete 
--           ,@System_Delete_Date
           ,@System_LastAction_IP)
	END
END











GO
/****** Object:  StoredProcedure [dbo].[Drives_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Drives_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT DriveID, DriveNameEn, DriveNameAr 
	FROM   Drives
	WHERE Active = 1 AND System_Delete_Status = 0

END












GO
/****** Object:  StoredProcedure [dbo].[Engines_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Engines_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT EngineID, EngineNameEn, EngineNameAr 
	FROM   Engines
	WHERE Active = 1 AND System_Delete_Status = 0

END












GO
/****** Object:  StoredProcedure [dbo].[ExchangeCompanies_AddEdit]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[ExchangeCompanies_AddEdit]
			@ExchangeCompanyID bigint
			,@ExchangeCompanyName nvarchar(100)
           ,@ExchangeCompanyEmail nvarchar(100)
           ,@ExchangeCompanyPhone nvarchar(100)
           ,@ExchangeCompanyAddress nvarchar(500)
           ,@ExchangeCompanyDesc nvarchar(2000)
           ,@Priority int
           ,@Active bit
           ,@System_Who_Add bigint
           --,@System_Add_Date datetime
           --,@System_Modify_Date datetime
           --,@System_Delete_Status bit
           --,@System_Who_Delete bigint
           --,@System_Delete_Date datetime
           ,@System_LastAction_IP nvarchar(50)
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [ExchangeCompanies] WHERE (ExchangeCompanyName = @ExchangeCompanyName);
-- AND ExchangeCompanyEmail = @ExchangeCompanyEmail 
--		AND ExchangeCompanyPhone = @ExchangeCompanyPhone AND ExchangeCompanyAddress = @ExchangeCompanyAddress AND ExchangeCompanyDesc = @ExchangeCompanyDesc);

	IF((@@ROWCOUNT <= 0)  AND (@ExchangeCompanyID <= 0))
	BEGIN

INSERT INTO [ExchangeCompanies]
           ([ExchangeCompanyName]
           ,[ExchangeCompanyEmail]
           ,[ExchangeCompanyPhone]
           ,[ExchangeCompanyAddress]
           ,[ExchangeCompanyDesc]
           ,[Priority]
           ,[Active]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           ( @ExchangeCompanyName 
           ,@ExchangeCompanyEmail 
           ,@ExchangeCompanyPhone 
           ,@ExchangeCompanyAddress 
           ,@ExchangeCompanyDesc 
           ,@Priority
           ,@Active 
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

UPDATE [ExchangeCompanies]
           SET [ExchangeCompanyName] = @ExchangeCompanyName
           ,[ExchangeCompanyEmail] = @ExchangeCompanyEmail
           ,[ExchangeCompanyPhone] = @ExchangeCompanyPhone
           ,[ExchangeCompanyAddress] = @ExchangeCompanyAddress
           ,[ExchangeCompanyDesc] = @ExchangeCompanyDesc
           ,[Priority] = @Priority
           ,[Active] = @Active
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE ExchangeCompanyID = @ExchangeCompanyID
	

	END


END




















GO
/****** Object:  StoredProcedure [dbo].[ExchangeCompanies_DeleteOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[ExchangeCompanies_DeleteOne]
			@ExchangeCompanyID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

--	UPDATE [ExchangeCompanies]
--	SET System_Delete_Date = GETDATE(), System_Delete_Status = 1
--    WHERE ExchangeCompanyID = @ExchangeCompanyID
	
END















GO
/****** Object:  StoredProcedure [dbo].[ExchangeCompanies_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[ExchangeCompanies_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT ExchangeCompanyID, ExchangeCompanyName FROM [ExchangeCompanies]
    WHERE Active = 1 AND System_Delete_Status = 0
	
END














GO
/****** Object:  StoredProcedure [dbo].[ExchangeCompanies_GetOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[ExchangeCompanies_GetOne]
			@ExchangeCompanyID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [ExchangeCompanies]
    WHERE ExchangeCompanyID = @ExchangeCompanyID
	
END










GO
/****** Object:  StoredProcedure [dbo].[Expenses_AddEdit]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Expenses_AddEdit]
			@ExpenseID bigint
		   ,@Car_ID bigint
           ,@Currency_ID int, @ExpenseType_ID int
           ,@CompanyType nvarchar(50)
           ,@Company_ID bigint, @ExchangeCompany_ID bigint -- Shipping/Towing/Buyer/Exchange
           ,@InvoiceCode nvarchar(150)
           ,@DueDate datetime
           ,@PaymentDate datetime
           ,@Notes nvarchar(3000)
           ,@ExpenseValue money, @PaymentValue money, @InOutType nvarchar(20) -- [in][out]
--           ,@Active bit
--           ,@AddDate datetime
           ,@Store_ID bigint
           ,@WhoAdd bigint
           ,@AddIP nvarchar(50)
--           ,@EditDate datetime
           ,@WhoEdit bigint
           ,@EditIP nvarchar(50)
--           ,@Deleted bit
--           ,@DeleteDate datetime
--           ,@WhoDelete bigint
--           ,@DeleteIP nvarchar(50)
	
	
AS
BEGIN
	
	--------------------------------------------------------------------
	-- Set Current exchange rate for this expense.
	DECLARE @PaymentValue1 money;
	SET @PaymentValue1 = (SELECT TOP 1 ExchangeRate FROM Currencies WHERE CURRENCYID = @Currency_ID);
	SET @PaymentValue = ISNULL(CAST(@PaymentValue1  AS money), 1.00);
	--------------------------------------------------------------------

	SET NOCOUNT ON;

--	SELECT COUNT(*) FROM [CarExpenses] WHERE ([Company_ID] = @Company_ID AND [InvoiceCode] = @InvoiceCode 
--		AND [CompanyType] = @CompanyType);


	IF(((SELECT COUNT(*) FROM [CarExpenses] WHERE ([Company_ID] = @Company_ID AND [InvoiceCode] = @InvoiceCode 
		AND [CompanyType] = @CompanyType)) <= 0)  AND (@ExpenseID <= 0))
	BEGIN

	INSERT  INTO [CarExpenses]
           ([Car_ID]
           ,[Currency_ID], [ExpenseType_ID]
           ,[CompanyType]
           ,[Company_ID], [ExchangeCompany_ID]
           ,[InvoiceCode]
           ,[DueDate]
           ,[PaymentDate]
           ,[Notes]
           ,[ExpenseValue], [InOutType]
           ,[Active]
           ,[AddDate]
           ,[WhoAdd]
           ,[AddIP],[Deleted], [PaymentValue],[Store_ID])
--           ,[EditDate]
--           ,[WhoEdit]
--           ,[EditIP]           
--           ,[DeleteDate]
--           ,[WhoDelete]
--           ,[DeleteIP])
     VALUES
           (@Car_ID 
           ,@Currency_ID, @ExpenseType_ID 
           ,@CompanyType  
           ,@Company_ID, @ExchangeCompany_ID 
           ,@InvoiceCode
           ,@DueDate  
           ,@PaymentDate  
           ,@Notes 
           ,@ExpenseValue, @InOutType 
           ,1  
           ,GETDATE()  
           ,@WhoAdd 
           ,@AddIP
           ,0, @PaymentValue,@Store_ID)   
--           ,@EditDate  
--           ,@WhoEdit 
--           ,@EditIP  
--           ,@DeleteDate  
--           ,@WhoDelete 
--           ,@DeleteIP)

	END
	ELSE
	BEGIN

   UPDATE [CarExpenses]
   SET [Car_ID] = @Car_ID 
      ,[Currency_ID] = @Currency_ID , [ExpenseType_ID] = @ExpenseType_ID 
      ,[CompanyType] = @CompanyType 
      ,[Company_ID] = @Company_ID, ExchangeCompany_ID = @ExchangeCompany_ID
      ,[InvoiceCode] = @InvoiceCode 
      ,[DueDate] = @DueDate 
      ,[PaymentDate] = @PaymentDate 
      ,[Notes] = @Notes
      ,[ExpenseValue] = @ExpenseValue, [InOutType] = @InOutType
      ,[Active] = 1 
--      ,[AddDate] = @AddDate 
--      ,[WhoAdd] = @WhoAdd 
--      ,[AddIP] = @AddIP 
      ,[EditDate] = GETDATE() 
      ,[WhoEdit] = @WhoEdit 
      ,[EditIP] = @EditIP 
      ,[Deleted] = 0 
	  ,[PaymentValue] = @PaymentValue, Store_ID = @Store_ID
--      ,[DeleteDate] = @DeleteDate 
--      ,[WhoDelete] = @WhoDelete 
--      ,[DeleteIP] = @DeleteIP 
     WHERE ExpenseID = @ExpenseID
	

	END
END



























GO
/****** Object:  StoredProcedure [dbo].[Expenses_Delete]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Expenses_Delete]
			@ExpenseID bigint
           ,@WhoDelete bigint
           ,@DeleteIP nvarchar(50)
	
	
AS
BEGIN
	
	SET NOCOUNT ON;
	
	   UPDATE [CarExpenses]
	   SET [Deleted] = 1 
		  ,[DeleteDate] = GETDATE()
		  ,[WhoDelete] = @WhoDelete 
		  ,[DeleteIP] = @DeleteIP 
	   WHERE ExpenseID = @ExpenseID
	
END

















GO
/****** Object:  StoredProcedure [dbo].[Expenses_GetDetails]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Expenses_GetDetails]
			@ExpenseID bigint
	
AS
BEGIN
	
	SET NOCOUNT ON;
	
	   SELECT * FROM [CarExpenses]	   
	   WHERE ExpenseID = @ExpenseID
	
END
















GO
/****** Object:  StoredProcedure [dbo].[Expenses_GetSelectList]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO














-- =============================================
-- Author:	    <Mohamed Salah Abdullah>
-- ALTER date:  <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Expenses_GetSelectList]
			@Car_ID bigint --,	@Total numeric(18, 0) OUTPUT
	
AS
BEGIN
	
	SET NOCOUNT ON;

	   SELECT * FROM View_ExpensesList WHERE Car_ID = @Car_ID;


--SET @Total = (select sum(individual_counts) AS ExpTotal from
--(
--  SELECT SUM(ExpenseValue * ExchangeRate) AS individual_counts FROM [View_ExpensesBuyers] 
--WHERE Car_ID = 22
--    union
--  SELECT SUM(ExpenseValue * ExchangeRate) AS individual_counts FROM [View_ExpensesShipping] 
--WHERE Car_ID = 22
--union
--  SELECT SUM(ExpenseValue * ExchangeRate) AS individual_counts FROM [View_ExpensesTowing] 
--WHERE Car_ID = 22
--) x)



END























GO
/****** Object:  StoredProcedure [dbo].[Expenses_GetSelectList_Company]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO












-- =============================================
-- Author:	    <Mohamed Salah Abdullah>
-- ALTER date:  <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Expenses_GetSelectList_Company]
			@CompanyID bigint,  --,	@Total numeric(18, 0) OUTPUT
			@CompanyType nvarchar(20)
AS
BEGIN
	
	SET NOCOUNT ON;


	   SELECT * FROM DBO.[View_ExpensesBuyers] WHERE Company_ID = @CompanyID AND CompanyType = @CompanyType
	   UNION ALL	
	   SELECT * FROM [View_ExpensesShipping] WHERE Company_ID = @CompanyID AND CompanyType = @CompanyType
	   UNION ALL
	   SELECT * FROM [View_ExpensesTowing] WHERE Company_ID = @CompanyID AND CompanyType = @CompanyType


--SET @Total = (select sum(individual_counts) AS ExpTotal from
--(
--  SELECT SUM(ExpenseValue * ExchangeRate) AS individual_counts FROM [View_ExpensesBuyers] 
--WHERE Car_ID = 22
--    union
--  SELECT SUM(ExpenseValue * ExchangeRate) AS individual_counts FROM [View_ExpensesShipping] 
--WHERE Car_ID = 22
--union
--  SELECT SUM(ExpenseValue * ExchangeRate) AS individual_counts FROM [View_ExpensesTowing] 
--WHERE Car_ID = 22
--) x)



END





















GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_DeleteExpenseType]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<@2011 Minutesuae Web Designers>
-- ALTER date: <11/05/2011>
-- Description:	<........>
-- =============================================
CREATE PROCEDURE [dbo].[ExpenseTypes_DeleteExpenseType] 
	@ExpenseTypeID int
		
	,@System_Who_Delete bigint
	,@System_LastAction_IP nvarchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.		
	
	UPDATE ExpenseTypes SET System_Delete_Status = 1, System_Delete_Date = convert(varchar, getdate(), 101), System_Who_Delete = @System_Who_Delete, 
	System_LastAction_IP = @System_LastAction_IP 
	WHERE ExpenseTypeID = @ExpenseTypeID;
	
END





GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_GetExpenseTypeDetails]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<@2011 Minutesuae Web Designers>
-- ALTER date: <11/05/2011>
-- Description:	<........>
-- =============================================
CREATE PROCEDURE [dbo].[ExpenseTypes_GetExpenseTypeDetails] 
	@ExpenseTypeID int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.		
	
	SELECT     ExpenseTypes.*, Currencies.CurrencyName, 
                      Currencies.CurrencySymbol
	FROM         ExpenseTypes INNER JOIN
						  Currencies ON ExpenseTypes.CurrencyUsed = Currencies.CurrencyID
	WHERE     (ExpenseTypes.ExpenseTypeID = @ExpenseTypeID)
	
END












GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_GetExpenseTypesNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ExpenseTypes_GetExpenseTypesNames] 
	@CurrencyUsed nvarchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.		
	
	SELECT     ExpenseTypeID, ExpenseTypeName, GroupName
	FROM       ExpenseTypes 
	WHERE System_Delete_Status = 0 AND CurrencyUsed = @CurrencyUsed -- ==> 1 or 2.
		

END

GO
/****** Object:  StoredProcedure [dbo].[ExpenseTypes_SaveExpenseType]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ExpenseTypes_SaveExpenseType] 
	@ExpenseTypeID int,
	@ExpenseTypeName nvarchar(150),
	@ExpenseTypeDetails nvarchar(3000),
	@CurrencyUsed nvarchar(20), @GroupName nvarchar(50),
	@System_Who_Add bigint,
	@System_LastAction_IP nvarchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.		
	SELECT * FROM ExpenseTypes WHERE ExpenseTypeName = @ExpenseTypeName

	IF(@@ROWCOUNT > 0 OR @ExpenseTypeID > 0)  
	BEGIN
		UPDATE ExpenseTypes SET ExpenseTypeName = @ExpenseTypeName, ExpenseTypeDetails = @ExpenseTypeDetails, 
		CurrencyUsed = @CurrencyUsed,GroupName = @GroupName, System_Modify_Date = convert(varchar, getdate(), 101), System_LastAction_IP = @System_LastAction_IP 
		WHERE ExpenseTypeID = @ExpenseTypeID;
	END		
	ELSE
	BEGIN	
		INSERT INTO ExpenseTypes(ExpenseTypeName, ExpenseTypeDetails,CurrencyUsed,GroupName, System_Who_Add, System_Delete_Status, System_LastAction_IP) 
		VALUES (@ExpenseTypeName, @ExpenseTypeDetails,@CurrencyUsed,@GroupName, @System_Who_Add, 0, @System_LastAction_IP);
	
	END
END

GO
/****** Object:  StoredProcedure [dbo].[ImagesDeleteImage]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <25-3-2010>
-- Description:	<Delete image>
-- =============================================
CREATE PROCEDURE [dbo].[ImagesDeleteImage]
	-- Add the parameters for the stored procedure here
	
	@Id bigint
	
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from Pictures where ID = @Id;
			
END









GO
/****** Object:  StoredProcedure [dbo].[ImagesListByCategoryId]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <25-3-2010>
-- Description:	<get images list for category>
-- =============================================
CREATE PROCEDURE [dbo].[ImagesListByCategoryId]
	-- Add the parameters for the stored procedure here
	
	@Category nvarchar(20),
	@MasterID bigint
	
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from Pictures 
	where MasterID = @MasterID AND CategoryType = @Category 
	Order By [Priority] asc;
			
END








GO
/****** Object:  StoredProcedure [dbo].[ImagesResetMainImage]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <26-3-2010>
-- Description:	<Set main picture.>
-- =============================================
CREATE PROCEDURE [dbo].[ImagesResetMainImage]
	-- Add the parameters for the stored procedure here
	@id bigint,
	@MasterID bigint,
	@Category nvarchar(20)
	
	
	
AS
BEGIN
	
	declare @sql nvarchar(50)
	declare @URL nvarchar(50)
    
	Update Pictures set MainImage = '0' Where MasterID = @MasterID AND CategoryType = @Category;

	Update Pictures set MainImage = '1' Where ID = @id;

	select @URL =  CAST((select URL FROM Pictures Where ID = @id) AS nvarchar(50));


	IF @Category = 'cars'
		UPDATE CarsData SET main_picture = @URL where CARID = @MasterID;
			
END










GO
/****** Object:  StoredProcedure [dbo].[LanguagesNamesList]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <24-3-2010>
-- Description:	<Get all languages names list>
-- =============================================
CREATE PROCEDURE [dbo].[LanguagesNamesList] 
	-- Add the parameters for the stored procedure here
	

AS
BEGIN

    -- Insert statements for procedure here

	SELECT id, lang_name, lang_code from SiteLanguages ;

END


GO
/****** Object:  StoredProcedure [dbo].[LinksDeleteLink]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <24-3-2010>
-- Description:	<Updating link info.>
-- =============================================
CREATE PROCEDURE [dbo].[LinksDeleteLink]
	-- Add the parameters for the stored procedure here
	@id int
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Delete from  SiteLinks Where id = @id;
			
END







GO
/****** Object:  StoredProcedure [dbo].[LinksGetLinkDetailsById]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <24-3-2010>
-- Description:	<Get links by link id>
-- =============================================
CREATE PROCEDURE [dbo].[LinksGetLinkDetailsById]
	-- Add the parameters for the stored procedure here
	@id int
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select * from  SiteLinks Where id = @id;
			
END








GO
/****** Object:  StoredProcedure [dbo].[LinksGetLinksListByLanguage]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <24-3-2010>
-- Description:	<Get Links list by language id>
-- =============================================
CREATE PROCEDURE [dbo].[LinksGetLinksListByLanguage] 
	-- Add the parameters for the stored procedure here
	@languageID int

AS
BEGIN

    -- Insert statements for procedure here

	SELECT lang.lang_name, lang.lang_code, link.* 
		from SiteLanguages lang join SiteLinks link
		on lang.id = link.link_lang_id
	where lang.id = @languageID  Order by link.link_order asc;

END






GO
/****** Object:  StoredProcedure [dbo].[LinksUpdateLink]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <24-3-2010>
-- Description:	<Updating link info.>
-- =============================================
CREATE PROCEDURE [dbo].[LinksUpdateLink]
	-- Add the parameters for the stored procedure here
	@id bigint,
	@link_order int,
	@link_lang_id int,
	@Active bit,
	@link_place nvarchar(50),
	@link_name	nvarchar(50),
	@link_details ntext
	
AS
BEGIN
	
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update SiteLinks set link_order = @link_order, link_lang_id = @link_lang_id, Active = @Active,
						link_place = @link_place, link_name = @link_name, link_details = @link_details
		Where id = @id;
			
END





GO
/****** Object:  StoredProcedure [dbo].[Models_AddEdit]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Models_AddEdit]
			@ModelID bigint, @Marker_ID int
			,@TypeNameEn nvarchar(100)
           ,@TypeNameAr nvarchar(100)           
           ,@Priority int
           ,@Active bit
           ,@System_Who_Add bigint
           --,@System_Add_Date datetime
           --,@System_Modify_Date datetime
           --,@System_Delete_Status bit
           --,@System_Who_Delete bigint
           --,@System_Delete_Date datetime
           ,@System_LastAction_IP nvarchar(50)
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [CarsModel] WHERE (Marker_ID = @Marker_ID AND TypeNameEn = @TypeNameEn);

	IF((@@ROWCOUNT <= 0)  AND (@ModelID <= 0))
	BEGIN

	INSERT INTO [CarsModel]
           ([Marker_ID], [TypeNameEn]
           ,[TypeNameAr]           
           ,[Priority]
           ,[Active]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           (@Marker_ID, @TypeNameEn 
           ,@TypeNameAr
           ,@Priority
           ,@Active 
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

	UPDATE [CarsModel]
           SET [Marker_ID] = @Marker_ID, [TypeNameEn] = @TypeNameEn
           ,[TypeNameAr] = @TypeNameAr
           ,[Priority] = @Priority
           ,[Active] = @Active
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE ModelID = @ModelID
	

	END


END
















GO
/****** Object:  StoredProcedure [dbo].[Models_DeleteOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Models_DeleteOne]
			@ModelID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

--	Update [CarsModel]
--	SET System_Delete_Date = GETDATE(), System_Delete_Status = 1
--    WHERE ModelID = @ModelID
	
END














GO
/****** Object:  StoredProcedure [dbo].[Models_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Models_GetNames]
		@Marker_ID int	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT ModelID, TypeNameEn FROM [CarsModel]
    WHERE Active = 1 AND System_Delete_Status = 0 AND Marker_ID = @Marker_ID
	
END













GO
/****** Object:  StoredProcedure [dbo].[Models_GetOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Models_GetOne]
			@ModelID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT     CarsModel.*, CarsMarker.MarkerNameEn
	FROM         CarsModel INNER JOIN
						  CarsMarker ON CarsModel.Marker_ID = CarsMarker.MarkerID
	WHERE     (CarsModel.ModelID = @ModelID)
	
END











GO
/****** Object:  StoredProcedure [dbo].[PortShips_AddEdit]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[PortShips_AddEdit]
			@PortShipID int
		   ,@PortShipEn nvarchar(100) 
           ,@PortShipAr nvarchar(100) 
           ,@PortShipDescEn nvarchar(2000) 
           ,@PortShipDescAr nvarchar(2000) 
           ,@Priority int 
           ,@Active bit 
           ,@System_Who_Add bigint 
           ,@System_LastAction_IP nvarchar(50)
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [PortShipping] WHERE (PortShipEn = @PortShipEn); 


	IF((@@ROWCOUNT <= 0)  AND (@PortShipID <= 0))
	BEGIN

	INSERT  INTO [PortShipping]
           ([PortShipEn]
           ,[PortShipAr]
           ,[PortShipDescEn]
           ,[PortShipDescAr]
           ,[Priority]
           ,[Active]
           ,[System_Who_Add]
           ,[System_Add_Date]           
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           (@PortShipEn 
           ,@PortShipAr 
           ,@PortShipDescEn 
           ,@PortShipDescAr 
           ,@Priority   
           ,@Active   
           ,@System_Who_Add
           ,GETDATE()
           ,0
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

	UPDATE [PortShipping]
           SET [PortShipEn] = @PortShipEn
           ,[PortShipAr] = @PortShipAr
           ,[PortShipDescEn] = @PortShipDescEn
           ,[PortShipDescAr] = @PortShipDescAr
           ,[Priority] = @Priority
           ,[Active] = @Active
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE PortShipID = @PortShipID
	

	END


END


















GO
/****** Object:  StoredProcedure [dbo].[PortShips_DeleteOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[PortShips_DeleteOne]
			@PortShipID int
AS
BEGIN
	
	SET NOCOUNT ON;

	
	Update [PortShipping] SET
	System_Delete_Status = 1, System_Delete_Date = GetDATE() 
	WHERE PortShipID = @PortShipID


END
















GO
/****** Object:  StoredProcedure [dbo].[PortShips_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[PortShips_GetNames]
			
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SELECT PortShipID, PortShipEn, PortShipAr FROM [PortShipping] 
	WHERE System_Delete_Status = 0 AND Active = 1


END

















GO
/****** Object:  StoredProcedure [dbo].[PortShips_GetOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[PortShips_GetOne]
			@PortShipID int
AS
BEGIN
	
	SET NOCOUNT ON;

	
	SELECT  * FROM [PortShipping] 
	WHERE PortShipID = @PortShipID


END
















GO
/****** Object:  StoredProcedure [dbo].[Regions_AddEdit]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Regions_AddEdit]
			@RegionID bigint, @Auction_ID int
		   ,@RegionEn nvarchar(100) 
           ,@RegionAr nvarchar(100) , @CostforRegion decimal(18, 0)
           ,@RegionDescEn nvarchar(2000) 
           ,@RegionDescAr nvarchar(2000) 
           ,@Priority int 
           ,@Active bit 
           ,@System_Who_Add bigint 
           ,@System_LastAction_IP nvarchar(50)
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [Regions] WHERE (Auction_ID = @Auction_ID AND RegionEn = @RegionEn); 


	IF((@@ROWCOUNT <= 0)  AND (@RegionID <= 0))
	BEGIN

	INSERT  INTO [Regions]
           ([RegionEn], [Auction_ID]
           ,[RegionAr], [CostforRegion]
           ,[RegionDescEn]
           ,[RegionDescAr]
           ,[Priority]
           ,[Active]
           ,[System_Who_Add]
           ,[System_Add_Date]           
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           (@RegionEn , @Auction_ID
           ,@RegionAr , @CostforRegion
           ,@RegionDescEn 
           ,@RegionDescAr 
           ,@Priority   
           ,@Active   
           ,@System_Who_Add
           ,GETDATE()
           ,0
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

	UPDATE [Regions]
           SET [RegionEn] = @RegionEn, [Auction_ID] = @Auction_ID
           ,[RegionAr] = @RegionAr, [CostforRegion] = @CostforRegion
           ,[RegionDescEn] = @RegionDescEn
           ,[RegionDescAr] = @RegionDescAr
           ,[Priority] = @Priority
           ,[Active] = @Active
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE RegionID = @RegionID
	

	END


END




















GO
/****** Object:  StoredProcedure [dbo].[Regions_DeleteOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Regions_DeleteOne]
			@RegionID bigint
AS
BEGIN
	
	SET NOCOUNT ON;

	
--	Update [Regions] SET
--	System_Delete_Status = 1, System_Delete_Date = GetDATE() 
--	WHERE RegionID = @RegionID


END



















GO
/****** Object:  StoredProcedure [dbo].[Regions_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Regions_GetNames]
	@Auction_ID int		
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SELECT RegionID, (RegionEn + ': ' + CAST((ISNULL(CostforRegion ,0)) AS nvarchar(50))) AS RegionEn , RegionAr, CostforRegion FROM [Regions] 
	WHERE System_Delete_Status = 0 AND Active = 1 AND Auction_ID = @Auction_ID;


END




















GO
/****** Object:  StoredProcedure [dbo].[Regions_GetOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Regions_GetOne]
			@RegionID bigint
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT     Regions.*, Auctions.AuctionName
	FROM         Regions INNER JOIN
						  Auctions ON Regions.Auction_ID = Auctions.AuctionID
	WHERE     (Regions.RegionID = @RegionID)


END


















GO
/****** Object:  StoredProcedure [dbo].[Safe_DeleteDebitData]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		<@2011 Minutesuae Web Designers>
-- ALTER date: <11/05/2011>
-- Description:	<........>
-- =============================================
CREATE PROCEDURE [dbo].[Safe_DeleteDebitData] 
	@SafeID bigint
		
	,@System_Who_Delete bigint
	,@System_LastAction_IP nvarchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.		
	
	UPDATE MainSafeDebitCredit SET System_Delete_Status = 1, System_Delete_Date = convert(varchar, getdate(), 101), System_Who_Delete = @System_Who_Delete, 
	System_LastAction_IP = @System_LastAction_IP 
	WHERE SafeID = @SafeID;
	
END





GO
/****** Object:  StoredProcedure [dbo].[Safe_GetDebitAll]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Safe_GetDebitAll] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.		
	
	SELECT     * from View_SafeValuesList
	
END

GO
/****** Object:  StoredProcedure [dbo].[Safe_GetDebitDetails]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<@2011 Minutesuae Web Designers>
-- ALTER date: <11/05/2011>
-- Description:	<........>
-- =============================================
CREATE PROCEDURE [dbo].[Safe_GetDebitDetails] 
	@SafeID int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.		
	
	SELECT * FROM MainSafeDebitCredit 
	WHERE SafeID = @SafeID;
	
END











GO
/****** Object:  StoredProcedure [dbo].[Safe_GetSafeReport]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



















-- =============================================
-- Author:		<@2011 Minutesuae Web Designers>
-- ALTER date: <11/05/2011>
-- Description:	<........>
-- =============================================
CREATE PROCEDURE [dbo].[Safe_GetSafeReport] 
	@Store_ID bigint
AS
BEGIN
--		SELECT   *--,  (SafeDebitValueTotal - ISNULL(InvoicesTotal, 0)) AS MainSafeRemainder
--		FROM     View_ReportMainSafe
SELECT     (SELECT     ISNULL(SUM(CAST(SafeDebitValue AS DECIMAL(16, 0))), 0) 
                       FROM          dbo.MainSafeDebitCredit
                       WHERE      (System_Delete_Status = 0) and (Store_ID = @Store_ID)) AS SafeDebitValueTotal,



					  (((SELECT     (ISNULL(SUM(ExpenseValue), 0) / dbo.GetDirhamExchangeRatio()) -- = Dollar value
						FROM          CarExpenses
						WHERE      (Active = 1) AND (Store_ID = @Store_ID) AND Currency_ID = 1 AND (InOutType = 'payment' OR (CompanyType = 'cash' AND Car_ID IS NULL)))) + 
(SELECT     ISNULL(SUM(ExpenseValue), 0) -- = Dirham value
						FROM          CarExpenses
						WHERE      (Active = 1) AND (Store_ID = @Store_ID) AND Currency_ID = 2 AND (InOutType = 'payment' OR (CompanyType = 'cash' AND Car_ID IS NULL))) ) AS TotalExpenses,





					  (((SELECT     (ISNULL(SUM(PaymentValue), 0) / dbo.GetDirhamExchangeRatio()) -- = Dollar value
						FROM          ClientPayments
						WHERE      (Active = 1) AND (Store_ID = @Store_ID) AND Currency_ID = 1)) + 
(SELECT     ISNULL(SUM(PaymentValue), 0) -- = Dirham value
						FROM          ClientPayments
						WHERE      (Active = 1) AND (Store_ID = @Store_ID) AND Currency_ID = 2) ) AS Payments,



					  (SELECT     ISNULL(SUM(TotalSubPaymentsForThis), 0) 
						FROM          dbo.View_CarSalesInvoices
						WHERE      (Store_ID = @Store_ID) AND (Active = 1)) AS SubPayments,
					  (SELECT     ISNULL(SUM(SalePrice), 0) 
						FROM			CarInvoices 
						WHERE      (Store_ID = @Store_ID) AND (Active = 1)) AS Invoices,
					  (SELECT     ISNULL(SUM(FirstAmount), 0) 
						FROM          CarInvoices
						WHERE      (Store_ID = @Store_ID) AND (Active = 1) AND (System_Delete_Status = 0)) AS InvoicesFirstAmount,
						(SELECT     TOP 1 StoreName
						FROM          dbo.Stores 
						WHERE      (StoreID = 1)) AS StoreName


	

END
























GO
/****** Object:  StoredProcedure [dbo].[Safe_SaveDebitData]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<@2011 Minutesuae Web Designers>
-- ALTER date: <11/05/2011>
-- Description:	<........>
-- =============================================
CREATE PROCEDURE [dbo].[Safe_SaveDebitData] 
	@SafeID  bigint  
   ,@Employee_ID  bigint  ,@Store_ID  bigint 
   ,@SafeDebitValue  nvarchar(100)  
   ,@SafeDebitDate  datetime  
--   ,@SafeCreditValue  nvarchar(100)  
--   ,@SafeCreditDate  datetime  
   ,@System_Who_Add  bigint   
   ,@System_LastAction_IP  nvarchar(50)

AS
BEGIN	
	
	IF(@SafeID > 0 OR (SELECT COUNT(*) FROM MainSafeDebitCredit WHERE Employee_ID = @Employee_ID AND Store_ID = @Store_ID AND
											SafeDebitValue = @SafeDebitValue AND SafeDebitDate = @SafeDebitDate AND
											System_Who_Add = @System_Who_Add) > 0)  
	BEGIN
	   UPDATE [MainSafeDebitCredit] SET [Employee_ID] = @Employee_ID, Store_ID = @Store_ID     
		   ,[SafeDebitValue] = @SafeDebitValue     
		   ,[SafeDebitDate] = @SafeDebitDate     
--		   ,[SafeCreditValue] = @SafeCreditValue     
--		   ,[SafeCreditDate] = @SafeCreditDate     
--		   ,[System_Who_Add] = @System_Who_Add     
		   ,[System_Modify_Date] = GETDATE()
		   ,[System_Delete_Status] = 0     
		   ,[System_LastAction_IP] = @System_LastAction_IP  
	 WHERE SafeID = @SafeID OR SafeID = (SELECT SafeID FROM MainSafeDebitCredit WHERE Employee_ID = @Employee_ID AND
											Store_ID = @Store_ID AND
											SafeDebitValue = @SafeDebitValue AND SafeDebitDate = @SafeDebitDate AND
											System_Who_Add = @System_Who_Add);

	END		
	ELSE
	BEGIN	
		INSERT INTO [MainSafeDebitCredit]
           ([Employee_ID],Store_ID 
           ,[SafeDebitValue]
           ,[SafeDebitDate]
--           ,[SafeCreditValue]
--           ,[SafeCreditDate]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           (@Employee_ID ,@Store_ID    
           ,@SafeDebitValue     
           ,@SafeDebitDate     
--           ,@SafeCreditValue     
--           ,@SafeCreditDate     
           ,@System_Who_Add     
           ,GETDATE()     
           ,0    
           ,@System_LastAction_IP)
	
	END
END












GO
/****** Object:  StoredProcedure [dbo].[SaleInvoices_AddEdit]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[SaleInvoices_AddEdit]
			@InvoiceID bigint
		   ,@SiteCompany_ID int
           ,@Car_ID bigint
           ,@Client_ID bigint
           ,@Currency_ID int
           ,@SalePrice money
           ,@FirstAmount money
           ,@InvoiceDate datetime
           ,@Notes nvarchar(2000), @SecretCode nvarchar(50)
			,@System_Who_Add bigint
           ,@System_LastAction_IP nvarchar(50), @Store_ID bigint
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	-- Check data exist before.
	DECLARE @IsExistBefore int, @IsCorrectSecretCode int;
	SELECT  @IsExistBefore = COUNT(*) FROM [CarInvoices] WHERE ([Client_ID] = @Client_ID AND Store_ID = @Store_ID and [Car_ID] = @Car_ID AND [SalePrice] = @SalePrice); -- [SiteCompany_ID] = @SiteCompany_ID AND 

	-- Check secret code is a correct.
	SELECT @IsCorrectSecretCode = COUNT(*) FROM SiteCompanies WHERE SecretCode = @SecretCode;

	IF (@IsCorrectSecretCode > 0)
	BEGIN

	IF((@IsExistBefore <= 0) AND (@InvoiceID <= 0))
	BEGIN

	INSERT INTO [CarInvoices]
           ([SiteCompany_ID]
           ,[Car_ID]
           ,[Client_ID]
           ,[Currency_ID]
           ,[SalePrice]
           ,[FirstAmount]
           ,[InvoiceDate]
           ,[Notes], [Active]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP], Store_ID)
     VALUES
           (1 --@SiteCompany_ID 
           ,@Car_ID
           ,@Client_ID
           ,@Currency_ID 
           ,@SalePrice
           ,@FirstAmount
           ,@InvoiceDate
           ,@Notes, 1
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP, @Store_ID)

	END
	ELSE
	BEGIN

	UPDATE [CarInvoices]
        SET [SiteCompany_ID] = 1 --@SiteCompany_ID // main company ==> Elaf Co.
           ,[Car_ID] = @Car_ID
           ,[Client_ID] = @Client_ID
           ,[Currency_ID] = @Currency_ID
           ,[SalePrice] = @SalePrice
           ,[FirstAmount] = @FirstAmount
           ,[InvoiceDate] = @InvoiceDate
           ,[Notes] = @Notes, [Active] = 1
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP, Store_ID = @Store_ID
     WHERE 
		InvoiceID = @InvoiceID

	END -- End insert/update if

	-- Change car status to sold after save(add/edit) action.
	UPDATE CarsData SET sale_date = GETDATE(), sold = 1 WHERE [CarID] = @Car_ID; -- sale_to = (SELECT TOP 1 ClientName FROM Clients Where ClientID = @Client_ID) WHERE CARID = @Car_ID;

	END -- End outer if (secret code).

	SET  @IsExistBefore = (SELECT TOP 1 InvoiceID FROM [CarInvoices] WHERE ([FirstAmount] = @FirstAmount AND [Car_ID] = @Car_ID AND [Client_ID] = @Client_ID AND [SalePrice] = @SalePrice)); -- [SiteCompany_ID] = @SiteCompany_ID AND 

	-- Save FirstAmount into ClientPayments table.
	--INSERT INTO ClientPayments Values()	

	SELECT @IsCorrectSecretCode AS CountSecretCode, @IsExistBefore AS CountInvoiceData

END






























GO
/****** Object:  StoredProcedure [dbo].[SaleInvoices_GetOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO










-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[SaleInvoices_GetOne]
			@InvoiceID bigint	
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SELECT    * FROM View_CarSalesInvoices
	WHERE     (InvoiceID = @InvoiceID)

END




















GO
/****** Object:  StoredProcedure [dbo].[SaleInvoices_ToggleInvoice]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[SaleInvoices_ToggleInvoice]
			@InvoiceID bigint,
			@Toggle bit
AS
BEGIN
	
	SET NOCOUNT ON;

	DECLARE @countPayments int, @countSubPayments int;
	SELECT @countPayments = COUNT(*) FROM ClientPayments Where Active = 1 AND Invoice_ID = @InvoiceID;
	SELECT @countSubPayments  = COUNT(*) FROM ClientInvoicesPayments Where Active = 1 AND CarInvoice_ID = @InvoiceID;


	IF (@Toggle = 0 AND @countPayments <= 0 AND @countSubPayments <= 0)
	BEGIN
		UPDATE [CarInvoices] SET [Active] = @Toggle WHERE InvoiceID = @InvoiceID
		-- Change car status to Available/Sold
		-- Rest SubInvoices values
		-- Return SubInvoices values to ClientPayments values.
	END

	SELECT @countPayments AS Payments4This, @countSubPayments As SubPayments4This;

END



























GO
/****** Object:  StoredProcedure [dbo].[SaleInvoicesPayments_StattisticsForClient]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[SaleInvoicesPayments_StattisticsForClient]
			@Client_ID bigint	
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SELECT    
	(SELECT ISNULL(SUM(PaymentValue), 0) FROM View_ClientPayments WHERE Client_ID = @Client_ID AND PaymentID > 0 AND Active = 1 AND INVOICE_ID IS NOT NULL) AS Payments,
	(SELECT ISNULL(SUM(TotalSubPaymentsForThis), 0) FROM View_CarSalesInvoices WHERE Client_ID = @Client_ID AND Active = 1) AS SubPayments,
	(SELECT ISNULL(SUM(SalePrice), 0) FROM View_CarSalesInvoices WHERE Client_ID = @Client_ID AND Active = 1) AS Invoices,
	(SELECT ISNULL(SUM(FirstAmount), 0) FROM View_CarSalesInvoices WHERE Client_ID = @Client_ID AND Active = 1) AS InvoicesFirstAmount,
	(SELECT TOP 1 ISNULL(OpeningBalance,0) FROM Clients WHERE ClientID = @Client_ID) As ClientFirstBalance,
	(SELECT (ISNULL((SUM(PaymentValue) - SUM(CloseOut)),0)) AS EXP1 FROM View_ClientPayments WHERE Client_ID = @Client_ID AND PaymentID > 0 AND Active = 1 AND INVOICE_ID IS NULL) As NewBalance

END



























GO
/****** Object:  StoredProcedure [dbo].[ShipCompanies_AddEdit]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[ShipCompanies_AddEdit]
			@ShipCompanyID bigint
			,@ShipCompanyName nvarchar(100)
           ,@ShipCompanyEmail nvarchar(100)
           ,@ShipCompanyPhone nvarchar(100)
           ,@ShipCompanyAddress nvarchar(500)
           ,@ShipCompanyDesc nvarchar(2000)
           ,@Priority int
           ,@Active bit, @OpeningBalance money
           ,@System_Who_Add bigint
           --,@System_Add_Date datetime
           --,@System_Modify_Date datetime
           --,@System_Delete_Status bit
           --,@System_Who_Delete bigint
           --,@System_Delete_Date datetime
           ,@System_LastAction_IP nvarchar(50)
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [ShippingCompanies] WHERE (ShipCompanyName = @ShipCompanyName);

	IF((@@ROWCOUNT <= 0)  AND (@ShipCompanyID <= 0))
	BEGIN

INSERT INTO [ShippingCompanies]
           ([ShipCompanyName]
           ,[ShipCompanyEmail]
           ,[ShipCompanyPhone]
           ,[ShipCompanyAddress]
           ,[ShipCompanyDesc]
           ,[Priority]
           ,[Active], [OpeningBalance]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           ( @ShipCompanyName 
           ,@ShipCompanyEmail 
           ,@ShipCompanyPhone 
           ,@ShipCompanyAddress 
           ,@ShipCompanyDesc 
           ,@Priority
           ,1, @OpeningBalance 
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

UPDATE [ShippingCompanies]
           SET [ShipCompanyName] = @ShipCompanyName
           ,[ShipCompanyEmail] = @ShipCompanyEmail
           ,[ShipCompanyPhone] = @ShipCompanyPhone
           ,[ShipCompanyAddress] = @ShipCompanyAddress
           ,[ShipCompanyDesc] = @ShipCompanyDesc
           ,[Priority] = @Priority
           ,[Active] = 1, [OpeningBalance] = @OpeningBalance
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE ShipCompanyID = @ShipCompanyID
	

	END


END


















GO
/****** Object:  StoredProcedure [dbo].[ShipCompanies_DeleteOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[ShipCompanies_DeleteOne]
			@ShipCompanyID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	UPDATE [ShippingCompanies]
	SET System_Delete_Date = GETDATE(), System_Delete_Status = 1
    WHERE ShipCompanyID = @ShipCompanyID
	
END












GO
/****** Object:  StoredProcedure [dbo].[ShipCompanies_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[ShipCompanies_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT ShipCompanyID, ShipCompanyName FROM [ShippingCompanies]
    WHERE Active = 1 AND System_Delete_Status = 0
	
END












GO
/****** Object:  StoredProcedure [dbo].[ShipCompanies_GetOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[ShipCompanies_GetOne]
			@ShipCompanyID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [ShippingCompanies]
    WHERE ShipCompanyID = @ShipCompanyID
	
END










GO
/****** Object:  StoredProcedure [dbo].[Ships_AddEdit]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Ships_AddEdit]
			@ShipID int
		   ,@ShipEn nvarchar(100) 
           ,@ShipAr nvarchar(100) 
           ,@ShipDescEn nvarchar(2000) 
           ,@ShipDescAr nvarchar(2000) 
           ,@Priority int 
           ,@Active bit 
           ,@System_Who_Add bigint 
           ,@System_LastAction_IP nvarchar(50)
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM Ships WHERE (ShipEn = @ShipEn); 


	IF((@@ROWCOUNT <= 0)  AND (@ShipID <= 0))
	BEGIN

	INSERT  INTO Ships
           ([ShipEn]
           ,[ShipAr]
           ,[ShipDescEn]
           ,[ShipDescAr]
           ,[Priority]
           ,[Active]
           ,[System_Who_Add]
           ,[System_Add_Date]           
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           (@ShipEn 
           ,@ShipAr 
           ,@ShipDescEn 
           ,@ShipDescAr 
           ,@Priority   
           ,@Active   
           ,@System_Who_Add
           ,GETDATE()
           ,0
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

	UPDATE Ships
           SET [ShipEn] = @ShipEn
           ,[ShipAr] = @ShipAr
           ,[ShipDescEn] = @ShipDescEn
           ,[ShipDescAr] = @ShipDescAr
           ,[Priority] = @Priority
           ,[Active] = @Active
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE ShipID = @ShipID
	

	END


END



















GO
/****** Object:  StoredProcedure [dbo].[Ships_DeleteOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Ships_DeleteOne]
			@ShipID int
AS
BEGIN
	
	SET NOCOUNT ON;

	
	Update Ships SET
	System_Delete_Status = 1, System_Delete_Date = GetDATE() 
	WHERE ShipID = @ShipID


END

















GO
/****** Object:  StoredProcedure [dbo].[Ships_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Ships_GetNames]
			
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SELECT ShipID, ShipEn, ShipAr FROM Ships 
	WHERE System_Delete_Status = 0 AND Active = 1


END


















GO
/****** Object:  StoredProcedure [dbo].[Ships_GetOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Ships_GetOne]
			@ShipID int
AS
BEGIN
	
	SET NOCOUNT ON;

	
	SELECT  * FROM Ships 
	WHERE ShipID = @ShipID


END
















GO
/****** Object:  StoredProcedure [dbo].[SiteCompanies_GetOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[SiteCompanies_GetOne]

	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT top 1 * FROM [SiteCompanies]
	
END










GO
/****** Object:  StoredProcedure [dbo].[States_AddEdit]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[States_AddEdit]
			@StateID int
		   ,@StateEn nvarchar(100) 
           ,@StateAr nvarchar(100) 
           ,@StateDescEn nvarchar(2000) 
           ,@StateDescAr nvarchar(2000) 
           ,@Priority int 
           ,@Active bit 
           ,@System_Who_Add bigint 
           ,@System_LastAction_IP nvarchar(50)
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [States] WHERE (StateEn = @StateEn); 


	IF((@@ROWCOUNT <= 0)  AND (@StateID <= 0))
	BEGIN

	INSERT  INTO [States]
           ([StateEn]
           ,[StateAr]
           ,[StateDescEn]
           ,[StateDescAr]
           ,[Priority]
           ,[Active]
           ,[System_Who_Add]
           ,[System_Add_Date]           
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           (@StateEn 
           ,@StateAr 
           ,@StateDescEn 
           ,@StateDescAr 
           ,@Priority   
           ,@Active   
           ,@System_Who_Add
           ,GETDATE()
           ,0
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

	UPDATE [States]
           SET [StateEn] = @StateEn
           ,[StateAr] = @StateAr
           ,[StateDescEn] = @StateDescEn
           ,[StateDescAr] = @StateDescAr
           ,[Priority] = @Priority
           ,[Active] = @Active
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE StateID = @StateID
	

	END


END



















GO
/****** Object:  StoredProcedure [dbo].[States_DeleteOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[States_DeleteOne]
			@StateID int
AS
BEGIN
	
	SET NOCOUNT ON;

	
	Update [States] SET
	System_Delete_Status = 1, System_Delete_Date = GetDATE() 
	WHERE StateID = @StateID


END

















GO
/****** Object:  StoredProcedure [dbo].[States_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[States_GetNames]
			
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SELECT StateID, StateEn, StateAr FROM [States] 
	WHERE System_Delete_Status = 0 AND Active = 1


END


















GO
/****** Object:  StoredProcedure [dbo].[States_GetOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[States_GetOne]
			@StateID int
AS
BEGIN
	
	SET NOCOUNT ON;

	
	SELECT  * FROM [States] 
	WHERE StateID = @StateID


END
















GO
/****** Object:  StoredProcedure [dbo].[Status_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Status_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT StatusID, StatusEn, StatusAr FROM [CarsStatus]
    WHERE Active = 1 
	
END












GO
/****** Object:  StoredProcedure [dbo].[Stores_AddEdit]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Stores_AddEdit]
			@StoreID bigint
			,@StoreName nvarchar(100)
           ,@StoreEmail nvarchar(100)
           ,@StorePhone nvarchar(100)
           ,@StoreAddress nvarchar(500)
           ,@StoreDesc nvarchar(2000)
           ,@Priority int
           ,@Active bit
           ,@System_Who_Add bigint
           ,@System_LastAction_IP nvarchar(50)
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [Stores] WHERE (StoreName = @StoreName);

	IF((@@ROWCOUNT <= 0)  AND (@StoreID <= 0))
	BEGIN

INSERT INTO [Stores]
           ([StoreName]
           ,[StoreEmail]
           ,[StorePhone]
           ,[StoreAddress]
           ,[StoreDesc]
           ,[Priority]
           ,[Active]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           ( @StoreName 
           ,@StoreEmail 
           ,@StorePhone 
           ,@StoreAddress 
           ,@StoreDesc 
           ,@Priority
           ,@Active 
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

UPDATE [Stores]
           SET [StoreName] = @StoreName
           ,[StoreEmail] = @StoreEmail
           ,[StorePhone] = @StorePhone
           ,[StoreAddress] = @StoreAddress
           ,[StoreDesc] = @StoreDesc
           ,[Priority] = @Priority
           ,[Active] = @Active
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE StoreID = @StoreID
	

	END


END




















GO
/****** Object:  StoredProcedure [dbo].[Stores_DeleteOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Stores_DeleteOne]
			@StoreID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	UPDATE [Stores]
	SET System_Delete_Date = GETDATE(), System_Delete_Status = 1
    WHERE StoreID = @StoreID
	
END















GO
/****** Object:  StoredProcedure [dbo].[Stores_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Stores_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT StoreID, StoreName FROM [Stores]
    WHERE Active = 1 AND System_Delete_Status = 0
	
END















GO
/****** Object:  StoredProcedure [dbo].[Stores_GetOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Stores_GetOne]
			@StoreID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [Stores]
    WHERE StoreID = @StoreID
	
END










GO
/****** Object:  StoredProcedure [dbo].[TowingCompanies_AddEdit]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[TowingCompanies_AddEdit]
			@TowingCompanyID bigint
			,@TowingCompanyName nvarchar(100)
           ,@TowingCompanyEmail nvarchar(100)
           ,@TowingCompanyPhone nvarchar(100)
           ,@TowingCompanyAddress nvarchar(500)
           ,@TowingCompanyDesc nvarchar(2000)
           ,@Priority int
           ,@Active bit, @OpeningBalance money
           ,@System_Who_Add bigint
           --,@System_Add_Date datetime
           --,@System_Modify_Date datetime
           --,@System_Delete_Status bit
           --,@System_Who_Delete bigint
           --,@System_Delete_Date datetime
           ,@System_LastAction_IP nvarchar(50)
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [TowingCompanies] WHERE (TowingCompanyName = @TowingCompanyName);

	IF((@@ROWCOUNT <= 0)  AND (@TowingCompanyID <= 0))
	BEGIN

INSERT INTO [TowingCompanies]
           ([TowingCompanyName]
           ,[TowingCompanyEmail]
           ,[TowingCompanyPhone]
           ,[TowingCompanyAddress]
           ,[TowingCompanyDesc]
           ,[Priority]
           ,[Active], [OpeningBalance]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           ( @TowingCompanyName 
           ,@TowingCompanyEmail 
           ,@TowingCompanyPhone 
           ,@TowingCompanyAddress 
           ,@TowingCompanyDesc 
           ,@Priority
           ,1, @OpeningBalance 
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

UPDATE [TowingCompanies]
           SET [TowingCompanyName] = @TowingCompanyName
           ,[TowingCompanyEmail] = @TowingCompanyEmail
           ,[TowingCompanyPhone] = @TowingCompanyPhone
           ,[TowingCompanyAddress] = @TowingCompanyAddress
           ,[TowingCompanyDesc] = @TowingCompanyDesc
           ,[Priority] = @Priority
           ,[Active] = 1, [OpeningBalance] = @OpeningBalance
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE TowingCompanyID = @TowingCompanyID
	

	END


END




















GO
/****** Object:  StoredProcedure [dbo].[TowingCompanies_DeleteOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[TowingCompanies_DeleteOne]
			@TowingCompanyID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

--	UPDATE [TowingCompanies]
--	SET System_Delete_Date = GETDATE(), System_Delete_Status = 1
--    WHERE TowingCompanyID = @TowingCompanyID
	
END














GO
/****** Object:  StoredProcedure [dbo].[TowingCompanies_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[TowingCompanies_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT TowingCompanyID, TowingCompanyName FROM [TowingCompanies]
    WHERE Active = 1 AND System_Delete_Status = 0
	
END













GO
/****** Object:  StoredProcedure [dbo].[TowingCompanies_GetOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[TowingCompanies_GetOne]
			@TowingCompanyID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [TowingCompanies]
    WHERE TowingCompanyID = @TowingCompanyID
	
END












GO
/****** Object:  StoredProcedure [dbo].[Transmissions_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Transmissions_GetNames]
				
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT TransmissionID, TransmissionNameEn, TransmissionNameAr 
	FROM   Transmissions
	WHERE Active = 1 AND System_Delete_Status = 0

END












GO
/****** Object:  StoredProcedure [dbo].[TransportCompanies_AddEdit]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[TransportCompanies_AddEdit]
			@TransportID bigint
			,@TransportName nvarchar(100)
           ,@TransportEmail nvarchar(100)
           ,@TransportPhone nvarchar(100)
           ,@TransportAddress nvarchar(500)
           ,@TransportDesc nvarchar(2000)
           ,@Priority int
           ,@Active bit, @OpeningBalance money
           ,@System_Who_Add bigint
           --,@System_Add_Date datetime
           --,@System_Modify_Date datetime
           --,@System_Delete_Status bit
           --,@System_Who_Delete bigint
           --,@System_Delete_Date datetime
           ,@System_LastAction_IP nvarchar(50)
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [TransportCompanies] WHERE (TransportName = @TransportName);

	IF((@@ROWCOUNT <= 0)  AND (@TransportID <= 0))
	BEGIN

INSERT INTO [TransportCompanies]
           ([TransportName]
           ,[TransportEmail]
           ,[TransportPhone]
           ,[TransportAddress]
           ,[TransportDesc]
           ,[Priority]
           ,[Active], [OpeningBalance]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           ( @TransportName 
           ,@TransportEmail 
           ,@TransportPhone 
           ,@TransportAddress 
           ,@TransportDesc 
           ,@Priority
           ,1, @OpeningBalance 
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

UPDATE [TransportCompanies]
           SET [TransportName] = @TransportName
           ,[TransportEmail] = @TransportEmail
           ,[TransportPhone] = @TransportPhone
           ,[TransportAddress] = @TransportAddress
           ,[TransportDesc] = @TransportDesc
           ,[Priority] = @Priority
           ,[Active] = 1, [OpeningBalance] = @OpeningBalance
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE TransportID = @TransportID
	

	END


END



















GO
/****** Object:  StoredProcedure [dbo].[TransportCompanies_DeleteOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[TransportCompanies_DeleteOne]
			@TransportID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

--	UPDATE [TransportCompanies]
--	SET System_Delete_Date = GETDATE(), System_Delete_Status = 1
--    WHERE TransportID = @TransportID
	
END















GO
/****** Object:  StoredProcedure [dbo].[TransportCompanies_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[TransportCompanies_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT TransportID, TransportName FROM [TransportCompanies]
    WHERE Active = 1 AND System_Delete_Status = 0
	
END














GO
/****** Object:  StoredProcedure [dbo].[TransportCompanies_GetOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[TransportCompanies_GetOne]
			@TransportID int
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [TransportCompanies]
    WHERE TransportID = @TransportID
	
END










GO
/****** Object:  StoredProcedure [dbo].[Tundra_Cars]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO









-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <17-04-2010>
-- Description:	<get cars list>
-- =============================================
CREATE PROCEDURE [dbo].[Tundra_Cars]
AS
BEGIN	
	SET NOCOUNT ON;
	-- cars
	SELECT     MarkerNameAr, TypeNameAr, StatusAr, ColorNameAr, ExtColorAr, CapacityNameAr, WorkingStatusNameAr, DriveNameAr, EngineNameAr, CarStyleNameAr, 
                      YearNameEn, TransmissionNameAr, CarID, car_code, mileage, main_picture, chassis_no, lot_no, engine_no, car_options, WorkingStatus_ID,
                      car_remarks, sale_price, visitors
	FROM         View_CarInformation
	-- images
	SELECT     Pictures.MasterID, Pictures.URL 
	FROM         Pictures INNER JOIN
						  CarsData ON Pictures.MasterID = CarsData.CarID
	WHERE     (Pictures.CategoryType = 'cars') AND (Pictures.MainImage =0 OR Pictures.MainImage IS NULL)
END

GO
/****** Object:  StoredProcedure [dbo].[Workshops_AddEdit]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Workshops_AddEdit]
			@WorkshopID bigint
			,@WorkshopName nvarchar(100)
           ,@WorkshopEmail nvarchar(100)
           ,@WorkshopPhone nvarchar(100)
           ,@WorkshopAddress nvarchar(500)
           ,@WorkshopDesc nvarchar(2000)
           ,@Priority int, @OpeningBalance money
           ,@Active bit
           ,@System_Who_Add bigint
           --,@System_Add_Date datetime
           --,@System_Modify_Date datetime
           --,@System_Delete_Status bit
           --,@System_Who_Delete bigint
           --,@System_Delete_Date datetime
           ,@System_LastAction_IP nvarchar(50)
	
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [Workshops] WHERE (WorkshopName = @WorkshopName);


	IF((@@ROWCOUNT <= 0)  AND (@WorkshopID <= 0))
	BEGIN

	INSERT INTO [Workshops]
           ([WorkshopName]
           ,[WorkshopEmail]
           ,[WorkshopPhone]
           ,[WorkshopAddress]
           ,[WorkshopDesc]
           ,[Priority], [OpeningBalance]
           ,[Active]
           ,[System_Who_Add]
           ,[System_Add_Date]
           ,[System_Delete_Status]
           ,[System_LastAction_IP])
     VALUES
           (@WorkshopName 
           ,@WorkshopEmail 
           ,@WorkshopPhone 
           ,@WorkshopAddress 
           ,@WorkshopDesc 
           ,@Priority, @OpeningBalance
           ,@Active 
           ,@System_Who_Add
           ,GETDATE()
           ,0 -- not deleted
           ,@System_LastAction_IP )

	END
	ELSE
	BEGIN

UPDATE [Workshops]
           SET [WorkshopName] = @WorkshopName
           ,[WorkshopEmail] = @WorkshopEmail
           ,[WorkshopPhone] = @WorkshopPhone
           ,[WorkshopAddress] = @WorkshopAddress
           ,[WorkshopDesc] = @WorkshopDesc
           ,[Priority] = @Priority, [OpeningBalance] = @OpeningBalance
           ,[Active] = @Active
           ,[System_Modify_Date] = GETDATE()
           ,[System_Delete_Status] = 0
           ,[System_LastAction_IP] = @System_LastAction_IP
     WHERE WorkshopID = @WorkshopID
	

	END


END

















GO
/****** Object:  StoredProcedure [dbo].[Workshops_DeleteOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Workshops_DeleteOne]
			@WorkshopID bigint
	
AS
BEGIN
	
	SET NOCOUNT ON;

--	Update [Workshops]
--	SET System_Delete_Date = GETDATE(), System_Delete_Status = 1
--    WHERE WorkshopID = @WorkshopID
	
END














GO
/****** Object:  StoredProcedure [dbo].[Workshops_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Workshops_GetNames]
			
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT WorkshopID, WorkshopName FROM [Workshops]
    WHERE Active = 1 AND System_Delete_Status = 0
	
END













GO
/****** Object:  StoredProcedure [dbo].[Workshops_GetOne]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Workshops_GetOne]
			@WorkshopID bigint
	
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT  * FROM [Workshops]
    WHERE WorkshopID = @WorkshopID
	
END









GO
/****** Object:  StoredProcedure [dbo].[Years_GetNames]    Script Date: 1/25/2018 5:26:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:		<Mohamed Salah Abdullah>
-- ALTER date: <.........>
-- Description:	<.........>
-- =============================================
CREATE PROCEDURE [dbo].[Years_GetNames]
				
AS
BEGIN	
	SET NOCOUNT ON;
	SELECT YearID, YearNameEn 
	FROM   Years ORDER BY YearID DESC
END













GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[55] 4[31] 2[3] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Auctions"
            Begin Extent = 
               Top = 5
               Left = 249
               Bottom = 124
               Right = 447
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarsMarker"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 245
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarsData"
            Begin Extent = 
               Top = 6
               Left = 510
               Bottom = 125
               Right = 708
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarsModel"
            Begin Extent = 
               Top = 126
               Left = 274
               Bottom = 245
               Right = 472
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarsStatus"
            Begin Extent = 
               Top = 126
               Left = 510
               Bottom = 245
               Right = 708
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "WorkingStatus"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Buyers"
            Begin Extent = 
               Top = 5
               Left = 835
               Bottom = 124
               Right = 1033
            End
            Display' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'Flags = 280
            TopColumn = 0
         End
         Begin Table = "View_ClientInvoicesTemp"
            Begin Extent = 
               Top = 126
               Left = 746
               Bottom = 230
               Right = 906
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Stores"
            Begin Extent = 
               Top = 234
               Left = 746
               Bottom = 353
               Right = 944
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TowingCompanies"
            Begin Extent = 
               Top = 246
               Left = 38
               Bottom = 365
               Right = 245
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Transmissions"
            Begin Extent = 
               Top = 246
               Left = 283
               Bottom = 365
               Right = 481
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Years"
            Begin Extent = 
               Top = 246
               Left = 519
               Bottom = 365
               Right = 717
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Workshops"
            Begin Extent = 
               Top = 354
               Left = 755
               Bottom = 473
               Right = 953
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "States"
            Begin Extent = 
               Top = 366
               Left = 38
               Bottom = 485
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Regions"
            Begin Extent = 
               Top = 366
               Left = 274
               Bottom = 485
               Right = 472
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Styles"
            Begin Extent = 
               Top = 366
               Left = 510
               Bottom = 485
               Right = 708
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ships"
            Begin Extent = 
               Top = 474
               Left = 746
               Bottom = 593
               Right = 944
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ShippingCompanies"
            Begin Extent = 
               Top = 486
               Left = 38
               Bottom = 605
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Engines"
            Begin Extent = 
               Top = 486
               Left = 274
               Bottom = 605
               Right = 472
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Drives"
            Begin Extent = 
               Top = 486
               Left = 510
               Bottom = 605
               Right = 708
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PortShipping"
            Begin Extent = 
               Top = 594
               Left = 746
               Bottom = 713
               Right = 944
            End
            DisplayFlags = 280
            TopCol' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane3', @value=N'umn = 0
         End
         Begin Table = "Capacities"
            Begin Extent = 
               Top = 606
               Left = 38
               Bottom = 725
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Colors_1"
            Begin Extent = 
               Top = 606
               Left = 274
               Bottom = 725
               Right = 472
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Colors"
            Begin Extent = 
               Top = 606
               Left = 510
               Bottom = 725
               Right = 708
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 114
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 14490
         Alias = 2835
         Table = 2235
         Output = ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane4', @value=N'720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=4 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[56] 4[12] 2[6] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -192
         Left = 0
      End
      Begin Tables = 
         Begin Table = "WorkingStatus"
            Begin Extent = 
               Top = 27
               Left = 523
               Bottom = 146
               Right = 721
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Auctions"
            Begin Extent = 
               Top = 3
               Left = 34
               Bottom = 122
               Right = 232
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarsData"
            Begin Extent = 
               Top = 54
               Left = 253
               Bottom = 418
               Right = 462
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Buyers"
            Begin Extent = 
               Top = 6
               Left = 510
               Bottom = 125
               Right = 708
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarsMarker"
            Begin Extent = 
               Top = 66
               Left = 18
               Bottom = 185
               Right = 216
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarsModel"
            Begin Extent = 
               Top = 10
               Left = 272
               Bottom = 129
               Right = 470
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarsStatus"
            Begin Extent = 
               Top = 66
               Left = 510
               Bottom = 185
               Right = 708
            End
            Displa' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation.temp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'yFlags = 280
            TopColumn = 0
         End
         Begin Table = "View_ClientInvoicesTemp"
            Begin Extent = 
               Top = 0
               Left = 500
               Bottom = 165
               Right = 685
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Stores"
            Begin Extent = 
               Top = 486
               Left = 589
               Bottom = 605
               Right = 787
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TowingCompanies"
            Begin Extent = 
               Top = 241
               Left = 631
               Bottom = 360
               Right = 838
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Transmissions"
            Begin Extent = 
               Top = 478
               Left = 41
               Bottom = 597
               Right = 239
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Years"
            Begin Extent = 
               Top = 403
               Left = 0
               Bottom = 522
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Workshops"
            Begin Extent = 
               Top = 204
               Left = 0
               Bottom = 323
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "States"
            Begin Extent = 
               Top = 296
               Left = 0
               Bottom = 415
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Regions"
            Begin Extent = 
               Top = 454
               Left = 479
               Bottom = 573
               Right = 677
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Styles"
            Begin Extent = 
               Top = 221
               Left = 747
               Bottom = 340
               Right = 945
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ships"
            Begin Extent = 
               Top = 374
               Left = 772
               Bottom = 493
               Right = 970
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ShippingCompanies"
            Begin Extent = 
               Top = 195
               Left = 735
               Bottom = 314
               Right = 933
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Engines"
            Begin Extent = 
               Top = 136
               Left = 730
               Bottom = 255
               Right = 928
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "Drives"
            Begin Extent = 
               Top = 64
               Left = 732
               Bottom = 183
               Right = 930
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "PortShipping"
            Begin Extent = 
               Top = 242
               Left = 513
               Bottom = 361
               Right = 711
            End
            DisplayFlags = 280
            TopColumn = ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation.temp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane3', @value=N'0
         End
         Begin Table = "Capacities"
            Begin Extent = 
               Top = 0
               Left = 729
               Bottom = 119
               Right = 927
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Colors_1"
            Begin Extent = 
               Top = 194
               Left = 7
               Bottom = 392
               Right = 205
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Colors"
            Begin Extent = 
               Top = 144
               Left = 12
               Bottom = 263
               Right = 210
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 72
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2805
         Alias = 1665
         Table = 3120
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation.temp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=3 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarInformation.temp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[9] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CarsData"
            Begin Extent = 
               Top = 14
               Left = 660
               Bottom = 229
               Right = 858
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarsMarker"
            Begin Extent = 
               Top = 7
               Left = 28
               Bottom = 194
               Right = 226
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarsModel"
            Begin Extent = 
               Top = 38
               Left = 327
               Bottom = 229
               Right = 525
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarMakerMode.temp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarMakerMode.temp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[38] 4[6] 2[26] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CarInvoices"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 207
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Clients"
            Begin Extent = 
               Top = 6
               Left = 481
               Bottom = 125
               Right = 679
            End
            DisplayFlags = 280
            TopColumn = 12
         End
         Begin Table = "Currencies"
            Begin Extent = 
               Top = 6
               Left = 717
               Bottom = 125
               Right = 915
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SiteCompanies"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 245
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "View_CarInformation"
            Begin Extent = 
               Top = 86
               Left = 275
               Bottom = 306
               Right = 473
            End
            DisplayFlags = 280
            TopColumn = 99
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 47
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2145
         Width = 2100
         Width = 1500
         Width = 1500
         Width = 1500
         Width' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarSalesInvoices'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarSalesInvoices'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_CarSalesInvoices'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Clients"
            Begin Extent = 
               Top = 6
               Left = 274
               Bottom = 175
               Right = 472
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarInvoices"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 160
               Right = 207
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientInvoicesTemp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientInvoicesTemp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4[30] 2[40] 3) )"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 3
   End
   Begin DiagramPane = 
      PaneHidden = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 25
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 5
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientPayments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientPayments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[18] 4[38] 2[11] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ClientPayments"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 232
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Clients"
            Begin Extent = 
               Top = 11
               Left = 287
               Bottom = 130
               Right = 485
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Currencies"
            Begin Extent = 
               Top = 53
               Left = 606
               Bottom = 172
               Right = 804
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExchangeCompanies"
            Begin Extent = 
               Top = 0
               Left = 520
               Bottom = 156
               Right = 740
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 23
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientPayments.temp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'Begin ColumnWidths = 11
         Column = 1980
         Alias = 3360
         Table = 2445
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientPayments.temp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ClientPayments.temp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[43] 4[14] 2[8] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Currencies"
            Begin Extent = 
               Top = 107
               Left = 741
               Bottom = 226
               Right = 939
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarExpenses"
            Begin Extent = 
               Top = 15
               Left = 520
               Bottom = 134
               Right = 691
            End
            DisplayFlags = 280
            TopColumn = 13
         End
         Begin Table = "Buyers"
            Begin Extent = 
               Top = 102
               Left = 112
               Bottom = 221
               Right = 310
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "Stores"
            Begin Extent = 
               Top = 160
               Left = 502
               Bottom = 279
               Right = 700
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExchangeCompanies"
            Begin Extent = 
               Top = 121
               Left = 261
               Bottom = 240
               Right = 481
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "CarsData"
            Begin Extent = 
               Top = 0
               Left = 848
               Bottom = 165
               Right = 1046
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExpenseTypes"
            Begin Extent = 
               Top = 0
               Left = 153
               Bottom = 119
               Right = 351
            End
       ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesBuyers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'     DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 29
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2130
         Alias = 2775
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesBuyers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesBuyers'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Currencies"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "CarExpenses"
            Begin Extent = 
               Top = 6
               Left = 274
               Bottom = 125
               Right = 472
            End
            DisplayFlags = 280
            TopColumn = 13
         End
         Begin Table = "ClearanceCompanies"
            Begin Extent = 
               Top = 96
               Left = 559
               Bottom = 215
               Right = 757
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "Stores"
            Begin Extent = 
               Top = 126
               Left = 795
               Bottom = 245
               Right = 993
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExchangeCompanies"
            Begin Extent = 
               Top = 6
               Left = 746
               Bottom = 125
               Right = 966
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExpenseTypes"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 245
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "CarsData"
            Begin Extent = 
               Top = 126
               Left = 274
               Bottom = 245
               Right = 472
            End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesClearances'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2130
         Alias = 1920
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesClearances'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesClearances'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4[31] 2[47] 3) )"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 3
   End
   Begin DiagramPane = 
      PaneHidden = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 33
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 5
         Column = 3030
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[48] 4[13] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Currencies"
            Begin Extent = 
               Top = 6
               Left = 483
               Bottom = 125
               Right = 681
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "CarExpenses"
            Begin Extent = 
               Top = 24
               Left = 282
               Bottom = 169
               Right = 453
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "ShippingCompanies"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 245
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 6
         End
         Begin Table = "Stores"
            Begin Extent = 
               Top = 189
               Left = 271
               Bottom = 308
               Right = 469
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExchangeCompanies"
            Begin Extent = 
               Top = 227
               Left = 372
               Bottom = 346
               Right = 592
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExpenseTypes"
            Begin Extent = 
               Top = 72
               Left = 692
               Bottom = 191
               Right = 890
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "CarsData"
            Begin Extent = 
               Top = 1
               Left = 21
               Bottom = 120
               Right = 219
            End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesShipping'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 29
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2250
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesShipping'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesShipping'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Currencies"
            Begin Extent = 
               Top = 6
               Left = 483
               Bottom = 125
               Right = 681
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarExpenses"
            Begin Extent = 
               Top = 78
               Left = 286
               Bottom = 198
               Right = 457
            End
            DisplayFlags = 280
            TopColumn = 13
         End
         Begin Table = "TowingCompanies"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 245
               Right = 245
            End
            DisplayFlags = 280
            TopColumn = 7
         End
         Begin Table = "Stores"
            Begin Extent = 
               Top = 198
               Left = 283
               Bottom = 317
               Right = 481
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExchangeCompanies"
            Begin Extent = 
               Top = 93
               Left = 739
               Bottom = 212
               Right = 959
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExpenseTypes"
            Begin Extent = 
               Top = 91
               Left = 541
               Bottom = 210
               Right = 739
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "CarsData"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 236
            End
  ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesTowing'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'          DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 36
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2775
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesTowing'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesTowing'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[44] 4[20] 2[11] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Currencies"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarExpenses"
            Begin Extent = 
               Top = 15
               Left = 339
               Bottom = 134
               Right = 537
            End
            DisplayFlags = 280
            TopColumn = 14
         End
         Begin Table = "Stores"
            Begin Extent = 
               Top = 165
               Left = 281
               Bottom = 284
               Right = 479
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TransportCompanies"
            Begin Extent = 
               Top = 97
               Left = 683
               Bottom = 216
               Right = 881
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExchangeCompanies"
            Begin Extent = 
               Top = 6
               Left = 746
               Bottom = 125
               Right = 966
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExpenseTypes"
            Begin Extent = 
               Top = 99
               Left = 31
               Bottom = 218
               Right = 229
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "CarsData"
            Begin Extent = 
               Top = 175
               Left = 406
               Bottom = 294
               Right = 604
            End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesTransports'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 4665
         Alias = 1785
         Table = 2040
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesTransports'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesTransports'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[29] 4[32] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Currencies"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "CarExpenses"
            Begin Extent = 
               Top = 6
               Left = 274
               Bottom = 125
               Right = 472
            End
            DisplayFlags = 280
            TopColumn = 12
         End
         Begin Table = "Workshops"
            Begin Extent = 
               Top = 36
               Left = 562
               Bottom = 155
               Right = 760
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "Stores"
            Begin Extent = 
               Top = 126
               Left = 798
               Bottom = 245
               Right = 996
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExchangeCompanies"
            Begin Extent = 
               Top = 6
               Left = 746
               Bottom = 125
               Right = 966
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ExpenseTypes"
            Begin Extent = 
               Top = 62
               Left = 41
               Bottom = 181
               Right = 239
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "CarsData"
            Begin Extent = 
               Top = 126
               Left = 274
               Bottom = 245
               Right = 472
            End
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesWorkshop'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'   DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2925
         Alias = 1725
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesWorkshop'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_ExpensesWorkshop'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[33] 4[28] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "CarInvoices"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 207
            End
            DisplayFlags = 280
            TopColumn = 3
         End
         Begin Table = "Clients"
            Begin Extent = 
               Top = 7
               Left = 266
               Bottom = 126
               Right = 464
            End
            DisplayFlags = 280
            TopColumn = 11
         End
         Begin Table = "Currencies"
            Begin Extent = 
               Top = 16
               Left = 504
               Bottom = 135
               Right = 702
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 28
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_FirstAmountsForClientPaymentsTemp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'= 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_FirstAmountsForClientPaymentsTemp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_FirstAmountsForClientPaymentsTemp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[45] 4[16] 2[15] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "View_CarSalesInvoices"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 258
               Right = 251
            End
            DisplayFlags = 280
            TopColumn = 25
         End
         Begin Table = "ClientInvoicesPayments"
            Begin Extent = 
               Top = 74
               Left = 348
               Bottom = 241
               Right = 562
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "View_ClientPayments"
            Begin Extent = 
               Top = 0
               Left = 670
               Bottom = 249
               Right = 878
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 16
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2055
         Width = 1785
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2295
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2070
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2565
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_InvoicesSubPayments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_InvoicesSubPayments'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "MainSafeDebitCredit"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tbl_admin_n"
            Begin Extent = 
               Top = 6
               Left = 274
               Bottom = 125
               Right = 436
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Stores"
            Begin Extent = 
               Top = 6
               Left = 474
               Bottom = 125
               Right = 672
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 17
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SafeValuesList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_SafeValuesList'
GO
USE [master]
GO
ALTER DATABASE [TundraUae] SET  READ_WRITE 
GO
