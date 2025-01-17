USE [NBN_QA_INI]
GO
/****** Object:  Table [Approval].[DeltaFunction]    Script Date: 12/10/2018 11:37:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Approval].[DeltaFunction](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BusinessEntityContainerID] [int] NOT NULL,
	[TypeId] [smallint] NULL,
	[Code] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_DeltaFunction] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UI_DeltaFunction_BEContainerID_TypeID] UNIQUE NONCLUSTERED 
(
	[BusinessEntityContainerID] ASC,
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Approval].[GridType]    Script Date: 12/10/2018 11:37:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Approval].[GridType](
	[ID] [smallint] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_GridType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Approval].[InternalPriceRequest]    Script Date: 12/10/2018 11:37:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Approval].[InternalPriceRequest](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TypeId] [smallint] NOT NULL,
	[StatusId] [smallint] NOT NULL,
	[Comment] [nvarchar](1000) NULL,
	[OldValue] [numeric](18, 6) NULL,
	[Delta] [numeric](18, 6) NOT NULL,
	[NewValue] [numeric](18, 6) NULL,
	[QD12] [numeric](38, 6) NULL,
	[ApprovedBy] [nvarchar](100) NULL,
	[ApprovedDelta] [numeric](18, 6) NULL,
	[ApprovedDate] [datetime] NULL,
	[BusinessEntityID] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[CatalogDetailsID] [bigint] NOT NULL,
	[CurrencyNumCode] [nvarchar](3) NOT NULL,
	[PriceTypeID] [int] NOT NULL,
	[Priority] [int] NOT NULL,
	[PriceCalculationId] [int] NOT NULL,
	[RefID] [bigint] NOT NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ProcessTime] [datetime2](7) NULL,
	[RejectComment] [nvarchar](1000) NULL,
 CONSTRAINT [PK_InternalPriceRequest] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Approval].[Status]    Script Date: 12/10/2018 11:37:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Approval].[Status](
	[ID] [smallint] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Approval].[ThresholdLevel]    Script Date: 12/10/2018 11:37:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Approval].[ThresholdLevel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TypeId] [smallint] NOT NULL,
	[FeatureId] [int] NOT NULL,
	[BusinessEntityID] [int] NOT NULL,
	[DeltaLowLimit] [numeric](18, 6) NOT NULL,
	[DeltaHighLimit] [numeric](18, 6) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[PriorityHighLimit] [decimal](18, 6) NULL,
 CONSTRAINT [PK_ThresholdLevel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Approval].[Type]    Script Date: 12/10/2018 11:37:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Approval].[Type](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Archive].[BillOfMaterial]    Script Date: 12/10/2018 11:37:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Archive].[BillOfMaterial](
	[ID] [bigint] NOT NULL,
	[ItemId] [int] NOT NULL,
	[ChildItemId] [int] NOT NULL,
	[Quantity] [numeric](18, 6) NULL,
	[IsExcluded] [bit] NOT NULL,
	[Comment] [nvarchar](100) NOT NULL,
	[ImageId] [int] NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL
) ON [Archive]
GO
/****** Object:  Table [Archive].[CalculationQueue]    Script Date: 12/10/2018 11:37:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Archive].[CalculationQueue](
	[ID] [int] NOT NULL,
	[TableName] [nvarchar](50) NOT NULL,
	[BusinessEntityID] [int] NULL,
	[GroupID] [int] NULL,
	[CalculateAll] [bit] NULL,
	[Status] [int] NULL,
	[AffectedIDs] [nvarchar](max) NULL,
	[AffectedColumns] [nvarchar](2000) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ProcessedDate] [datetime] NULL,
	[Output] [xml] NULL,
	[ChangeType] [int] NULL,
 CONSTRAINT [PK_CalculationQueue] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Archive]
) ON [Archive] TEXTIMAGE_ON [Archive]
GO
/****** Object:  Table [Archive].[ErrorLog]    Script Date: 12/10/2018 11:37:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Archive].[ErrorLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProcessName] [nvarchar](500) NULL,
	[ErrNumber] [int] NULL,
	[ErrState] [nvarchar](100) NULL,
	[ErrMsg] [nvarchar](max) NULL,
	[ErrLine] [int] NULL,
	[CreatedDate] [date] NOT NULL,
 CONSTRAINT [PK_ErrorLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Archive]
) ON [Archive] TEXTIMAGE_ON [Archive]
GO
/****** Object:  Table [Archive].[Factor]    Script Date: 12/10/2018 11:37:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Archive].[Factor](
	[ID] [int] NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[BusinessEntityStructureID] [int] NULL,
	[BusinessEntityStructureLevel] [int] NULL,
	[BusinessStructureID] [int] NULL,
	[BusinessStructureLevel] [int] NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Factor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Archive]
) ON [Archive]
GO
/****** Object:  Table [Archive].[FactorLeafValues]    Script Date: 12/10/2018 11:37:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Archive].[FactorLeafValues](
	[ID] [int] NOT NULL,
	[FactorID] [int] NOT NULL,
	[BusinessEntityID] [int] NULL,
	[GroupID] [int] NULL,
	[Value] [numeric](18, 4) NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL
) ON [Archive]
GO
/****** Object:  Table [Archive].[FactorValues]    Script Date: 12/10/2018 11:37:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Archive].[FactorValues](
	[ID] [int] NOT NULL,
	[FactorID] [int] NOT NULL,
	[BusinessEntityGroupID] [int] NULL,
	[GroupID] [int] NULL,
	[Value] [numeric](18, 4) NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL
) ON [Archive]
GO
/****** Object:  Table [Archive].[FutureGroupDetails]    Script Date: 12/10/2018 11:37:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Archive].[FutureGroupDetails](
	[ID] [int] NOT NULL,
	[GroupID] [int] NOT NULL,
	[ItemID] [int] NOT NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[TempBeId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_FutureGroupDetails] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Archive]
) ON [Archive]
GO
/****** Object:  Table [Archive].[InternalPrice]    Script Date: 12/10/2018 11:37:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Archive].[InternalPrice](
	[ID] [bigint] NOT NULL,
	[BusinessEntityID] [int] NOT NULL,
	[CatalogDetailsID] [bigint] NOT NULL,
	[CurrencyNumCode] [nvarchar](3) NOT NULL,
	[PriceTypeID] [int] NOT NULL,
	[Value] [numeric](18, 6) NULL,
	[Priority] [int] NOT NULL,
	[PriceCalculationId] [int] NOT NULL,
	[RefID] [bigint] NOT NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ProcessTime] [datetime2](7) NULL,
 CONSTRAINT [PK_InternalPrice_new] PRIMARY KEY CLUSTERED 
(
	[CatalogDetailsID] ASC,
	[ValidFrom] ASC,
	[BusinessEntityID] ASC,
	[PriceTypeID] ASC,
	[Priority] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Archive]
) ON [Archive]
GO
/****** Object:  Table [Archive].[InternalPrice_Rejected]    Script Date: 12/10/2018 11:37:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Archive].[InternalPrice_Rejected](
	[ID] [bigint] NOT NULL,
	[BusinessEntityID] [int] NOT NULL,
	[CatalogDetailsID] [bigint] NOT NULL,
	[CurrencyNumCode] [nvarchar](3) NOT NULL,
	[PriceTypeID] [int] NOT NULL,
	[Value] [numeric](18, 6) NULL,
	[Priority] [int] NOT NULL,
	[PriceCalculationId] [int] NOT NULL,
	[RefID] [bigint] NOT NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ProcessTime] [datetime2](7) NULL
) ON [Archive]
GO
/****** Object:  Table [Archive].[InternalPriceRequest]    Script Date: 12/10/2018 11:37:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Archive].[InternalPriceRequest](
	[ID] [bigint] NOT NULL,
	[TypeId] [smallint] NOT NULL,
	[StatusId] [smallint] NOT NULL,
	[Comment] [nvarchar](1000) NULL,
	[OldValue] [numeric](18, 6) NULL,
	[Delta] [numeric](18, 6) NOT NULL,
	[NewValue] [numeric](18, 6) NULL,
	[QD12] [numeric](38, 6) NULL,
	[ApprovedBy] [nvarchar](100) NULL,
	[ApprovedDelta] [numeric](18, 6) NULL,
	[ApprovedDate] [datetime] NULL,
	[BusinessEntityID] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[CatalogDetailsID] [bigint] NOT NULL,
	[CurrencyNumCode] [nvarchar](3) NOT NULL,
	[PriceTypeID] [int] NOT NULL,
	[Priority] [int] NOT NULL,
	[PriceCalculationId] [int] NOT NULL,
	[RefID] [bigint] NOT NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ProcessTime] [datetime2](7) NULL,
	[RejectComment] [nvarchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Archive].[ItemLocalProperty]    Script Date: 12/10/2018 11:37:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Archive].[ItemLocalProperty](
	[ID] [bigint] NOT NULL,
	[ItemId] [int] NOT NULL,
	[BusinessEntityID] [int] NOT NULL,
	[ItemLocalPropertyTypeId] [int] NOT NULL,
	[Value] [nvarchar](1000) NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ValueNum] [decimal](18, 6) NULL,
 CONSTRAINT [PK_ItemLocalProperty] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC,
	[BusinessEntityID] ASC,
	[ItemLocalPropertyTypeId] ASC,
	[ValidFrom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Archive]
) ON [Archive]
GO
/****** Object:  Table [Archive].[ProcessLog]    Script Date: 12/10/2018 11:37:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Archive].[ProcessLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProcessName] [nvarchar](500) NULL,
	[ProcessingDate] [date] NULL,
	[ArchivedRows] [int] NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[CreatedDate] [date] NOT NULL,
 CONSTRAINT [PK_ProcessLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Archive]
) ON [Archive]
GO
/****** Object:  Table [Archive].[ProcessStatus]    Script Date: 12/10/2018 11:37:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Archive].[ProcessStatus](
	[Identifier] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[ErrorLog] [nvarchar](1000) NULL,
	[ProcessInitiator] [nvarchar](500) NULL,
	[Context] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProcessStatus] PRIMARY KEY CLUSTERED 
(
	[Identifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Archive]
) ON [Archive] TEXTIMAGE_ON [Archive]
GO
/****** Object:  Table [Archive].[Replacement]    Script Date: 12/10/2018 11:37:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Archive].[Replacement](
	[ID] [bigint] NOT NULL,
	[ItemId] [int] NOT NULL,
	[ItemReplacedById] [int] NOT NULL,
	[Quantity] [numeric](18, 6) NULL,
	[Comment] [nvarchar](500) NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Replacement_new] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Archive]
) ON [Archive]
GO
/****** Object:  Table [Archive].[WebApiProcess]    Script Date: 12/10/2018 11:37:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Archive].[WebApiProcess](
	[Identifier] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[StatusId] [int] NOT NULL,
	[ErrorLog] [nvarchar](1000) NULL,
	[ProcessInitiator] [nvarchar](500) NULL,
	[Context] [nvarchar](max) NULL,
 CONSTRAINT [PK_WebApiProcess] PRIMARY KEY CLUSTERED 
(
	[Identifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Competitor].[AdditionalPrice]    Script Date: 12/10/2018 11:37:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Competitor].[AdditionalPrice](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CompetitorPriceId] [bigint] NOT NULL,
	[AdditionalPriceTypeId] [int] NOT NULL,
	[Value] [decimal](18, 6) NULL,
	[CurrencyNumCode] [nvarchar](3) NULL,
	[AdditionalPriceTextProperty1] [nvarchar](100) SPARSE  NULL,
	[AdditionalPriceTextProperty2] [nvarchar](100) SPARSE  NULL,
	[AdditionalPriceTextProperty3] [nvarchar](100) SPARSE  NULL,
	[AdditionalPriceTextProperty4] [nvarchar](100) SPARSE  NULL,
	[AdditionalPriceTextProperty5] [nvarchar](100) SPARSE  NULL,
	[AdditionalPriceTextProperty6] [nvarchar](100) SPARSE  NULL,
	[AdditionalPriceTextProperty7] [nvarchar](100) SPARSE  NULL,
	[AdditionalPriceTextProperty8] [nvarchar](100) SPARSE  NULL,
	[AdditionalPriceTextProperty9] [nvarchar](100) SPARSE  NULL,
	[AdditionalPriceTextProperty10] [nvarchar](100) SPARSE  NULL,
	[AdditionalPriceNumericProperty1] [decimal](18, 6) SPARSE  NULL,
	[AdditionalPriceNumericProperty2] [decimal](18, 6) SPARSE  NULL,
	[AdditionalPriceNumericProperty3] [decimal](18, 6) SPARSE  NULL,
	[AdditionalPriceNumericProperty4] [decimal](18, 6) SPARSE  NULL,
	[AdditionalPriceNumericProperty5] [decimal](18, 6) SPARSE  NULL,
	[AdditionalPriceNumericProperty6] [decimal](18, 6) SPARSE  NULL,
	[AdditionalPriceNumericProperty7] [decimal](18, 6) SPARSE  NULL,
	[AdditionalPriceNumericProperty8] [decimal](18, 6) SPARSE  NULL,
	[AdditionalPriceNumericProperty9] [decimal](18, 6) SPARSE  NULL,
	[AdditionalPriceNumericProperty10] [decimal](18, 6) SPARSE  NULL,
 CONSTRAINT [PK_AdditionalPrice] PRIMARY KEY CLUSTERED 
(
	[CompetitorPriceId] ASC,
	[AdditionalPriceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Competitor].[AdditionalPriceType]    Script Date: 12/10/2018 11:37:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Competitor].[AdditionalPriceType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_AdditionalPriceType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UQ_AdditionalPriceType_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Competitor].[BusinessEntityList]    Script Date: 12/10/2018 11:37:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Competitor].[BusinessEntityList](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[PriceId] [bigint] NOT NULL,
	[BusinessEntityId] [int] NOT NULL,
	[isLeadingCompetitor] [bit] NULL,
	[isManuallySet] [bit] NULL,
	[isIncluded] [bit] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_BusinessEntityList_1] PRIMARY KEY CLUSTERED 
(
	[PriceId] ASC,
	[BusinessEntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Competitor].[Competitor]    Script Date: 12/10/2018 11:37:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Competitor].[Competitor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[ShortName] [nvarchar](50) NULL,
	[Code] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[Comment] [nvarchar](500) NULL,
	[CompetitorTypeID] [int] NOT NULL,
	[Website] [nvarchar](200) NULL,
	[Address] [nvarchar](500) NULL,
	[CountryID] [int] NULL,
	[MarketScope] [nvarchar](100) NULL,
	[BusinessScope] [nvarchar](100) NULL,
	[DistributionModelID] [int] NULL,
	[ShowInList] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Competitor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_CompetitorCode] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Competitor].[CompetitorProperty]    Script Date: 12/10/2018 11:37:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Competitor].[CompetitorProperty](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CompetitorId] [int] NOT NULL,
	[CompetitorPropertyTypeId] [int] NOT NULL,
	[Period] [nvarchar](50) NOT NULL,
	[Value] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_CompetitorProperty] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Competitor].[CompetitorPropertyType]    Script Date: 12/10/2018 11:37:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Competitor].[CompetitorPropertyType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_CompetitorPropertyType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Competitor].[CompetitorReference]    Script Date: 12/10/2018 11:37:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Competitor].[CompetitorReference](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CompetitorId] [int] NOT NULL,
	[CompetitorReferenceTypeId] [int] NOT NULL,
	[Reference] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_CompetitorReference] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Competitor].[CompetitorReferenceType]    Script Date: 12/10/2018 11:37:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Competitor].[CompetitorReferenceType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_CompetitorReferenceType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Competitor].[CompetitorType]    Script Date: 12/10/2018 11:37:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Competitor].[CompetitorType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_CompetitorType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Competitor].[DistributionModel]    Script Date: 12/10/2018 11:37:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Competitor].[DistributionModel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_DistributionModel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Competitor].[GlobalWeighting]    Script Date: 12/10/2018 11:37:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Competitor].[GlobalWeighting](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CompetitorId] [int] NOT NULL,
	[Value] [decimal](18, 6) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_GlobalWeighting] PRIMARY KEY CLUSTERED 
(
	[CompetitorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Competitor].[LastAggregation]    Script Date: 12/10/2018 11:37:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Competitor].[LastAggregation](
	[LastAggregationDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Competitor].[LeadingPriorityList]    Script Date: 12/10/2018 11:37:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Competitor].[LeadingPriorityList](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Groupid] [int] NOT NULL,
	[BusinessEntityId] [int] NOT NULL,
	[CompetitorId] [int] NOT NULL,
	[Priority] [int] NOT NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_LeadingPriorityList] PRIMARY KEY CLUSTERED 
(
	[Groupid] ASC,
	[BusinessEntityId] ASC,
	[CompetitorId] ASC,
	[ValidFrom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Competitor].[Price]    Script Date: 12/10/2018 11:37:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Competitor].[Price](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[CompetitorId] [int] NOT NULL,
	[AvailabilityId] [int] NOT NULL,
	[SourceId] [int] NOT NULL,
	[CompetitorArticleNumber] [nvarchar](100) NULL,
	[CompetitorArticleDescription] [nvarchar](500) NULL,
	[Comparability] [int] NULL,
	[ListPrice] [decimal](18, 6) NULL,
	[ListPriceCurrencyNumCode] [nvarchar](3) NULL,
	[OfferedNetPrice] [decimal](18, 6) NULL,
	[OfferedNetPriceCurrencyNumCode] [nvarchar](3) NULL,
	[QuantityOffered] [decimal](18, 6) NULL,
	[UnitOfMeasure] [nvarchar](10) NULL,
	[DeliveryTimeInDays] [int] NULL,
	[DiscountGiven] [decimal](18, 6) NULL,
	[CustomerName] [nvarchar](100) NULL,
	[Link_QuoteNo] [nvarchar](100) NULL,
	[AdditionalComment] [nvarchar](500) NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Price] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Competitor].[PriceAttachment]    Script Date: 12/10/2018 11:37:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Competitor].[PriceAttachment](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PriceId] [bigint] NOT NULL,
	[AttachmentTypeId] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Path] [nvarchar](200) NULL,
	[Description] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_PriceAttachment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Competitor].[PriceAttachmentType]    Script Date: 12/10/2018 11:37:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Competitor].[PriceAttachmentType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_PriceAttachmentType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Competitor].[PriceAvailability]    Script Date: 12/10/2018 11:37:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Competitor].[PriceAvailability](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_PriceAvailability] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Competitor].[PriceSource]    Script Date: 12/10/2018 11:37:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Competitor].[PriceSource](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_PriceSource] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Competitor].[ProcessLog]    Script Date: 12/10/2018 11:37:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Competitor].[ProcessLog](
	[ProcessName] [nvarchar](100) NOT NULL,
	[LogDescription] [nvarchar](1000) NULL,
	[CreationDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [Competitor].[Weighting]    Script Date: 12/10/2018 11:37:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Competitor].[Weighting](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CompetitorId] [int] NOT NULL,
	[BusinessEntityId] [int] NOT NULL,
	[Value] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Weighting] PRIMARY KEY CLUSTERED 
(
	[CompetitorId] ASC,
	[BusinessEntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [CompetitorHistory].[AdditionalPriceHistory]    Script Date: 12/10/2018 11:37:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CompetitorHistory].[AdditionalPriceHistory](
	[ID] [bigint] NOT NULL,
	[CompetitorPriceId] [bigint] NOT NULL,
	[AdditionalPriceTypeId] [int] NOT NULL,
	[Value] [decimal](18, 6) NULL,
	[CurrencyNumCode] [nvarchar](3) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL,
	[AdditionalPriceTextProperty1] [nvarchar](100) SPARSE  NULL,
	[AdditionalPriceTextProperty2] [nvarchar](100) SPARSE  NULL,
	[AdditionalPriceTextProperty3] [nvarchar](100) SPARSE  NULL,
	[AdditionalPriceTextProperty4] [nvarchar](100) SPARSE  NULL,
	[AdditionalPriceTextProperty5] [nvarchar](100) SPARSE  NULL,
	[AdditionalPriceTextProperty6] [nvarchar](100) SPARSE  NULL,
	[AdditionalPriceTextProperty7] [nvarchar](100) SPARSE  NULL,
	[AdditionalPriceTextProperty8] [nvarchar](100) SPARSE  NULL,
	[AdditionalPriceTextProperty9] [nvarchar](100) SPARSE  NULL,
	[AdditionalPriceTextProperty10] [nvarchar](100) SPARSE  NULL,
	[AdditionalPriceNumericProperty1] [decimal](18, 6) SPARSE  NULL,
	[AdditionalPriceNumericProperty2] [decimal](18, 6) SPARSE  NULL,
	[AdditionalPriceNumericProperty3] [decimal](18, 6) SPARSE  NULL,
	[AdditionalPriceNumericProperty4] [decimal](18, 6) SPARSE  NULL,
	[AdditionalPriceNumericProperty5] [decimal](18, 6) SPARSE  NULL,
	[AdditionalPriceNumericProperty6] [decimal](18, 6) SPARSE  NULL,
	[AdditionalPriceNumericProperty7] [decimal](18, 6) SPARSE  NULL,
	[AdditionalPriceNumericProperty8] [decimal](18, 6) SPARSE  NULL,
	[AdditionalPriceNumericProperty9] [decimal](18, 6) SPARSE  NULL,
	[AdditionalPriceNumericProperty10] [decimal](18, 6) SPARSE  NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CompetitorHistory].[AdditionalPriceTypeHistory]    Script Date: 12/10/2018 11:37:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CompetitorHistory].[AdditionalPriceTypeHistory](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CompetitorHistory].[BusinessEntityListHistory]    Script Date: 12/10/2018 11:37:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CompetitorHistory].[BusinessEntityListHistory](
	[id] [bigint] NOT NULL,
	[PriceId] [bigint] NOT NULL,
	[BusinessEntityId] [int] NOT NULL,
	[isLeadingCompetitor] [bit] NULL,
	[isManuallySet] [bit] NULL,
	[isIncluded] [bit] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CompetitorHistory].[CompetitorHistory]    Script Date: 12/10/2018 11:37:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CompetitorHistory].[CompetitorHistory](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[ShortName] [nvarchar](50) NULL,
	[Code] [nvarchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[Comment] [nvarchar](500) NULL,
	[CompetitorTypeID] [int] NOT NULL,
	[Website] [nvarchar](200) NULL,
	[Address] [nvarchar](500) NULL,
	[CountryID] [int] NULL,
	[MarketScope] [nvarchar](100) NULL,
	[BusinessScope] [nvarchar](100) NULL,
	[DistributionModelID] [int] NULL,
	[ShowInList] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CompetitorHistory].[CompetitorPropertyHistory]    Script Date: 12/10/2018 11:37:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CompetitorHistory].[CompetitorPropertyHistory](
	[ID] [bigint] NOT NULL,
	[CompetitorId] [int] NOT NULL,
	[CompetitorPropertyTypeId] [int] NOT NULL,
	[Period] [nvarchar](50) NOT NULL,
	[Value] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CompetitorHistory].[CompetitorPropertyTypeHistory]    Script Date: 12/10/2018 11:37:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CompetitorHistory].[CompetitorPropertyTypeHistory](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CompetitorHistory].[CompetitorReferenceHistory]    Script Date: 12/10/2018 11:37:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CompetitorHistory].[CompetitorReferenceHistory](
	[ID] [bigint] NOT NULL,
	[CompetitorId] [int] NOT NULL,
	[CompetitorReferenceTypeId] [int] NOT NULL,
	[Reference] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CompetitorHistory].[CompetitorReferenceTypeHistory]    Script Date: 12/10/2018 11:37:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CompetitorHistory].[CompetitorReferenceTypeHistory](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CompetitorHistory].[CompetitorTypeHistory]    Script Date: 12/10/2018 11:37:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CompetitorHistory].[CompetitorTypeHistory](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CompetitorHistory].[DistributionModelHistory]    Script Date: 12/10/2018 11:37:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CompetitorHistory].[DistributionModelHistory](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CompetitorHistory].[GlobalWeightingHistory]    Script Date: 12/10/2018 11:37:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CompetitorHistory].[GlobalWeightingHistory](
	[ID] [bigint] NOT NULL,
	[CompetitorId] [int] NOT NULL,
	[Value] [decimal](18, 6) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CompetitorHistory].[LeadingPriorityListHistory]    Script Date: 12/10/2018 11:37:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CompetitorHistory].[LeadingPriorityListHistory](
	[id] [bigint] NOT NULL,
	[Groupid] [int] NOT NULL,
	[BusinessEntityId] [int] NOT NULL,
	[CometitorId] [int] NOT NULL,
	[Priority] [int] NOT NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CompetitorHistory].[PriceAttachmentHistory]    Script Date: 12/10/2018 11:37:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CompetitorHistory].[PriceAttachmentHistory](
	[ID] [bigint] NOT NULL,
	[PriceId] [bigint] NOT NULL,
	[AttachmentTypeId] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Path] [nvarchar](200) NULL,
	[Description] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CompetitorHistory].[PriceAttachmentTypeHistory]    Script Date: 12/10/2018 11:37:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CompetitorHistory].[PriceAttachmentTypeHistory](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CompetitorHistory].[PriceAvailabilityHistory]    Script Date: 12/10/2018 11:37:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CompetitorHistory].[PriceAvailabilityHistory](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CompetitorHistory].[PriceHistory]    Script Date: 12/10/2018 11:37:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CompetitorHistory].[PriceHistory](
	[ID] [bigint] NOT NULL,
	[ItemId] [int] NOT NULL,
	[CompetitorId] [int] NOT NULL,
	[AvailabilityId] [int] NOT NULL,
	[SourceId] [int] NOT NULL,
	[CompetitorArticleNumber] [nvarchar](100) NULL,
	[CompetitorArticleDescription] [nvarchar](500) NULL,
	[Comparability] [int] NULL,
	[ListPrice] [decimal](18, 6) NULL,
	[ListPriceCurrencyNumCode] [nvarchar](3) NULL,
	[OfferedNetPrice] [decimal](18, 6) NULL,
	[OfferedNetPriceCurrencyNumCode] [nvarchar](3) NULL,
	[QuantityOffered] [decimal](18, 6) NULL,
	[UnitOfMeasure] [nvarchar](10) NULL,
	[DeliveryTimeInDays] [int] NULL,
	[DiscountGiven] [decimal](18, 6) NULL,
	[CustomerName] [nvarchar](100) NULL,
	[Link_QuoteNo] [nvarchar](100) NULL,
	[AdditionalComment] [nvarchar](500) NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CompetitorHistory].[PriceSourceHistory]    Script Date: 12/10/2018 11:37:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CompetitorHistory].[PriceSourceHistory](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [CompetitorHistory].[WeightingHistory]    Script Date: 12/10/2018 11:37:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [CompetitorHistory].[WeightingHistory](
	[ID] [bigint] NOT NULL,
	[CompetitorId] [int] NOT NULL,
	[BusinessEntityId] [int] NOT NULL,
	[Value] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [customized].[SystemParameter]    Script Date: 12/10/2018 11:37:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [customized].[SystemParameter](
	[Name] [varchar](50) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_SystemParameter] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AggregationConfiguration]    Script Date: 12/10/2018 11:37:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AggregationConfiguration](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TransactionTypeId] [int] NOT NULL,
	[Name] [nvarchar](500) NULL,
	[FilterString] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_AggregationConfiguration] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicationNotification]    Script Date: 12/10/2018 11:37:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicationNotification](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CreatedDate] [datetime] NULL,
	[Receiver] [nvarchar](100) NULL,
	[Type] [nvarchar](200) NULL,
	[Notification] [xml] NULL,
 CONSTRAINT [PK_ApplicationNotification] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 12/10/2018 11:37:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 12/10/2018 11:37:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_PasswordHistory]    Script Date: 12/10/2018 11:37:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PasswordHistory](
	[PasswordHistoryId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[IsReset] [bit] NULL,
	[CreatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PasswordHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 12/10/2018 11:37:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 12/10/2018 11:37:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 12/10/2018 11:37:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 12/10/2018 11:37:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 12/10/2018 11:37:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 12/10/2018 11:37:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 12/10/2018 11:37:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 12/10/2018 11:37:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 12/10/2018 11:37:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assortment]    Script Date: 12/10/2018 11:37:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assortment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[BusinessEntityContainerId] [int] NULL,
	[PermissionContainerId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_AssortmentCode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillOfMaterial]    Script Date: 12/10/2018 11:37:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillOfMaterial](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[ChildItemId] [int] NOT NULL,
	[Quantity] [numeric](18, 6) NULL,
	[IsExcluded] [bit] NOT NULL,
	[Comment] [nvarchar](100) NOT NULL,
	[ImageId] [int] NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BOMCalculationConfiguration]    Script Date: 12/10/2018 11:37:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOMCalculationConfiguration](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BusinessEntityID] [int] NOT NULL,
	[ItemProperty] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_BOMCalculationConfiguration] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BOMChildProperty]    Script Date: 12/10/2018 11:37:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOMChildProperty](
	[TopParentId] [int] NOT NULL,
	[BOMId] [bigint] NOT NULL,
	[SequenceNumber] [nvarchar](8) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_BOMChildProperty] PRIMARY KEY CLUSTERED 
(
	[BOMId] ASC,
	[TopParentId] ASC,
	[SequenceNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BOMImage]    Script Date: 12/10/2018 11:37:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOMImage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ImagePath] [nvarchar](510) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_BOMImage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessEntity]    Script Date: 12/10/2018 11:37:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessEntity](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Alias] [nvarchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[BusinessEntityTypeId] [int] NOT NULL,
	[BusinessEntityContainerId] [int] NULL,
	[CountryId] [int] NULL,
	[CurrencyNumCode] [nvarchar](3) NULL,
	[ResponsiblePerson] [nvarchar](150) NULL,
	[ERPRef] [nvarchar](20) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[OutPriceOffSwitch] [bit] NOT NULL,
	[TextProperty1] [nvarchar](500) SPARSE  NULL,
	[NumericProperty1] [numeric](18, 6) NULL,
	[TextProperty2] [nvarchar](500) SPARSE  NULL,
	[NumericProperty2] [numeric](18, 6) NULL,
	[TextProperty3] [nvarchar](500) SPARSE  NULL,
	[NumericProperty3] [numeric](18, 6) NULL,
	[TextProperty4] [nvarchar](500) SPARSE  NULL,
	[NumericProperty4] [numeric](18, 6) NULL,
	[TextProperty5] [nvarchar](500) SPARSE  NULL,
	[NumericProperty5] [numeric](18, 6) NULL,
	[TextProperty6] [nvarchar](500) SPARSE  NULL,
	[NumericProperty6] [numeric](18, 6) NULL,
	[TextProperty7] [nvarchar](500) SPARSE  NULL,
	[NumericProperty7] [numeric](18, 6) NULL,
	[TextProperty8] [nvarchar](500) SPARSE  NULL,
	[NumericProperty8] [numeric](18, 6) NULL,
	[TextProperty9] [nvarchar](500) SPARSE  NULL,
	[NumericProperty9] [numeric](18, 6) NULL,
	[TextProperty10] [nvarchar](500) SPARSE  NULL,
	[NumericProperty10] [numeric](18, 6) NULL,
 CONSTRAINT [PK_BuisnessEntity] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessEntityGroup]    Script Date: 12/10/2018 11:37:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessEntityGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[BusinessEntityStructureId] [int] NOT NULL,
	[BusinessEntityContainerId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[Code] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_BusinessEntityGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessEntityGroupDetails]    Script Date: 12/10/2018 11:37:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessEntityGroupDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BusinessEntityGroupId] [int] NOT NULL,
	[BusinessEntityId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_BusinessEntityGroupDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessEntityGroupHierarchy]    Script Date: 12/10/2018 11:37:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessEntityGroupHierarchy](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BusinessEntityGroupId] [int] NOT NULL,
	[BusinessEntityGroupParentId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_BusinessEntityGroupHierarchy] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessEntityStructure]    Script Date: 12/10/2018 11:37:35 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessEntityStructure](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[BusinessEntityStructureTypeId] [int] NOT NULL,
	[BusinessEntityBranchId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_BusinessEntityStructure] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessEntityStructureType]    Script Date: 12/10/2018 11:37:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessEntityStructureType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_BusinessEntityStructureType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessEntityStructureTypeRule]    Script Date: 12/10/2018 11:37:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessEntityStructureTypeRule](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BusinessEntityStructureTypeId] [int] NOT NULL,
	[BusinessEntityTypeId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_BusinessEntityStructureTypeRule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessEntityType]    Script Date: 12/10/2018 11:37:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessEntityType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_BuisinessEntityType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessStructure]    Script Date: 12/10/2018 11:37:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessStructure](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[BusinessStructureTypeId] [int] NOT NULL,
	[RuleId] [int] NOT NULL,
	[Description] [nvarchar](350) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_BusinessStructure] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessStructureHierarchy]    Script Date: 12/10/2018 11:37:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessStructureHierarchy](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GroupId] [int] NOT NULL,
	[ParentGroupId] [int] NOT NULL,
	[BusinessStructureId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_BusinessStructureHierarchy] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusinessStructureType]    Script Date: 12/10/2018 11:37:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessStructureType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[isSingleton] [bit] NOT NULL,
	[Purpose] [nvarchar](350) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[GroupTypeId] [int] NULL,
 CONSTRAINT [PK_BusinessStructureType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalculationQueue]    Script Date: 12/10/2018 11:37:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalculationQueue](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [nvarchar](50) NOT NULL,
	[BusinessEntityID] [int] NULL,
	[GroupID] [int] NULL,
	[CalculateAll] [bit] NULL,
	[Status] [int] NULL,
	[AffectedIDs] [nvarchar](max) NULL,
	[AffectedColumns] [nvarchar](2000) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ProcessedDate] [datetime] NULL,
	[Output] [xml] NULL,
	[ChangeType] [int] NULL,
 CONSTRAINT [PK_CalculationQueue] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Catalog]    Script Date: 12/10/2018 11:37:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BusinessEntityId] [int] NOT NULL,
	[CatalogTypeId] [int] NOT NULL,
	[BusinessEntityContainerId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Catalog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatalogDetails]    Script Date: 12/10/2018 11:37:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatalogDetails](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CatalogId] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[modifiedBy] [nvarchar](100) NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
 CONSTRAINT [PK_CatalogDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatalogTransition]    Script Date: 12/10/2018 11:37:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatalogTransition](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CatalogId] [int] NOT NULL,
	[ReceiverId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_CatalogTransition] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CatalogType]    Script Date: 12/10/2018 11:37:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CatalogType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_CatalogType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CoordinatorConfiguration]    Script Date: 12/10/2018 11:37:36 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CoordinatorConfiguration](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ActionName] [nvarchar](100) NOT NULL,
	[RuleId] [int] NOT NULL,
	[Priority] [numeric](18, 6) NOT NULL,
	[Weight] [numeric](18, 6) NOT NULL,
	[RuleConfiguration] [xml] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_CoordinatorConfiguration] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 12/10/2018 11:37:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Code] [nchar](2) NOT NULL,
	[CurrencyNumCode] [nvarchar](3) NULL,
	[CreatedDate] [date] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CountrySettings]    Script Date: 12/10/2018 11:37:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountrySettings](
	[CountryID] [int] NOT NULL,
	[DecimalSeparator] [nvarchar](1) NULL,
	[ThousandSeparator] [nvarchar](1) NULL,
	[DateFormat] [nvarchar](15) NULL,
	[TimeFormat] [nvarchar](15) NULL,
	[UIDateFormat] [nvarchar](15) NULL,
	[DecimalThousandSeparatorFormat] [nvarchar](25) NULL,
	[CreatedDate] [date] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_CountrySettings] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Currency]    Script Date: 12/10/2018 11:37:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currency](
	[NumericCode] [nvarchar](3) NOT NULL,
	[AlphabeticCode] [nvarchar](3) NOT NULL,
	[MinorUnit] [numeric](1, 0) NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Currency] PRIMARY KEY CLUSTERED 
(
	[NumericCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 12/10/2018 11:37:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Alias] [nvarchar](50) NULL,
	[BusinessEntityTypeID] [int] NOT NULL,
	[CustomerTypeID] [int] NOT NULL,
	[CountryID] [int] NOT NULL,
	[CurrencyNumCode] [nvarchar](3) NULL,
	[Segment] [nvarchar](50) NULL,
	[Group] [nvarchar](50) NULL,
	[Mergers] [nvarchar](50) NULL,
	[ERPRef] [nvarchar](20) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[BusinessEntityContainerId] [int] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerType]    Script Date: 12/10/2018 11:37:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_CustomerType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DampeningRangeVQ]    Script Date: 12/10/2018 11:37:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DampeningRangeVQ](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ScenarioID] [int] NOT NULL,
	[IncreaseDecrease] [int] NOT NULL,
	[ValidValue] [numeric](18, 6) NOT NULL,
	[QuantityValue] [bigint] NULL,
	[Value] [numeric](18, 4) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DashboardAlert]    Script Date: 12/10/2018 11:37:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DashboardAlert](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Order] [int] NOT NULL,
	[DashboardAlertBoxId] [int] NOT NULL,
	[TitleResourceKey] [nvarchar](100) NOT NULL,
	[FeatureId] [int] NOT NULL,
	[CountQuery] [nvarchar](max) NOT NULL,
	[CountQueryTypeId] [int] NOT NULL,
	[ReportQuery] [nvarchar](max) NULL,
	[DestinationId] [int] NOT NULL,
	[IsLiveCalculated] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_DashboardAlert] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DashboardAlertBox]    Script Date: 12/10/2018 11:37:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DashboardAlertBox](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TitleResourceKey] [nvarchar](100) NOT NULL,
	[FeatureId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_DashboardAlertBox] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DashboardAlertCount]    Script Date: 12/10/2018 11:37:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DashboardAlertCount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DashboardAlertId] [int] NOT NULL,
	[BusinessEntityId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[CountValue] [bigint] NULL,
	[LastError] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[AffectedIds] [nvarchar](max) NULL,
 CONSTRAINT [PK_DashboardAlertCount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DateDim]    Script Date: 12/10/2018 11:37:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DateDim](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CalendarDate] [datetime] NOT NULL,
	[Day] [int] NOT NULL,
	[Month] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[WeekdayName] [nvarchar](10) NOT NULL,
	[WeekdayNo] [int] NOT NULL,
	[Week] [int] NOT NULL,
	[MonthName] [nvarchar](10) NOT NULL,
	[DayOfYear] [int] NOT NULL,
	[Quarter] [int] NOT NULL,
	[LocalHoliday] [bit] NOT NULL,
 CONSTRAINT [PK_DateDim] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DateFormats]    Script Date: 12/10/2018 11:37:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DateFormats](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DateFormat] [nvarchar](50) NOT NULL,
	[JQueryDateFormat] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_DateFormats] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DBAudit]    Script Date: 12/10/2018 11:37:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DBAudit](
	[ExecutionTime] [datetime] NULL,
	[EventType] [varchar](50) NULL,
	[PostTime] [varchar](25) NULL,
	[SPID] [int] NULL,
	[ServerName] [nvarchar](200) NULL,
	[LoginName] [varchar](50) NULL,
	[UserName] [varchar](50) NULL,
	[DatabaseName] [nvarchar](100) NULL,
	[SchemaName] [varchar](50) NULL,
	[ObjectName] [varchar](100) NULL,
	[ObjectType] [varchar](50) NULL,
	[TSQLCommand] [nvarchar](max) NULL,
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[HostName] [nvarchar](50) NULL,
	[Program_Name] [nvarchar](200) NULL,
	[nt_domain] [varchar](130) NULL,
	[nt_username] [nvarchar](130) NULL,
	[Uloginame] [nvarchar](100) NULL,
 CONSTRAINT [PK_DBAudit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DefaultNextDate]    Script Date: 12/10/2018 11:37:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DefaultNextDate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[PeriodId] [int] NOT NULL,
	[UseDefault] [bit] NOT NULL,
	[GroupingName] [nvarchar](50) NOT NULL,
	[TableName] [varchar](100) NULL,
	[CurrentValidFrom] [datetime] NULL,
	[NextValidFrom] [datetime] NULL,
	[BusinessEntityId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[FactorId] [int] NULL,
	[PriceTypeId] [int] NULL,
	[ItemLocalPropertyTypeId] [int] NULL,
 CONSTRAINT [PK_DefaultNextDate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dynamic_UDTMappingColumns]    Script Date: 12/10/2018 11:37:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dynamic_UDTMappingColumns](
	[DynamicTableID] [int] NOT NULL,
	[ColumnName] [nvarchar](128) NOT NULL,
	[DimName] [nvarchar](128) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DynamicTable]    Script Date: 12/10/2018 11:37:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DynamicTable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Schema] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_DynamicTable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExcelImportFileLog]    Script Date: 12/10/2018 11:37:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExcelImportFileLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UploadFileName] [nvarchar](300) NOT NULL,
	[UploadedBy] [nvarchar](100) NOT NULL,
	[UploadDate] [datetime] NOT NULL,
	[UploadStatus] [nvarchar](100) NULL,
	[NumberImportedItems] [int] NULL,
	[NumberProcessedItems] [int] NULL,
	[ErrorFileName] [nvarchar](300) NULL,
 CONSTRAINT [PK_ExcelImportFileLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExchangeRate]    Script Date: 12/10/2018 11:37:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExchangeRate](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[RateTypeID] [int] NOT NULL,
	[FromCurrencyNumCode] [nvarchar](3) NOT NULL,
	[FromFactor] [int] NOT NULL,
	[ToCurrencyNumCode] [nvarchar](3) NOT NULL,
	[ToFactor] [int] NOT NULL,
	[Rate] [numeric](18, 6) NOT NULL,
	[ValidFrom] [datetime] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ExchangeRate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExchangeRateType]    Script Date: 12/10/2018 11:37:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExchangeRateType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ExchangeRateType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factor]    Script Date: 12/10/2018 11:37:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[BusinessEntityStructureID] [int] NULL,
	[BusinessEntityStructureLevel] [int] NULL,
	[BusinessStructureID] [int] NULL,
	[BusinessStructureLevel] [int] NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Factor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactorLeafValues]    Script Date: 12/10/2018 11:37:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactorLeafValues](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FactorID] [int] NOT NULL,
	[BusinessEntityID] [int] NULL,
	[GroupID] [int] NULL,
	[Value] [numeric](18, 4) NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactorValues]    Script Date: 12/10/2018 11:37:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactorValues](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FactorID] [int] NOT NULL,
	[BusinessEntityGroupID] [int] NULL,
	[GroupID] [int] NULL,
	[Value] [numeric](18, 4) NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature]    Script Date: 12/10/2018 11:37:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[PluginID] [int] NOT NULL,
	[ParentFeatureID] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeatureMetaColumn]    Script Date: 12/10/2018 11:37:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeatureMetaColumn](
	[FeatureID] [int] NOT NULL,
	[MetaColumnID] [int] NOT NULL,
	[OperationId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_FeatureMetaColumn] PRIMARY KEY CLUSTERED 
(
	[FeatureID] ASC,
	[MetaColumnID] ASC,
	[OperationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FutureGroupDetails]    Script Date: 12/10/2018 11:37:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FutureGroupDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GroupID] [int] NOT NULL,
	[ItemID] [int] NOT NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[TempBeId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_FutureGroupDetails] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FutureOutgoingProcess]    Script Date: 12/10/2018 11:37:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FutureOutgoingProcess](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SelectedDate] [date] NOT NULL,
	[UserId] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Status] [int] NULL,
	[BusinessEntityList] [nvarchar](max) SPARSE  NULL,
	[IsBusinessEntityAll] [bit] NULL,
	[GroupList] [nvarchar](max) SPARSE  NULL,
	[IsGroupAll] [bit] NULL,
	[PriceTypeList] [nvarchar](max) SPARSE  NULL,
	[IsPriceTypeAll] [bit] NULL,
	[BusinessEntityContainerId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_FutureOutgoingProcess] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GeneralContentSettings]    Script Date: 12/10/2018 11:37:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeneralContentSettings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HtmlWidgetTitle] [nvarchar](50) NULL,
	[HtmlWidgetContent] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_GeneralContentSettings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 12/10/2018 11:37:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](20) NULL,
	[Description] [nvarchar](500) NULL,
	[GroupTypeID] [int] NOT NULL,
	[BusinessEntityContainerId] [int] NULL,
	[PermissionContainerId] [int] NULL,
	[MasterItemID] [int] NULL,
	[Status] [nvarchar](50) NULL,
	[Comment] [nvarchar](255) NULL,
	[ScheduledForDelete] [bit] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupDetails]    Script Date: 12/10/2018 11:37:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GroupID] [int] NOT NULL,
	[ItemID] [int] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_GroupDetails] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupLocalProperty]    Script Date: 12/10/2018 11:37:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupLocalProperty](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[GroupId] [int] NOT NULL,
	[BusinessEntityID] [int] NOT NULL,
	[GroupLocalPropertyTypeId] [int] NOT NULL,
	[GroupLocalPropertyCodeId] [bigint] NULL,
	[Value] [nvarchar](1000) NULL,
	[ValueNum] [decimal](18, 6) NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_GroupLocalProperty] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC,
	[BusinessEntityID] ASC,
	[GroupLocalPropertyTypeId] ASC,
	[ValidFrom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupLocalPropertyCode]    Script Date: 12/10/2018 11:37:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupLocalPropertyCode](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[BusinessEntityID] [int] NOT NULL,
	[GroupLocalPropertyTypeId] [int] NOT NULL,
	[Code] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](1000) NULL,
	[ValueNum] [decimal](18, 6) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_GroupLocalPropertyCode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupLocalPropertyType]    Script Date: 12/10/2018 11:37:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupLocalPropertyType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[GroupTypeId] [int] NULL,
	[IsNumericValue] [bit] NOT NULL,
	[IsGlobal] [bit] NOT NULL,
	[IsCodeBased] [bit] NOT NULL,
	[Description] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_GroupLocalPropertType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupProperty]    Script Date: 12/10/2018 11:37:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupProperty](
	[GroupID] [int] NOT NULL,
	[DimN1Name] [nvarchar](200) NULL,
	[DimN1MeasureUnit] [nvarchar](50) NULL,
	[DimN2Name] [nvarchar](200) NULL,
	[DimN2MeasureUnit] [nvarchar](50) NULL,
	[DimTName] [nvarchar](200) NULL,
	[DimTMeasureUnit] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_GroupProperty] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupType]    Script Date: 12/10/2018 11:37:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Purpose] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_GroupType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [UX_GroupType_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InternalPrice]    Script Date: 12/10/2018 11:37:39 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InternalPrice](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[BusinessEntityID] [int] NOT NULL,
	[CatalogDetailsID] [bigint] NOT NULL,
	[CurrencyNumCode] [nvarchar](3) NOT NULL,
	[PriceTypeID] [int] NOT NULL,
	[Value] [numeric](18, 6) NULL,
	[Priority] [int] NOT NULL,
	[PriceCalculationId] [int] NOT NULL,
	[RefID] [bigint] NOT NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ProcessTime] [datetime2](7) NULL,
 CONSTRAINT [PK_InternalPrice] PRIMARY KEY CLUSTERED 
(
	[CatalogDetailsID] ASC,
	[ValidFrom] ASC,
	[BusinessEntityID] ASC,
	[PriceTypeID] ASC,
	[Priority] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Item]    Script Date: 12/10/2018 11:37:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Number] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Width] [numeric](18, 4) NULL,
	[Length] [numeric](18, 4) NULL,
	[Height] [numeric](18, 4) NULL,
	[Volume] [numeric](18, 4) NULL,
	[Weight] [numeric](18, 4) NULL,
	[Description] [nvarchar](500) NULL,
	[AssortmentID] [int] NOT NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[BusinessEntityContainerId] [int] NULL,
	[OR12] [int] NULL,
	[Supplier] [nvarchar](50) NULL,
	[LeadTime] [numeric](18, 6) NULL,
	[TransportLeadTime] [numeric](18, 6) NULL,
	[TermsOfPayment] [nvarchar](50) NULL,
	[Branding] [nvarchar](50) NULL,
	[SortVV] [numeric](38, 12) NULL,
	[ImageSmallURL] [nvarchar](2000) SPARSE  NULL,
	[ImageLargeURL] [nvarchar](2000) SPARSE  NULL,
	[ImagePreviewURL] [nvarchar](2000) SPARSE  NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemDateTimeProperty]    Script Date: 12/10/2018 11:37:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemDateTimeProperty](
	[ItemId] [int] NOT NULL,
	[Date1] [date] SPARSE  NULL,
	[Date2] [date] SPARSE  NULL,
	[Date3] [date] SPARSE  NULL,
	[Date4] [date] SPARSE  NULL,
	[Date5] [date] SPARSE  NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[Date6] [date] SPARSE  NULL,
	[Date7] [date] SPARSE  NULL,
	[Date8] [date] SPARSE  NULL,
	[Date9] [date] SPARSE  NULL,
	[Date10] [date] SPARSE  NULL,
	[Date11] [date] SPARSE  NULL,
	[Date12] [date] SPARSE  NULL,
	[Date13] [date] SPARSE  NULL,
	[Date14] [date] SPARSE  NULL,
	[Date15] [date] SPARSE  NULL,
	[Date16] [date] SPARSE  NULL,
	[Date17] [date] SPARSE  NULL,
	[Date18] [date] SPARSE  NULL,
	[Date19] [date] SPARSE  NULL,
	[Date20] [date] SPARSE  NULL,
	[Date21] [date] SPARSE  NULL,
	[Date22] [date] SPARSE  NULL,
	[Date23] [date] SPARSE  NULL,
	[Date24] [date] SPARSE  NULL,
	[Date25] [date] SPARSE  NULL,
	[Date26] [date] SPARSE  NULL,
	[Date27] [date] SPARSE  NULL,
	[Date28] [date] SPARSE  NULL,
	[Date29] [date] SPARSE  NULL,
	[Date30] [date] SPARSE  NULL,
	[Date31] [date] SPARSE  NULL,
	[Date32] [date] SPARSE  NULL,
	[Date33] [date] SPARSE  NULL,
	[Date34] [date] SPARSE  NULL,
	[Date35] [date] SPARSE  NULL,
	[Date36] [date] SPARSE  NULL,
	[Date37] [date] SPARSE  NULL,
	[Date38] [date] SPARSE  NULL,
	[Date39] [date] SPARSE  NULL,
	[Date40] [date] SPARSE  NULL,
	[Date41] [date] SPARSE  NULL,
	[Date42] [date] SPARSE  NULL,
	[Date43] [date] SPARSE  NULL,
	[Date44] [date] SPARSE  NULL,
	[Date45] [date] SPARSE  NULL,
	[Date46] [date] SPARSE  NULL,
	[Date47] [date] SPARSE  NULL,
	[Date48] [date] SPARSE  NULL,
	[Date49] [date] SPARSE  NULL,
	[Date50] [date] SPARSE  NULL,
 CONSTRAINT [PK_ItemDateTimeProperty] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemDefaultProperties]    Script Date: 12/10/2018 11:37:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemDefaultProperties](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GroupId] [int] NOT NULL,
	[MetaColumnId] [int] NOT NULL,
	[Value] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](100) NULL,
 CONSTRAINT [PK_ItemDefaultProperties] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC,
	[MetaColumnId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemDetailsLayoutColumn]    Script Date: 12/10/2018 11:37:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemDetailsLayoutColumn](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Order] [tinyint] NOT NULL,
	[ItemDetailsLayoutTabId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ItemDetailsLayoutColumn] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemDetailsLayoutProperty]    Script Date: 12/10/2018 11:37:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemDetailsLayoutProperty](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MetaColumnId] [int] NOT NULL,
	[Order] [tinyint] NOT NULL,
	[ItemDetailsLayoutColumnId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ItemDetailsLayoutProperty] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemDetailsLayoutTab]    Script Date: 12/10/2018 11:37:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemDetailsLayoutTab](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Order] [tinyint] NOT NULL,
	[FeatureId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ItemDetailsLayoutTab] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemLocalProperty]    Script Date: 12/10/2018 11:37:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemLocalProperty](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[BusinessEntityID] [int] NOT NULL,
	[ItemLocalPropertyTypeId] [int] NOT NULL,
	[Value] [nvarchar](1000) NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ValueNum] [decimal](18, 6) NULL,
 CONSTRAINT [PK_ItemLocalProperty] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC,
	[BusinessEntityID] ASC,
	[ItemLocalPropertyTypeId] ASC,
	[ValidFrom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemLocalPropertyType]    Script Date: 12/10/2018 11:37:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemLocalPropertyType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[IsGlobal] [bit] NOT NULL,
 CONSTRAINT [PK_ItemLocalPropertType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemLocalState]    Script Date: 12/10/2018 11:37:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemLocalState](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[BusinessEntityID] [int] NOT NULL,
	[ItemLocalStateTypeId] [int] NOT NULL,
	[Value] [nvarchar](1000) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ItemLocalState] PRIMARY KEY CLUSTERED 
(
	[BusinessEntityID] ASC,
	[ItemId] ASC,
	[ItemLocalStateTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemLocalStateType]    Script Date: 12/10/2018 11:37:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemLocalStateType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ItemLocalStateType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_ItemLocalStateType_Code] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemProperty]    Script Date: 12/10/2018 11:37:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemProperty](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[PropertyTypeId] [int] NOT NULL,
	[PropertyNameId] [int] NOT NULL,
	[Value] [nchar](200) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ItemProperty] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemPropertyName]    Script Date: 12/10/2018 11:37:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemPropertyName](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LanguageId] [int] NOT NULL,
	[Translation] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ItemPropertyName] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemPropertyType]    Script Date: 12/10/2018 11:37:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemPropertyType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TranslationId] [int] NULL,
	[CharacteristicId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ItemPropertType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemQualityProperty]    Script Date: 12/10/2018 11:37:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemQualityProperty](
	[Itemid] [int] NOT NULL,
	[Quality1] [nvarchar](50) SPARSE  NULL,
	[Quality2] [nvarchar](50) SPARSE  NULL,
	[Quality3] [nvarchar](50) SPARSE  NULL,
	[Quality4] [nvarchar](50) SPARSE  NULL,
	[Quality5] [nvarchar](50) SPARSE  NULL,
	[Quality6] [nvarchar](50) SPARSE  NULL,
	[Quality7] [nvarchar](50) SPARSE  NULL,
	[Quality8] [nvarchar](50) SPARSE  NULL,
	[Quality9] [nvarchar](50) SPARSE  NULL,
	[Quality10] [nvarchar](50) SPARSE  NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[DimT] [nvarchar](50) SPARSE  NULL,
	[Quality11] [nvarchar](50) SPARSE  NULL,
	[Quality12] [nvarchar](50) SPARSE  NULL,
	[Quality13] [nvarchar](50) SPARSE  NULL,
	[Quality14] [nvarchar](50) SPARSE  NULL,
	[Quality15] [nvarchar](50) SPARSE  NULL,
	[Quality16] [nvarchar](50) SPARSE  NULL,
	[Quality17] [nvarchar](50) SPARSE  NULL,
	[Quality18] [nvarchar](50) SPARSE  NULL,
	[Quality19] [nvarchar](50) SPARSE  NULL,
	[Quality20] [nvarchar](50) SPARSE  NULL,
	[Quality21] [nvarchar](50) SPARSE  NULL,
	[Quality22] [nvarchar](50) SPARSE  NULL,
	[Quality23] [nvarchar](50) SPARSE  NULL,
	[Quality24] [nvarchar](50) SPARSE  NULL,
	[Quality25] [nvarchar](50) SPARSE  NULL,
	[Quality26] [nvarchar](50) SPARSE  NULL,
	[Quality27] [nvarchar](50) SPARSE  NULL,
	[Quality28] [nvarchar](50) SPARSE  NULL,
	[Quality29] [nvarchar](50) SPARSE  NULL,
	[Quality30] [nvarchar](50) SPARSE  NULL,
	[Quality31] [nvarchar](50) SPARSE  NULL,
	[Quality32] [nvarchar](50) SPARSE  NULL,
	[Quality33] [nvarchar](50) SPARSE  NULL,
	[Quality34] [nvarchar](50) SPARSE  NULL,
	[Quality35] [nvarchar](50) SPARSE  NULL,
	[Quality36] [nvarchar](50) SPARSE  NULL,
	[Quality37] [nvarchar](50) SPARSE  NULL,
	[Quality38] [nvarchar](50) SPARSE  NULL,
	[Quality39] [nvarchar](50) SPARSE  NULL,
	[Quality40] [nvarchar](50) SPARSE  NULL,
	[Quality41] [nvarchar](50) SPARSE  NULL,
	[Quality42] [nvarchar](50) SPARSE  NULL,
	[Quality43] [nvarchar](50) SPARSE  NULL,
	[Quality44] [nvarchar](50) SPARSE  NULL,
	[Quality45] [nvarchar](50) SPARSE  NULL,
	[Quality46] [nvarchar](50) SPARSE  NULL,
	[Quality47] [nvarchar](50) SPARSE  NULL,
	[Quality48] [nvarchar](50) SPARSE  NULL,
	[Quality49] [nvarchar](50) SPARSE  NULL,
	[Quality50] [nvarchar](50) SPARSE  NULL,
	[Quality51] [nvarchar](50) SPARSE  NULL,
	[Quality52] [nvarchar](50) SPARSE  NULL,
	[Quality53] [nvarchar](50) SPARSE  NULL,
	[Quality54] [nvarchar](50) SPARSE  NULL,
	[Quality55] [nvarchar](50) SPARSE  NULL,
	[Quality56] [nvarchar](50) SPARSE  NULL,
	[Quality57] [nvarchar](50) SPARSE  NULL,
	[Quality58] [nvarchar](50) SPARSE  NULL,
	[Quality59] [nvarchar](50) SPARSE  NULL,
	[Quality60] [nvarchar](50) SPARSE  NULL,
	[Quality61] [nvarchar](50) SPARSE  NULL,
	[Quality62] [nvarchar](50) SPARSE  NULL,
	[Quality63] [nvarchar](50) SPARSE  NULL,
	[Quality64] [nvarchar](50) SPARSE  NULL,
	[Quality65] [nvarchar](50) SPARSE  NULL,
	[Quality66] [nvarchar](50) SPARSE  NULL,
	[Quality67] [nvarchar](50) SPARSE  NULL,
	[Quality68] [nvarchar](50) SPARSE  NULL,
	[Quality69] [nvarchar](50) SPARSE  NULL,
	[Quality70] [nvarchar](50) SPARSE  NULL,
	[Quality71] [nvarchar](50) SPARSE  NULL,
	[Quality72] [nvarchar](50) SPARSE  NULL,
	[Quality73] [nvarchar](50) SPARSE  NULL,
	[Quality74] [nvarchar](50) SPARSE  NULL,
	[Quality75] [nvarchar](50) SPARSE  NULL,
	[Quality76] [nvarchar](50) SPARSE  NULL,
	[Quality77] [nvarchar](50) SPARSE  NULL,
	[Quality78] [nvarchar](50) SPARSE  NULL,
	[Quality79] [nvarchar](50) SPARSE  NULL,
	[Quality80] [nvarchar](50) SPARSE  NULL,
	[Quality81] [nvarchar](50) SPARSE  NULL,
	[Quality82] [nvarchar](50) SPARSE  NULL,
	[Quality83] [nvarchar](50) SPARSE  NULL,
	[Quality84] [nvarchar](50) SPARSE  NULL,
	[Quality85] [nvarchar](50) SPARSE  NULL,
	[Quality86] [nvarchar](50) SPARSE  NULL,
	[Quality87] [nvarchar](50) SPARSE  NULL,
	[Quality88] [nvarchar](50) SPARSE  NULL,
	[Quality89] [nvarchar](50) SPARSE  NULL,
	[Quality90] [nvarchar](50) SPARSE  NULL,
	[Quality91] [nvarchar](50) SPARSE  NULL,
	[Quality92] [nvarchar](50) SPARSE  NULL,
	[Quality93] [nvarchar](50) SPARSE  NULL,
	[Quality94] [nvarchar](50) SPARSE  NULL,
	[Quality95] [nvarchar](50) SPARSE  NULL,
	[Quality96] [nvarchar](50) SPARSE  NULL,
	[Quality97] [nvarchar](50) SPARSE  NULL,
	[Quality98] [nvarchar](50) SPARSE  NULL,
	[Quality99] [nvarchar](50) SPARSE  NULL,
	[Quality100] [nvarchar](50) SPARSE  NULL,
	[Quality101] [nvarchar](50) SPARSE  NULL,
	[Quality102] [nvarchar](50) SPARSE  NULL,
	[Quality103] [nvarchar](50) SPARSE  NULL,
	[Quality104] [nvarchar](50) SPARSE  NULL,
	[Quality105] [nvarchar](50) SPARSE  NULL,
	[Quality106] [nvarchar](50) SPARSE  NULL,
	[Quality107] [nvarchar](50) SPARSE  NULL,
	[Quality108] [nvarchar](50) SPARSE  NULL,
	[Quality109] [nvarchar](50) SPARSE  NULL,
	[Quality110] [nvarchar](50) SPARSE  NULL,
	[Quality111] [nvarchar](50) SPARSE  NULL,
	[Quality112] [nvarchar](50) SPARSE  NULL,
	[Quality113] [nvarchar](50) SPARSE  NULL,
	[Quality114] [nvarchar](50) SPARSE  NULL,
	[Quality115] [nvarchar](50) SPARSE  NULL,
	[Quality116] [nvarchar](50) SPARSE  NULL,
	[Quality117] [nvarchar](50) SPARSE  NULL,
	[Quality118] [nvarchar](50) SPARSE  NULL,
	[Quality119] [nvarchar](50) SPARSE  NULL,
	[Quality120] [nvarchar](50) SPARSE  NULL,
	[Quality121] [nvarchar](50) SPARSE  NULL,
	[Quality122] [nvarchar](50) SPARSE  NULL,
	[Quality123] [nvarchar](50) SPARSE  NULL,
	[Quality124] [nvarchar](50) SPARSE  NULL,
	[Quality125] [nvarchar](50) SPARSE  NULL,
	[Quality126] [nvarchar](50) SPARSE  NULL,
	[Quality127] [nvarchar](50) SPARSE  NULL,
	[Quality128] [nvarchar](50) SPARSE  NULL,
	[Quality129] [nvarchar](50) SPARSE  NULL,
	[Quality130] [nvarchar](50) SPARSE  NULL,
	[Quality131] [nvarchar](50) SPARSE  NULL,
	[Quality132] [nvarchar](50) SPARSE  NULL,
	[Quality133] [nvarchar](50) SPARSE  NULL,
	[Quality134] [nvarchar](50) SPARSE  NULL,
	[Quality135] [nvarchar](50) SPARSE  NULL,
	[Quality136] [nvarchar](50) SPARSE  NULL,
	[Quality137] [nvarchar](50) SPARSE  NULL,
	[Quality138] [nvarchar](50) SPARSE  NULL,
	[Quality139] [nvarchar](50) SPARSE  NULL,
	[Quality140] [nvarchar](50) SPARSE  NULL,
	[Quality141] [nvarchar](50) SPARSE  NULL,
	[Quality142] [nvarchar](50) SPARSE  NULL,
	[Quality143] [nvarchar](50) SPARSE  NULL,
	[Quality144] [nvarchar](50) SPARSE  NULL,
	[Quality145] [nvarchar](50) SPARSE  NULL,
	[Quality146] [nvarchar](50) SPARSE  NULL,
	[Quality147] [nvarchar](50) SPARSE  NULL,
	[Quality148] [nvarchar](50) SPARSE  NULL,
	[Quality149] [nvarchar](50) SPARSE  NULL,
	[Quality150] [nvarchar](50) SPARSE  NULL,
	[Quality151] [nvarchar](50) SPARSE  NULL,
	[Quality152] [nvarchar](50) SPARSE  NULL,
	[Quality153] [nvarchar](50) SPARSE  NULL,
	[Quality154] [nvarchar](50) SPARSE  NULL,
	[Quality155] [nvarchar](50) SPARSE  NULL,
	[Quality156] [nvarchar](50) SPARSE  NULL,
	[Quality157] [nvarchar](50) SPARSE  NULL,
	[Quality158] [nvarchar](50) SPARSE  NULL,
	[Quality159] [nvarchar](50) SPARSE  NULL,
	[Quality160] [nvarchar](50) SPARSE  NULL,
	[Quality161] [nvarchar](50) SPARSE  NULL,
	[Quality162] [nvarchar](50) SPARSE  NULL,
	[Quality163] [nvarchar](50) SPARSE  NULL,
	[Quality164] [nvarchar](50) SPARSE  NULL,
	[Quality165] [nvarchar](50) SPARSE  NULL,
	[Quality166] [nvarchar](50) SPARSE  NULL,
	[Quality167] [nvarchar](50) SPARSE  NULL,
	[Quality168] [nvarchar](50) SPARSE  NULL,
	[Quality169] [nvarchar](50) SPARSE  NULL,
	[Quality170] [nvarchar](50) SPARSE  NULL,
	[Quality171] [nvarchar](50) SPARSE  NULL,
	[Quality172] [nvarchar](50) SPARSE  NULL,
	[Quality173] [nvarchar](50) SPARSE  NULL,
	[Quality174] [nvarchar](50) SPARSE  NULL,
	[Quality175] [nvarchar](50) SPARSE  NULL,
	[Quality176] [nvarchar](50) SPARSE  NULL,
	[Quality177] [nvarchar](50) SPARSE  NULL,
	[Quality178] [nvarchar](50) SPARSE  NULL,
	[Quality179] [nvarchar](50) SPARSE  NULL,
	[Quality180] [nvarchar](50) SPARSE  NULL,
	[Quality181] [nvarchar](50) SPARSE  NULL,
	[Quality182] [nvarchar](50) SPARSE  NULL,
	[Quality183] [nvarchar](50) SPARSE  NULL,
	[Quality184] [nvarchar](50) SPARSE  NULL,
	[Quality185] [nvarchar](50) SPARSE  NULL,
	[Quality186] [nvarchar](50) SPARSE  NULL,
	[Quality187] [nvarchar](50) SPARSE  NULL,
	[Quality188] [nvarchar](50) SPARSE  NULL,
	[Quality189] [nvarchar](50) SPARSE  NULL,
	[Quality190] [nvarchar](50) SPARSE  NULL,
	[Quality191] [nvarchar](50) SPARSE  NULL,
	[Quality192] [nvarchar](50) SPARSE  NULL,
	[Quality193] [nvarchar](50) SPARSE  NULL,
	[Quality194] [nvarchar](50) SPARSE  NULL,
	[Quality195] [nvarchar](50) SPARSE  NULL,
	[Quality196] [nvarchar](50) SPARSE  NULL,
	[Quality197] [nvarchar](50) SPARSE  NULL,
	[Quality198] [nvarchar](50) SPARSE  NULL,
	[Quality199] [nvarchar](50) SPARSE  NULL,
	[Quality200] [nvarchar](50) SPARSE  NULL,
	[Quality201] [nvarchar](50) SPARSE  NULL,
	[Quality202] [nvarchar](50) SPARSE  NULL,
	[Quality203] [nvarchar](50) SPARSE  NULL,
	[Quality204] [nvarchar](50) SPARSE  NULL,
	[Quality205] [nvarchar](50) SPARSE  NULL,
	[Quality206] [nvarchar](50) SPARSE  NULL,
	[Quality207] [nvarchar](50) SPARSE  NULL,
	[Quality208] [nvarchar](50) SPARSE  NULL,
	[Quality209] [nvarchar](50) SPARSE  NULL,
	[Quality210] [nvarchar](50) SPARSE  NULL,
	[Quality211] [nvarchar](50) SPARSE  NULL,
	[Quality212] [nvarchar](50) SPARSE  NULL,
	[Quality213] [nvarchar](50) SPARSE  NULL,
	[Quality214] [nvarchar](50) SPARSE  NULL,
	[Quality215] [nvarchar](50) SPARSE  NULL,
	[Quality216] [nvarchar](50) SPARSE  NULL,
	[Quality217] [nvarchar](50) SPARSE  NULL,
	[Quality218] [nvarchar](50) SPARSE  NULL,
	[Quality219] [nvarchar](50) SPARSE  NULL,
	[Quality220] [nvarchar](50) SPARSE  NULL,
	[Quality221] [nvarchar](50) SPARSE  NULL,
	[Quality222] [nvarchar](50) SPARSE  NULL,
	[Quality223] [nvarchar](50) SPARSE  NULL,
	[Quality224] [nvarchar](50) SPARSE  NULL,
	[Quality225] [nvarchar](50) SPARSE  NULL,
	[Quality226] [nvarchar](50) SPARSE  NULL,
	[Quality227] [nvarchar](50) SPARSE  NULL,
	[Quality228] [nvarchar](50) SPARSE  NULL,
	[Quality229] [nvarchar](50) SPARSE  NULL,
	[Quality230] [nvarchar](50) SPARSE  NULL,
	[Quality231] [nvarchar](50) SPARSE  NULL,
	[Quality232] [nvarchar](50) SPARSE  NULL,
	[Quality233] [nvarchar](50) SPARSE  NULL,
	[Quality234] [nvarchar](50) SPARSE  NULL,
	[Quality235] [nvarchar](50) SPARSE  NULL,
	[Quality236] [nvarchar](50) SPARSE  NULL,
	[Quality237] [nvarchar](50) SPARSE  NULL,
	[Quality238] [nvarchar](50) SPARSE  NULL,
	[Quality239] [nvarchar](50) SPARSE  NULL,
	[Quality240] [nvarchar](50) SPARSE  NULL,
	[Quality241] [nvarchar](50) SPARSE  NULL,
	[Quality242] [nvarchar](50) SPARSE  NULL,
	[Quality243] [nvarchar](50) SPARSE  NULL,
	[Quality244] [nvarchar](50) SPARSE  NULL,
	[Quality245] [nvarchar](50) SPARSE  NULL,
	[Quality246] [nvarchar](50) SPARSE  NULL,
	[Quality247] [nvarchar](50) SPARSE  NULL,
	[Quality248] [nvarchar](50) SPARSE  NULL,
	[Quality249] [nvarchar](50) SPARSE  NULL,
	[Quality250] [nvarchar](50) SPARSE  NULL,
 CONSTRAINT [PK_ItemQualityProperty] PRIMARY KEY CLUSTERED 
(
	[Itemid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemQuantityProperty]    Script Date: 12/10/2018 11:37:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemQuantityProperty](
	[ItemId] [int] NOT NULL,
	[Quantity1] [numeric](20, 6) SPARSE  NULL,
	[Quantity2] [numeric](20, 6) SPARSE  NULL,
	[Quantity3] [numeric](20, 6) SPARSE  NULL,
	[Quantity4] [numeric](20, 6) SPARSE  NULL,
	[Quantity5] [numeric](20, 6) SPARSE  NULL,
	[Quantity6] [numeric](20, 6) SPARSE  NULL,
	[Quantity7] [numeric](20, 6) SPARSE  NULL,
	[Quantity8] [numeric](20, 6) SPARSE  NULL,
	[Quantity9] [numeric](20, 6) SPARSE  NULL,
	[Quantity10] [numeric](20, 6) SPARSE  NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[DimN1] [numeric](18, 4) SPARSE  NULL,
	[DimN2] [numeric](18, 4) SPARSE  NULL,
	[Quantity11] [numeric](20, 6) SPARSE  NULL,
	[Quantity12] [numeric](20, 6) SPARSE  NULL,
	[Quantity13] [numeric](20, 6) SPARSE  NULL,
	[Quantity14] [numeric](20, 6) SPARSE  NULL,
	[Quantity15] [numeric](20, 6) SPARSE  NULL,
	[Quantity16] [numeric](20, 6) SPARSE  NULL,
	[Quantity17] [numeric](20, 6) SPARSE  NULL,
	[Quantity18] [numeric](20, 6) SPARSE  NULL,
	[Quantity19] [numeric](20, 6) SPARSE  NULL,
	[Quantity20] [numeric](20, 6) SPARSE  NULL,
	[Quantity21] [numeric](20, 6) SPARSE  NULL,
	[Quantity22] [numeric](20, 6) SPARSE  NULL,
	[Quantity23] [numeric](20, 6) SPARSE  NULL,
	[Quantity24] [numeric](20, 6) SPARSE  NULL,
	[Quantity25] [numeric](20, 6) SPARSE  NULL,
	[Quantity26] [numeric](20, 6) SPARSE  NULL,
	[Quantity27] [numeric](20, 6) SPARSE  NULL,
	[Quantity28] [numeric](20, 6) SPARSE  NULL,
	[Quantity29] [numeric](20, 6) SPARSE  NULL,
	[Quantity30] [numeric](20, 6) SPARSE  NULL,
	[Quantity31] [numeric](20, 6) SPARSE  NULL,
	[Quantity32] [numeric](20, 6) SPARSE  NULL,
	[Quantity33] [numeric](20, 6) SPARSE  NULL,
	[Quantity34] [numeric](20, 6) SPARSE  NULL,
	[Quantity35] [numeric](20, 6) SPARSE  NULL,
	[Quantity36] [numeric](20, 6) SPARSE  NULL,
	[Quantity37] [numeric](20, 6) SPARSE  NULL,
	[Quantity38] [numeric](20, 6) SPARSE  NULL,
	[Quantity39] [numeric](20, 6) SPARSE  NULL,
	[Quantity40] [numeric](20, 6) SPARSE  NULL,
	[Quantity41] [numeric](20, 6) SPARSE  NULL,
	[Quantity42] [numeric](20, 6) SPARSE  NULL,
	[Quantity43] [numeric](20, 6) SPARSE  NULL,
	[Quantity44] [numeric](20, 6) SPARSE  NULL,
	[Quantity45] [numeric](20, 6) SPARSE  NULL,
	[Quantity46] [numeric](20, 6) SPARSE  NULL,
	[Quantity47] [numeric](20, 6) SPARSE  NULL,
	[Quantity48] [numeric](20, 6) SPARSE  NULL,
	[Quantity49] [numeric](20, 6) SPARSE  NULL,
	[Quantity50] [numeric](20, 6) SPARSE  NULL,
	[Quantity51] [numeric](20, 6) SPARSE  NULL,
	[Quantity52] [numeric](20, 6) SPARSE  NULL,
	[Quantity53] [numeric](20, 6) SPARSE  NULL,
	[Quantity54] [numeric](20, 6) SPARSE  NULL,
	[Quantity55] [numeric](20, 6) SPARSE  NULL,
	[Quantity56] [numeric](20, 6) SPARSE  NULL,
	[Quantity57] [numeric](20, 6) SPARSE  NULL,
	[Quantity58] [numeric](20, 6) SPARSE  NULL,
	[Quantity59] [numeric](20, 6) SPARSE  NULL,
	[Quantity60] [numeric](20, 6) SPARSE  NULL,
	[Quantity61] [numeric](20, 6) SPARSE  NULL,
	[Quantity62] [numeric](20, 6) SPARSE  NULL,
	[Quantity63] [numeric](20, 6) SPARSE  NULL,
	[Quantity64] [numeric](20, 6) SPARSE  NULL,
	[Quantity65] [numeric](20, 6) SPARSE  NULL,
	[Quantity66] [numeric](20, 6) SPARSE  NULL,
	[Quantity67] [numeric](20, 6) SPARSE  NULL,
	[Quantity68] [numeric](20, 6) SPARSE  NULL,
	[Quantity69] [numeric](20, 6) SPARSE  NULL,
	[Quantity70] [numeric](20, 6) SPARSE  NULL,
	[Quantity71] [numeric](20, 6) SPARSE  NULL,
	[Quantity72] [numeric](20, 6) SPARSE  NULL,
	[Quantity73] [numeric](20, 6) SPARSE  NULL,
	[Quantity74] [numeric](20, 6) SPARSE  NULL,
	[Quantity75] [numeric](20, 6) SPARSE  NULL,
	[Quantity76] [numeric](20, 6) SPARSE  NULL,
	[Quantity77] [numeric](20, 6) SPARSE  NULL,
	[Quantity78] [numeric](20, 6) SPARSE  NULL,
	[Quantity79] [numeric](20, 6) SPARSE  NULL,
	[Quantity80] [numeric](20, 6) SPARSE  NULL,
	[Quantity81] [numeric](20, 6) SPARSE  NULL,
	[Quantity82] [numeric](20, 6) SPARSE  NULL,
	[Quantity83] [numeric](20, 6) SPARSE  NULL,
	[Quantity84] [numeric](20, 6) SPARSE  NULL,
	[Quantity85] [numeric](20, 6) SPARSE  NULL,
	[Quantity86] [numeric](20, 6) SPARSE  NULL,
	[Quantity87] [numeric](20, 6) SPARSE  NULL,
	[Quantity88] [numeric](20, 6) SPARSE  NULL,
	[Quantity89] [numeric](20, 6) SPARSE  NULL,
	[Quantity90] [numeric](20, 6) SPARSE  NULL,
	[Quantity91] [numeric](20, 6) SPARSE  NULL,
	[Quantity92] [numeric](20, 6) SPARSE  NULL,
	[Quantity93] [numeric](20, 6) SPARSE  NULL,
	[Quantity94] [numeric](20, 6) SPARSE  NULL,
	[Quantity95] [numeric](20, 6) SPARSE  NULL,
	[Quantity96] [numeric](20, 6) SPARSE  NULL,
	[Quantity97] [numeric](20, 6) SPARSE  NULL,
	[Quantity98] [numeric](20, 6) SPARSE  NULL,
	[Quantity99] [numeric](20, 6) SPARSE  NULL,
	[Quantity100] [numeric](20, 6) SPARSE  NULL,
	[Quantity101] [numeric](20, 6) SPARSE  NULL,
	[Quantity102] [numeric](20, 6) SPARSE  NULL,
	[Quantity103] [numeric](20, 6) SPARSE  NULL,
	[Quantity104] [numeric](20, 6) SPARSE  NULL,
	[Quantity105] [numeric](20, 6) SPARSE  NULL,
	[Quantity106] [numeric](20, 6) SPARSE  NULL,
	[Quantity107] [numeric](20, 6) SPARSE  NULL,
	[Quantity108] [numeric](20, 6) SPARSE  NULL,
	[Quantity109] [numeric](20, 6) SPARSE  NULL,
	[Quantity110] [numeric](20, 6) SPARSE  NULL,
	[Quantity111] [numeric](20, 6) SPARSE  NULL,
	[Quantity112] [numeric](20, 6) SPARSE  NULL,
	[Quantity113] [numeric](20, 6) SPARSE  NULL,
	[Quantity114] [numeric](20, 6) SPARSE  NULL,
	[Quantity115] [numeric](20, 6) SPARSE  NULL,
	[Quantity116] [numeric](20, 6) SPARSE  NULL,
	[Quantity117] [numeric](20, 6) SPARSE  NULL,
	[Quantity118] [numeric](20, 6) SPARSE  NULL,
	[Quantity119] [numeric](20, 6) SPARSE  NULL,
	[Quantity120] [numeric](20, 6) SPARSE  NULL,
	[Quantity121] [numeric](20, 6) SPARSE  NULL,
	[Quantity122] [numeric](20, 6) SPARSE  NULL,
	[Quantity123] [numeric](20, 6) SPARSE  NULL,
	[Quantity124] [numeric](20, 6) SPARSE  NULL,
	[Quantity125] [numeric](20, 6) SPARSE  NULL,
	[Quantity126] [numeric](20, 6) SPARSE  NULL,
	[Quantity127] [numeric](20, 6) SPARSE  NULL,
	[Quantity128] [numeric](20, 6) SPARSE  NULL,
	[Quantity129] [numeric](20, 6) SPARSE  NULL,
	[Quantity130] [numeric](20, 6) SPARSE  NULL,
	[Quantity131] [numeric](20, 6) SPARSE  NULL,
	[Quantity132] [numeric](20, 6) SPARSE  NULL,
	[Quantity133] [numeric](20, 6) SPARSE  NULL,
	[Quantity134] [numeric](20, 6) SPARSE  NULL,
	[Quantity135] [numeric](20, 6) SPARSE  NULL,
	[Quantity136] [numeric](20, 6) SPARSE  NULL,
	[Quantity137] [numeric](20, 6) SPARSE  NULL,
	[Quantity138] [numeric](20, 6) SPARSE  NULL,
	[Quantity139] [numeric](20, 6) SPARSE  NULL,
	[Quantity140] [numeric](20, 6) SPARSE  NULL,
	[Quantity141] [numeric](20, 6) SPARSE  NULL,
	[Quantity142] [numeric](20, 6) SPARSE  NULL,
	[Quantity143] [numeric](20, 6) SPARSE  NULL,
	[Quantity144] [numeric](20, 6) SPARSE  NULL,
	[Quantity145] [numeric](20, 6) SPARSE  NULL,
	[Quantity146] [numeric](20, 6) SPARSE  NULL,
	[Quantity147] [numeric](20, 6) SPARSE  NULL,
	[Quantity148] [numeric](20, 6) SPARSE  NULL,
	[Quantity149] [numeric](20, 6) SPARSE  NULL,
	[Quantity150] [numeric](20, 6) SPARSE  NULL,
	[Quantity151] [numeric](20, 6) SPARSE  NULL,
	[Quantity152] [numeric](20, 6) SPARSE  NULL,
	[Quantity153] [numeric](20, 6) SPARSE  NULL,
	[Quantity154] [numeric](20, 6) SPARSE  NULL,
	[Quantity155] [numeric](20, 6) SPARSE  NULL,
	[Quantity156] [numeric](20, 6) SPARSE  NULL,
	[Quantity157] [numeric](20, 6) SPARSE  NULL,
	[Quantity158] [numeric](20, 6) SPARSE  NULL,
	[Quantity159] [numeric](20, 6) SPARSE  NULL,
	[Quantity160] [numeric](20, 6) SPARSE  NULL,
	[Quantity161] [numeric](20, 6) SPARSE  NULL,
	[Quantity162] [numeric](20, 6) SPARSE  NULL,
	[Quantity163] [numeric](20, 6) SPARSE  NULL,
	[Quantity164] [numeric](20, 6) SPARSE  NULL,
	[Quantity165] [numeric](20, 6) SPARSE  NULL,
	[Quantity166] [numeric](20, 6) SPARSE  NULL,
	[Quantity167] [numeric](20, 6) SPARSE  NULL,
	[Quantity168] [numeric](20, 6) SPARSE  NULL,
	[Quantity169] [numeric](20, 6) SPARSE  NULL,
	[Quantity170] [numeric](20, 6) SPARSE  NULL,
	[Quantity171] [numeric](20, 6) SPARSE  NULL,
	[Quantity172] [numeric](20, 6) SPARSE  NULL,
	[Quantity173] [numeric](20, 6) SPARSE  NULL,
	[Quantity174] [numeric](20, 6) SPARSE  NULL,
	[Quantity175] [numeric](20, 6) SPARSE  NULL,
	[Quantity176] [numeric](20, 6) SPARSE  NULL,
	[Quantity177] [numeric](20, 6) SPARSE  NULL,
	[Quantity178] [numeric](20, 6) SPARSE  NULL,
	[Quantity179] [numeric](20, 6) SPARSE  NULL,
	[Quantity180] [numeric](20, 6) SPARSE  NULL,
	[Quantity181] [numeric](20, 6) SPARSE  NULL,
	[Quantity182] [numeric](20, 6) SPARSE  NULL,
	[Quantity183] [numeric](20, 6) SPARSE  NULL,
	[Quantity184] [numeric](20, 6) SPARSE  NULL,
	[Quantity185] [numeric](20, 6) SPARSE  NULL,
	[Quantity186] [numeric](20, 6) SPARSE  NULL,
	[Quantity187] [numeric](20, 6) SPARSE  NULL,
	[Quantity188] [numeric](20, 6) SPARSE  NULL,
	[Quantity189] [numeric](20, 6) SPARSE  NULL,
	[Quantity190] [numeric](20, 6) SPARSE  NULL,
	[Quantity191] [numeric](20, 6) SPARSE  NULL,
	[Quantity192] [numeric](20, 6) SPARSE  NULL,
	[Quantity193] [numeric](20, 6) SPARSE  NULL,
	[Quantity194] [numeric](20, 6) SPARSE  NULL,
	[Quantity195] [numeric](20, 6) SPARSE  NULL,
	[Quantity196] [numeric](20, 6) SPARSE  NULL,
	[Quantity197] [numeric](20, 6) SPARSE  NULL,
	[Quantity198] [numeric](20, 6) SPARSE  NULL,
	[Quantity199] [numeric](20, 6) SPARSE  NULL,
	[Quantity200] [numeric](20, 6) SPARSE  NULL,
	[Quantity201] [numeric](20, 6) SPARSE  NULL,
	[Quantity202] [numeric](20, 6) SPARSE  NULL,
	[Quantity203] [numeric](20, 6) SPARSE  NULL,
	[Quantity204] [numeric](20, 6) SPARSE  NULL,
	[Quantity205] [numeric](20, 6) SPARSE  NULL,
	[Quantity206] [numeric](20, 6) SPARSE  NULL,
	[Quantity207] [numeric](20, 6) SPARSE  NULL,
	[Quantity208] [numeric](20, 6) SPARSE  NULL,
	[Quantity209] [numeric](20, 6) SPARSE  NULL,
	[Quantity210] [numeric](20, 6) SPARSE  NULL,
	[Quantity211] [numeric](20, 6) SPARSE  NULL,
	[Quantity212] [numeric](20, 6) SPARSE  NULL,
	[Quantity213] [numeric](20, 6) SPARSE  NULL,
	[Quantity214] [numeric](20, 6) SPARSE  NULL,
	[Quantity215] [numeric](20, 6) SPARSE  NULL,
	[Quantity216] [numeric](20, 6) SPARSE  NULL,
	[Quantity217] [numeric](20, 6) SPARSE  NULL,
	[Quantity218] [numeric](20, 6) SPARSE  NULL,
	[Quantity219] [numeric](20, 6) SPARSE  NULL,
	[Quantity220] [numeric](20, 6) SPARSE  NULL,
	[Quantity221] [numeric](20, 6) SPARSE  NULL,
	[Quantity222] [numeric](20, 6) SPARSE  NULL,
	[Quantity223] [numeric](20, 6) SPARSE  NULL,
	[Quantity224] [numeric](20, 6) SPARSE  NULL,
	[Quantity225] [numeric](20, 6) SPARSE  NULL,
	[Quantity226] [numeric](20, 6) SPARSE  NULL,
	[Quantity227] [numeric](20, 6) SPARSE  NULL,
	[Quantity228] [numeric](20, 6) SPARSE  NULL,
	[Quantity229] [numeric](20, 6) SPARSE  NULL,
	[Quantity230] [numeric](20, 6) SPARSE  NULL,
	[Quantity231] [numeric](20, 6) SPARSE  NULL,
	[Quantity232] [numeric](20, 6) SPARSE  NULL,
	[Quantity233] [numeric](20, 6) SPARSE  NULL,
	[Quantity234] [numeric](20, 6) SPARSE  NULL,
	[Quantity235] [numeric](20, 6) SPARSE  NULL,
	[Quantity236] [numeric](20, 6) SPARSE  NULL,
	[Quantity237] [numeric](20, 6) SPARSE  NULL,
	[Quantity238] [numeric](20, 6) SPARSE  NULL,
	[Quantity239] [numeric](20, 6) SPARSE  NULL,
	[Quantity240] [numeric](20, 6) SPARSE  NULL,
	[Quantity241] [numeric](20, 6) SPARSE  NULL,
	[Quantity242] [numeric](20, 6) SPARSE  NULL,
	[Quantity243] [numeric](20, 6) SPARSE  NULL,
	[Quantity244] [numeric](20, 6) SPARSE  NULL,
	[Quantity245] [numeric](20, 6) SPARSE  NULL,
	[Quantity246] [numeric](20, 6) SPARSE  NULL,
	[Quantity247] [numeric](20, 6) SPARSE  NULL,
	[Quantity248] [numeric](20, 6) SPARSE  NULL,
	[Quantity249] [numeric](20, 6) SPARSE  NULL,
	[Quantity250] [numeric](20, 6) SPARSE  NULL,
 CONSTRAINT [PK_ItemQuantityProperty] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemSelectionScope]    Script Date: 12/10/2018 11:37:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemSelectionScope](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ItemSelectionScope] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemSuppliers]    Script Date: 12/10/2018 11:37:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemSuppliers](
	[ItemId] [int] NULL,
	[SupplierId] [int] NULL,
	[LeadingSupplier] [bit] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 12/10/2018 11:37:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Language] [nvarchar](50) NOT NULL,
	[Abbrevation] [nchar](3) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Languaes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MappingConfigurations]    Script Date: 12/10/2018 11:37:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MappingConfigurations](
	[AssortmentID] [int] NOT NULL,
	[BusinessEntityID] [int] NOT NULL,
	[CatalogID] [int] NOT NULL,
	[CurrencyCode] [nvarchar](3) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_MappingConfigurations] PRIMARY KEY CLUSTERED 
(
	[AssortmentID] ASC,
	[BusinessEntityID] ASC,
	[CatalogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetaColumn]    Script Date: 12/10/2018 11:37:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetaColumn](
	[ID] [int] NOT NULL,
	[TableID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DisplayName] [nvarchar](100) NOT NULL,
	[Type] [int] NOT NULL,
	[UnitOfMeasure] [nvarchar](50) NULL,
	[Order] [int] NOT NULL,
	[IsPPMaster] [bit] NOT NULL,
	[IsPublic] [bit] NOT NULL,
	[ColumnWidth] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ParentMetaColumnId] [int] NULL,
	[IsExcluded] [bit] NOT NULL,
	[IsGlobal] [bit] NOT NULL,
	[isRuntime] [bit] NULL,
	[IsInBlackList] [bit] NOT NULL,
	[IsLocked] [bit] NOT NULL,
	[InUse] [bit] NULL,
 CONSTRAINT [PK_MetaColumn] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetaColumnDynamicList]    Script Date: 12/10/2018 11:37:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetaColumnDynamicList](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MetaColumnId] [int] NOT NULL,
	[Query] [nvarchar](2048) NOT NULL,
	[Url] [nvarchar](1024) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetaColumnDynamicMapping]    Script Date: 12/10/2018 11:37:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetaColumnDynamicMapping](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SystemName] [nvarchar](250) NOT NULL,
	[LogicalName] [nvarchar](250) NOT NULL,
	[LogicalType] [int] NOT NULL,
	[NPPType] [int] NULL,
	[MetaColumnID] [int] NULL,
	[MetaTableID] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_MetaColumnDynamicMapping] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetaColumnDynamicMappingLogicalType]    Script Date: 12/10/2018 11:37:41 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetaColumnDynamicMappingLogicalType](
	[Name] [nvarchar](50) NOT NULL,
	[NumericCode] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetaColumnDynamicMappingNPPType]    Script Date: 12/10/2018 11:37:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetaColumnDynamicMappingNPPType](
	[Name] [nvarchar](50) NOT NULL,
	[NumericCode] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetaColumnExportConfiguration]    Script Date: 12/10/2018 11:37:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetaColumnExportConfiguration](
	[BusinessEntityId] [int] NOT NULL,
	[SequenceNumber] [int] NOT NULL,
	[MetaColumnId] [int] NULL,
 CONSTRAINT [PK_MetaColumnExportConfiguration] PRIMARY KEY CLUSTERED 
(
	[BusinessEntityId] ASC,
	[SequenceNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetaColumnListValues]    Script Date: 12/10/2018 11:37:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetaColumnListValues](
	[MetaColumnId] [int] NOT NULL,
	[Value] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_MetaColumnListValues] PRIMARY KEY CLUSTERED 
(
	[MetaColumnId] ASC,
	[Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetaColumnLocal]    Script Date: 12/10/2018 11:37:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetaColumnLocal](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MetaColumnId] [int] NOT NULL,
	[BusinessEntityTypeId] [int] NOT NULL,
	[DisplayName] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_MetaColumnLocal] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetaColumnLocalHidden]    Script Date: 12/10/2018 11:37:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetaColumnLocalHidden](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MetaColumnId] [int] NOT NULL,
	[BusinessEntityTypeId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_MetaColumnLocalHidden] PRIMARY KEY CLUSTERED 
(
	[MetaColumnId] ASC,
	[BusinessEntityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetaColumnRuntimeDefinition]    Script Date: 12/10/2018 11:37:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetaColumnRuntimeDefinition](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MetaColumnID] [int] NOT NULL,
	[CalculationDefinition] [nvarchar](1000) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_MetaColumnRuntimeDefinition] PRIMARY KEY CLUSTERED 
(
	[MetaColumnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetaColumnRuntimeEquation]    Script Date: 12/10/2018 11:37:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetaColumnRuntimeEquation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MetaColumnID] [int] NOT NULL,
	[Equation] [nvarchar](1000) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_MetaColumnRuntimeEquation] PRIMARY KEY CLUSTERED 
(
	[MetaColumnID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetaColumnSearchSetup]    Script Date: 12/10/2018 11:37:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetaColumnSearchSetup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MetaColumnId] [int] NOT NULL,
	[MetaTableID] [int] NOT NULL,
	[ColumnName] [nvarchar](50) NOT NULL,
	[Order] [int] NOT NULL,
	[IsSearchable] [bit] NOT NULL,
	[SearchString] [nvarchar](1000) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_MetaColumnSearchSetup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetaColumnType]    Script Date: 12/10/2018 11:37:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetaColumnType](
	[Name] [nvarchar](50) NOT NULL,
	[NumericCode] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MetaTable]    Script Date: 12/10/2018 11:37:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MetaTable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_MetaTables] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY],
 CONSTRAINT [UK_MetaTables_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Module]    Script Date: 12/10/2018 11:37:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Module](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IsInstalled] [bit] NOT NULL,
	[Order] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ResourceKey] [nvarchar](200) NULL,
 CONSTRAINT [PK_Module] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NaisChangedData]    Script Date: 12/10/2018 11:37:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NaisChangedData](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[dateReceived] [datetime] NOT NULL,
	[Data] [nvarchar](max) NOT NULL,
	[TokenId] [uniqueidentifier] NULL,
	[ErrorData] [nvarchar](max) NULL,
	[IsProcessed] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NaisChangedDataDialogs]    Script Date: 12/10/2018 11:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NaisChangedDataDialogs](
	[DbId] [int] NOT NULL,
	[DialogId] [uniqueidentifier] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NaisChangedDataErrors]    Script Date: 12/10/2018 11:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NaisChangedDataErrors](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ErrorProcedure] [nvarchar](126) NOT NULL,
	[ErrorLine] [int] NOT NULL,
	[ErrorNumber] [int] NOT NULL,
	[ErrorMessage] [nvarchar](max) NOT NULL,
	[ErrorSeverity] [int] NOT NULL,
	[ErrorState] [int] NOT NULL,
	[AsynTriggerData] [xml] NOT NULL,
	[ErrorDate] [datetime] NOT NULL,
 CONSTRAINT [PK__NaisChan__3214EC07090A5324] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NaisSystemParameters]    Script Date: 12/10/2018 11:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NaisSystemParameters](
	[ParameterName] [nvarchar](100) NOT NULL,
	[ParameterValue] [nvarchar](50) NULL,
 CONSTRAINT [PK_NaisSystemParameters] PRIMARY KEY CLUSTERED 
(
	[ParameterName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NextBOMCalculationProcess]    Script Date: 12/10/2018 11:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NextBOMCalculationProcess](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SelectedDate] [date] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Status] [int] NULL,
	[BusinessEntityId] [int] NOT NULL,
	[UserId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_NextBOMCalculationProcess] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NextTargetScheduledCalculation]    Script Date: 12/10/2018 11:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NextTargetScheduledCalculation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SelectedDate] [date] NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[BusinessEntityId] [int] NOT NULL,
	[GroupList] [nvarchar](max) SPARSE  NULL,
	[IsGroupAll] [bit] NULL,
	[PriceTypeId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_NextTargetScheduledCalculation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operation]    Script Date: 12/10/2018 11:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[OperationCode] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Operation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderType]    Script Date: 12/10/2018 11:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[PaymentTerms] [nvarchar](50) NULL,
	[Behaviour] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_OrderType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Period]    Script Date: 12/10/2018 11:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Period](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NumberOfMeasures] [int] NOT NULL,
	[Measure] [varchar](10) NOT NULL,
	[Name] [nvarchar](30) NOT NULL,
	[Order] [int] NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Period] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plugin]    Script Date: 12/10/2018 11:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plugin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[IsInstalled] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Plugin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostConditionType]    Script Date: 12/10/2018 11:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostConditionType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[code] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_PostConditionType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PredefinedSearch]    Script Date: 12/10/2018 11:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PredefinedSearch](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SearchName] [nvarchar](250) NOT NULL,
	[SearchJson] [nvarchar](max) NOT NULL,
	[IsDefault] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_PredefinedSearch] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceCalculation]    Script Date: 12/10/2018 11:37:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceCalculation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_PriceCalculation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceCalculationType]    Script Date: 12/10/2018 11:37:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceCalculationType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_PriceCalculationType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceEquation]    Script Date: 12/10/2018 11:37:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceEquation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[PriceTypeID] [int] NOT NULL,
	[BusinessEntityID] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_PriceEquation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceEquationDetails]    Script Date: 12/10/2018 11:37:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceEquationDetails](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PriceEquationID] [int] NOT NULL,
	[SequenceNumber] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Condition] [nvarchar](1000) NOT NULL,
	[Equation] [nvarchar](1000) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_PriceEquationDetails] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceIncrease]    Script Date: 12/10/2018 11:37:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceIncrease](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[BusinessEntityId] [int] NOT NULL,
	[PriceTypeFromId] [int] NOT NULL,
	[SelectedValidDate] [date] NOT NULL,
	[PriceTypeToId] [int] NOT NULL,
	[ValidFrom] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](100) NULL,
	[Status] [int] NOT NULL,
	[ApprovedOn] [datetime] NULL,
	[ApprovedBy] [nvarchar](100) NULL,
	[ApprovedPriority] [decimal](18, 6) NULL,
 CONSTRAINT [PK_PriceIncrease] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceIncreaseDetails]    Script Date: 12/10/2018 11:37:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceIncreaseDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PriceIncreaseId] [int] NOT NULL,
	[ScenarioId] [int] NOT NULL,
	[Order] [int] NULL,
	[IncreaseValue] [decimal](18, 8) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](100) NULL,
 CONSTRAINT [PK_PriceIncreaseDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceIncreaseStatus]    Script Date: 12/10/2018 11:37:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceIncreaseStatus](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_PriceIncreaseStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceLeaderHierarchy]    Script Date: 12/10/2018 11:37:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceLeaderHierarchy](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[ParentItemId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_PriceLeaderHierarchy] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceRule]    Script Date: 12/10/2018 11:37:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceRule](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[PriceTypeId] [int] NOT NULL,
	[BusinessEntityID] [int] NULL,
	[BusinessStructureID] [int] NULL,
	[GroupID] [int] NULL,
	[Description] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_PriceRule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceRuleDetails]    Script Date: 12/10/2018 11:37:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceRuleDetails](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PriceRuleID] [int] NOT NULL,
	[SequenceNumber] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Condition] [nvarchar](max) NULL,
	[Equation] [nvarchar](1000) NOT NULL,
	[PostCalculation] [varchar](1000) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_PriceRuleDetails] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceRuleDetailsComment]    Script Date: 12/10/2018 11:37:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceRuleDetailsComment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PriceRuleDetailsId] [bigint] NOT NULL,
	[Comment] [nvarchar](1000) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_PriceRuleDetailsComment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceRulePostConditions]    Script Date: 12/10/2018 11:37:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceRulePostConditions](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PriceRuleDetailsId] [bigint] NOT NULL,
	[PriceTypeId] [int] NOT NULL,
	[PostConditionTypeId] [int] NOT NULL,
	[SequenceNumber] [int] NOT NULL,
	[MaxValue] [numeric](18, 6) NULL,
	[MinValue] [numeric](18, 6) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_PriceRulePostConditions] PRIMARY KEY NONCLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceRulePriceIndex]    Script Date: 12/10/2018 11:37:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceRulePriceIndex](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PriceRuleDetailsId] [bigint] NOT NULL,
	[Value] [numeric](18, 6) NOT NULL,
	[Status] [bit] NOT NULL,
	[ValidFrom] [datetime] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[AppliedAdjustment] [numeric](18, 6) NULL,
	[PriceRulePriceIndexTypeId] [int] NULL,
	[IsAppliedToTarget] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceRulePriceIndexType]    Script Date: 12/10/2018 11:37:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceRulePriceIndexType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_PriceRulePriceIndexType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceRuleSubDetails]    Script Date: 12/10/2018 11:37:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceRuleSubDetails](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[PriceRuleDetailsId] [bigint] NOT NULL,
	[ValueDriver] [nvarchar](100) NOT NULL,
	[Condition] [nvarchar](1000) NOT NULL,
	[Equation] [nvarchar](1000) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_PriceRuleSubDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceType]    Script Date: 12/10/2018 11:37:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[PriceCalculationTypeID] [int] NOT NULL,
	[BusinessStructureID] [int] NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[MetaColumnId] [int] NULL,
	[IsGlobal] [bit] NOT NULL,
 CONSTRAINT [PK_PriceType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceTypeToPriceTypeConfiguration]    Script Date: 12/10/2018 11:37:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceTypeToPriceTypeConfiguration](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](1000) NOT NULL,
	[FromPriceTypeId] [int] NULL,
	[ToPriceTypeId] [int] NULL,
	[IsNextPrice] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProcessStatus]    Script Date: 12/10/2018 11:37:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProcessStatus](
	[Identifier] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Status] [int] NOT NULL,
	[ErrorLog] [nvarchar](1000) NULL,
	[ProcessInitiator] [nvarchar](500) NULL,
	[Context] [nvarchar](max) NULL,
 CONSTRAINT [PK_ProcessStatus] PRIMARY KEY CLUSTERED 
(
	[Identifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductVersion]    Script Date: 12/10/2018 11:37:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductVersion](
	[VersionCode] [nvarchar](30) NOT NULL,
	[VersionDescription] [nvarchar](1000) NULL,
	[CreatedDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Replacement]    Script Date: 12/10/2018 11:37:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Replacement](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[ItemReplacedById] [int] NOT NULL,
	[Quantity] [numeric](18, 6) NULL,
	[Comment] [nvarchar](500) NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Replacement] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Report]    Script Date: 12/10/2018 11:37:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Report](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReportServerId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Path] [nvarchar](500) NOT NULL,
	[PriorityOrder] [decimal](18, 6) NULL,
	[FeatureId] [int] NOT NULL,
	[Parameter] [nvarchar](max) NULL,
	[ReportType] [nvarchar](10) NOT NULL,
	[ReportGroupType] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ReportHeight] [nvarchar](10) NULL,
	[HasOuterScroll] [bit] NULL,
	[RequiresAuthentication] [bit] NOT NULL,
	[Location] [nvarchar](50) NOT NULL,
	[IconClass] [nvarchar](200) NULL,
	[Maximization] [bit] NULL,
	[Version] [nvarchar](50) NULL,
	[InstanceTypeId] [int] NOT NULL,
 CONSTRAINT [PK_Report] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportInstanceType]    Script Date: 12/10/2018 11:37:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportInstanceType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_ReportInstanceType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReportServer]    Script Date: 12/10/2018 11:37:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportServer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Alias] [nvarchar](50) NULL,
	[URL] [varchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ReportServer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoundingMapping]    Script Date: 12/10/2018 11:37:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoundingMapping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BusinessEntityId] [int] NOT NULL,
	[PriceTypeId] [int] NOT NULL,
	[RoundingRuleId] [int] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_RoundingMapping] PRIMARY KEY CLUSTERED 
(
	[BusinessEntityId] ASC,
	[PriceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoundingRule]    Script Date: 12/10/2018 11:37:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoundingRule](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[BusinessEntityContainerId] [int] NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
 CONSTRAINT [pk_RoundingRule] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoundingRuleDetails]    Script Date: 12/10/2018 11:37:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoundingRuleDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoundingRuleId] [int] NOT NULL,
	[LowLimit] [numeric](18, 6) NOT NULL,
	[HighLimit] [numeric](18, 6) NULL,
	[PrecisionScale] [numeric](18, 6) NOT NULL,
	[RoundingType] [nvarchar](100) NOT NULL,
	[Deviation] [decimal](18, 6) NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rule]    Script Date: 12/10/2018 11:37:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rule](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[MajorVersion] [int] NOT NULL,
	[MinorVersion] [int] NOT NULL,
	[RuleSet] [ntext] NOT NULL,
	[Status] [smallint] NULL,
	[Description] [nvarchar](250) NULL,
	[AssemblyPath] [nvarchar](256) NULL,
	[ActivityName] [nvarchar](128) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Rule] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RuntimePriceConfiguration]    Script Date: 12/10/2018 11:37:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RuntimePriceConfiguration](
	[BusinessEntityId] [int] NOT NULL,
	[PriceTypeId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_RuntimePriceConfiguration] PRIMARY KEY CLUSTERED 
(
	[BusinessEntityId] ASC,
	[PriceTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesChannelStructure]    Script Date: 12/10/2018 11:37:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesChannelStructure](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BusinessEntityId] [int] NOT NULL,
	[BusinessEntityParentId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_SalesChannelStructure] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesDataSource]    Script Date: 12/10/2018 11:37:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesDataSource](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_SalesDataSource] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesTransaction]    Script Date: 12/10/2018 11:37:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesTransaction](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TransactionNumber] [nvarchar](30) NOT NULL,
	[ItemId] [int] NOT NULL,
	[DateDimId] [int] NOT NULL,
	[OrderTypeId] [int] NOT NULL,
	[TransactionTypeId] [int] NOT NULL,
	[ShippingMethodId] [int] NOT NULL,
	[SourceID] [int] NOT NULL,
	[SalesCompanyID] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[IsCustomerBE] [bit] NOT NULL,
	[TransactionTime] [datetime] NULL,
	[TransactionCurrencyNumCode] [nvarchar](10) NULL,
	[GrossPriceLocal] [decimal](18, 6) NULL,
	[GrossPriceTransaction] [decimal](18, 6) NULL,
	[GrossPriceCustomer] [decimal](18, 6) NULL,
	[NetValueLocal] [decimal](18, 6) NULL,
	[NetValueTransaction] [decimal](18, 6) NULL,
	[NetValueCustomer] [decimal](18, 6) NULL,
	[QuantitySales] [decimal](18, 6) NULL,
	[UnitOfMeasure] [nvarchar](10) NULL,
	[InvoiceNo] [nvarchar](30) NULL,
	[QuoteNo] [nvarchar](30) NULL,
	[ExchangeRate] [decimal](18, 6) NULL,
	[LandedCostLocal] [decimal](18, 6) NULL,
	[LandedCostTransaction] [decimal](18, 6) NULL,
	[LandedCostCustomer] [decimal](18, 6) NULL,
	[PackagingCostLocal] [decimal](18, 6) NULL,
	[PackagingCostTransaction] [decimal](18, 6) NULL,
	[PackagingCostCustomer] [decimal](18, 6) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[TextualProperty1] [nvarchar](100) NULL,
	[TextualProperty2] [nvarchar](100) NULL,
	[TextualProperty3] [nvarchar](100) NULL,
	[TextualProperty4] [nvarchar](100) NULL,
	[TextualProperty5] [nvarchar](100) NULL,
	[NumericProperty1] [numeric](18, 6) NULL,
	[NumericProperty2] [numeric](18, 6) NULL,
	[NumericProperty3] [numeric](18, 6) NULL,
	[NumericProperty4] [numeric](18, 6) NULL,
	[NumericProperty5] [numeric](18, 6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scenario]    Script Date: 12/10/2018 11:37:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scenario](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[BusinessEntityId] [int] NOT NULL,
	[BusinessStructureId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ScenarioTypeID] [int] NOT NULL,
	[GroupTypeID] [int] NULL,
 CONSTRAINT [PK_Scenario] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScenarioDetailsGroup]    Script Date: 12/10/2018 11:37:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScenarioDetailsGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ScenarioId] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](100) NULL,
 CONSTRAINT [PK_ScenarioDetailsGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScenarioDetailsItem]    Script Date: 12/10/2018 11:37:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScenarioDetailsItem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ScenarioId] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](100) NULL,
 CONSTRAINT [PK_ScenarioDetailsItem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScenarioDetailsItemLocalPropertyType_ToBeDeleted]    Script Date: 12/10/2018 11:37:46 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScenarioDetailsItemLocalPropertyType_ToBeDeleted](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ScenarioId] [int] NOT NULL,
	[ItemLocalPropertyTypeId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](100) NULL,
 CONSTRAINT [PK_ScenarioDetailsItemLocalPropertyType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScenarioPriceRule]    Script Date: 12/10/2018 11:37:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScenarioPriceRule](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ScenarioId] [int] NOT NULL,
	[PriceRuleId] [int] NOT NULL,
	[SequenceNumber] [int] NOT NULL,
	[AutoSetToPriceTypeId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](100) NULL,
	[EffectiveDate] [datetime] NULL,
 CONSTRAINT [PK_ScenarioPriceRule] PRIMARY KEY CLUSTERED 
(
	[ScenarioId] ASC,
	[PriceRuleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScenarioSearchConditions]    Script Date: 12/10/2018 11:37:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScenarioSearchConditions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ScenarioId] [int] NOT NULL,
	[SqlSearch] [nvarchar](max) NOT NULL,
	[JSONSearch] [nvarchar](max) NULL,
	[ParsedSql] [nvarchar](max) NULL,
	[PreviousSqlSearch] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ScenarioSearch] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UX_ScenarioSearchConditions_ScenarioId] UNIQUE NONCLUSTERED 
(
	[ScenarioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScenarioType]    Script Date: 12/10/2018 11:37:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScenarioType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ScenarioType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScenarioTypeSelectionScope]    Script Date: 12/10/2018 11:37:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScenarioTypeSelectionScope](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ScenarioTypeID] [int] NOT NULL,
	[ItemSelectionScopeID] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ScenarioTypeSelectionScope] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchemaVersions]    Script Date: 12/10/2018 11:37:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchemaVersions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ScriptName] [nvarchar](255) NOT NULL,
	[Applied] [datetime] NOT NULL,
 CONSTRAINT [PK_SchemaVersions_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShippingMethod]    Script Date: 12/10/2018 11:37:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShippingMethod](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ShippingMethod] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 12/10/2018 11:37:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[BusinessEntityTypeID] [int] NOT NULL,
	[CountryID] [int] NOT NULL,
	[CurrencyNumCode] [nvarchar](3) NULL,
	[CommodityCode] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemLocalParameter]    Script Date: 12/10/2018 11:37:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemLocalParameter](
	[BusinessEntityId] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_SystemLocalParameter] PRIMARY KEY CLUSTERED 
(
	[BusinessEntityId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemParameter]    Script Date: 12/10/2018 11:37:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemParameter](
	[Name] [varchar](50) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_SystemParameter] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionType]    Script Date: 12/10/2018 11:37:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_TransactionType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserProfile]    Script Date: 12/10/2018 11:37:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfile](
	[UserID] [int] NOT NULL,
	[LocalizationSettings] [nvarchar](max) NULL,
	[DashboardSettings] [nvarchar](max) NULL,
	[SuperAdminSettings] [nvarchar](2000) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[DefaultBusinessEntityID] [int] NULL,
 CONSTRAINT [PK_UserProfile] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebApiProcess]    Script Date: 12/10/2018 11:37:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebApiProcess](
	[Identifier] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[StatusId] [int] NOT NULL,
	[ErrorLog] [nvarchar](1000) NULL,
	[ProcessInitiator] [nvarchar](500) NULL,
	[Context] [nvarchar](max) NULL,
 CONSTRAINT [PK_WebApiProcess] PRIMARY KEY CLUSTERED 
(
	[Identifier] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebApiProcessStatus]    Script Date: 12/10/2018 11:37:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebApiProcessStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_WebApiProcessStatusID] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dw].[LastAggregation]    Script Date: 12/10/2018 11:37:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dw].[LastAggregation](
	[BusinessEntityId] [int] NOT NULL,
	[LastMonth] [int] NOT NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_LastAggregation] PRIMARY KEY CLUSTERED 
(
	[BusinessEntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dw].[PurchaseAggregationBuyer]    Script Date: 12/10/2018 11:37:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dw].[PurchaseAggregationBuyer](
	[Month] [int] NULL,
	[SellerId] [int] NULL,
	[BuyerId] [int] NULL,
	[GroupId] [int] NULL,
	[ItemId] [int] NULL,
	[NIS] [decimal](38, 6) NULL,
	[QD] [decimal](38, 6) NULL,
	[VV_NIS] [decimal](38, 12) NULL,
	[VV_Cost] [numeric](38, 12) NULL,
	[VV_Target] [numeric](38, 12) NULL,
	[VV_Valid] [numeric](38, 12) NULL,
	[Temp_QD] [decimal](38, 6) NULL,
	[Temp_VVNIS] [decimal](38, 12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dw].[PurchaseAggregationBuyerGroup]    Script Date: 12/10/2018 11:37:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dw].[PurchaseAggregationBuyerGroup](
	[Month] [int] NULL,
	[SellerId] [int] NULL,
	[BuyerId] [int] NULL,
	[GroupId] [int] NULL,
	[NIS] [decimal](38, 6) NULL,
	[QD] [decimal](38, 6) NULL,
	[VV_NIS] [decimal](38, 12) NULL,
	[VV_Cost] [numeric](38, 12) NULL,
	[VV_Target] [numeric](38, 12) NULL,
	[VV_Valid] [numeric](38, 12) NULL,
	[Temp_QD] [decimal](38, 6) NULL,
	[Temp_VVNIS] [decimal](38, 12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dw].[PurchaseAggregationGroup]    Script Date: 12/10/2018 11:37:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dw].[PurchaseAggregationGroup](
	[Month] [int] NULL,
	[SellerId] [int] NULL,
	[GroupId] [int] NULL,
	[NIS] [decimal](38, 6) NULL,
	[QD] [decimal](38, 6) NULL,
	[VV_NIS] [decimal](38, 12) NULL,
	[VV_Cost] [numeric](38, 12) NULL,
	[VV_Target] [numeric](38, 12) NULL,
	[VV_Valid] [numeric](38, 12) NULL,
	[Temp_QD] [decimal](38, 6) NULL,
	[Temp_VVNIS] [decimal](38, 12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dw].[PurchaseAggregationItem]    Script Date: 12/10/2018 11:37:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dw].[PurchaseAggregationItem](
	[Month] [int] NULL,
	[SellerId] [int] NULL,
	[ItemId] [int] NULL,
	[NIS] [decimal](38, 6) NULL,
	[QD] [decimal](38, 6) NULL,
	[VV_NIS] [decimal](38, 12) NULL,
	[VV_Cost] [numeric](38, 12) NULL,
	[VV_Target] [numeric](38, 12) NULL,
	[VV_Valid] [numeric](38, 12) NULL,
	[Temp_QD] [decimal](38, 6) NULL,
	[Temp_VVNIS] [decimal](38, 12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dw].[TransactionAggregationBuyer]    Script Date: 12/10/2018 11:37:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dw].[TransactionAggregationBuyer](
	[Month] [int] NULL,
	[SellerId] [int] NULL,
	[BuyerId] [int] NULL,
	[GroupId] [int] NULL,
	[ItemId] [int] NULL,
	[NIS] [decimal](38, 6) NULL,
	[QD] [decimal](38, 6) NULL,
	[VV_NIS] [decimal](38, 12) NULL,
	[VV_Cost] [numeric](38, 12) NULL,
	[VV_Target] [numeric](38, 12) NULL,
	[VV_Valid] [numeric](38, 12) NULL,
	[Temp_QD] [decimal](38, 6) NULL,
	[Temp_VVNIS] [decimal](38, 12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dw].[TransactionAggregationBuyerGroup]    Script Date: 12/10/2018 11:37:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dw].[TransactionAggregationBuyerGroup](
	[Month] [int] NULL,
	[SellerId] [int] NULL,
	[BuyerId] [int] NULL,
	[GroupId] [int] NULL,
	[NIS] [decimal](38, 6) NULL,
	[QD] [decimal](38, 6) NULL,
	[VV_NIS] [decimal](38, 12) NULL,
	[VV_Cost] [numeric](38, 12) NULL,
	[VV_Target] [numeric](38, 12) NULL,
	[VV_Valid] [numeric](38, 12) NULL,
	[Temp_QD] [decimal](38, 6) NULL,
	[Temp_VVNIS] [decimal](38, 12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dw].[TransactionAggregationGroup]    Script Date: 12/10/2018 11:37:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dw].[TransactionAggregationGroup](
	[Month] [int] NULL,
	[SellerId] [int] NULL,
	[GroupId] [int] NULL,
	[NIS] [decimal](38, 6) NULL,
	[QD] [decimal](38, 6) NULL,
	[VV_NIS] [decimal](38, 12) NULL,
	[VV_Cost] [numeric](38, 12) NULL,
	[VV_Target] [numeric](38, 12) NULL,
	[VV_Valid] [numeric](38, 12) NULL,
	[Temp_QD] [decimal](38, 6) NULL,
	[Temp_VVNIS] [decimal](38, 12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dw].[TransactionAggregationItem]    Script Date: 12/10/2018 11:37:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dw].[TransactionAggregationItem](
	[Month] [int] NULL,
	[SellerId] [int] NULL,
	[ItemId] [int] NULL,
	[NIS] [decimal](38, 6) NULL,
	[QD] [decimal](38, 6) NULL,
	[VV_NIS] [decimal](38, 12) NULL,
	[VV_Cost] [numeric](38, 12) NULL,
	[VV_Target] [numeric](38, 12) NULL,
	[VV_Valid] [numeric](38, 12) NULL,
	[Temp_QD] [decimal](38, 6) NULL,
	[Temp_VVNIS] [decimal](38, 12) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[ApprovalDeltaFunctionHistory]    Script Date: 12/10/2018 11:37:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[ApprovalDeltaFunctionHistory](
	[ID] [int] NOT NULL,
	[BusinessEntityContainerID] [int] NOT NULL,
	[TypeId] [smallint] NULL,
	[Code] [nvarchar](max) NOT NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [history].[ApprovalInternalPriceRequestHistory]    Script Date: 12/10/2018 11:37:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[ApprovalInternalPriceRequestHistory](
	[ID] [bigint] NOT NULL,
	[StatusId] [smallint] NOT NULL,
	[Comment] [nvarchar](1000) NULL,
	[ApprovedBy] [nvarchar](100) NULL,
	[ApprovedDelta] [numeric](18, 6) NULL,
	[ApprovedDate] [datetime] NULL,
	[ValidFrom] [date] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[ApprovalThresholdLevelHistory]    Script Date: 12/10/2018 11:37:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[ApprovalThresholdLevelHistory](
	[ID] [int] NOT NULL,
	[TypeId] [smallint] NULL,
	[FeatureId] [int] NOT NULL,
	[BusinessEntityID] [int] NULL,
	[DeltaLowLimit] [numeric](18, 6) NULL,
	[DeltaHighLimit] [numeric](18, 6) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[BillOfMaterialHistory]    Script Date: 12/10/2018 11:37:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[BillOfMaterialHistory](
	[ID] [bigint] NOT NULL,
	[ItemId] [int] NOT NULL,
	[ChildItemId] [int] NOT NULL,
	[Quantity] [numeric](18, 6) NULL,
	[IsExcluded] [bit] NOT NULL,
	[Comment] [nvarchar](100) NOT NULL,
	[ImageId] [int] NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[BOMCalculationConfigurationHistory]    Script Date: 12/10/2018 11:37:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[BOMCalculationConfigurationHistory](
	[ID] [int] NOT NULL,
	[BusinessEntityID] [int] NOT NULL,
	[ItemProperty] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[DampeningRangeVQHistory]    Script Date: 12/10/2018 11:37:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[DampeningRangeVQHistory](
	[ID] [int] NOT NULL,
	[ScenarioID] [int] NOT NULL,
	[IncreaseDecrease] [int] NOT NULL,
	[ValidValue] [numeric](18, 6) NOT NULL,
	[QuantityValue] [bigint] NULL,
	[Value] [numeric](18, 4) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[FactorHistory]    Script Date: 12/10/2018 11:37:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[FactorHistory](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[BusinessEntityStructureID] [int] NULL,
	[BusinessEntityStructureLevel] [int] NULL,
	[BusinessStructureID] [int] NULL,
	[BusinessStructureLevel] [int] NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[Code] [nvarchar](50) NOT NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[FactorLeafValuesHistory]    Script Date: 12/10/2018 11:37:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[FactorLeafValuesHistory](
	[ID] [int] NOT NULL,
	[FactorID] [int] NOT NULL,
	[BusinessEntityID] [int] NULL,
	[GroupID] [int] NULL,
	[Value] [numeric](18, 4) NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[FactorValuesHistory]    Script Date: 12/10/2018 11:37:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[FactorValuesHistory](
	[ID] [int] NOT NULL,
	[FactorID] [int] NOT NULL,
	[BusinessEntityGroupID] [int] NULL,
	[GroupID] [int] NULL,
	[Value] [numeric](18, 4) NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[FutureGroupDetailsHistory]    Script Date: 12/10/2018 11:37:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[FutureGroupDetailsHistory](
	[ID] [int] NOT NULL,
	[GroupID] [int] NOT NULL,
	[ItemID] [int] NOT NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[TempBeId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[FutureOutgoingProcessHistory]    Script Date: 12/10/2018 11:37:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[FutureOutgoingProcessHistory](
	[Id] [int] NOT NULL,
	[SelectedDate] [date] NOT NULL,
	[UserId] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Status] [int] NULL,
	[BusinessEntityList] [nvarchar](max) SPARSE  NULL,
	[IsBusinessEntityAll] [bit] NULL,
	[GroupList] [nvarchar](max) SPARSE  NULL,
	[IsGroupAll] [bit] NULL,
	[PriceTypeList] [nvarchar](max) SPARSE  NULL,
	[IsPriceTypeAll] [bit] NULL,
	[BusinessEntityContainerId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [history].[GroupDetailsHistory]    Script Date: 12/10/2018 11:37:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[GroupDetailsHistory](
	[ID] [int] NOT NULL,
	[GroupID] [int] NOT NULL,
	[ItemID] [int] NOT NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[GroupHistory]    Script Date: 12/10/2018 11:37:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[GroupHistory](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](20) NULL,
	[Description] [nvarchar](500) NULL,
	[GroupTypeID] [int] NOT NULL,
	[BusinessEntityContainerId] [int] NULL,
	[PermissionContainerId] [int] NULL,
	[MasterItemID] [int] NULL,
	[Status] [nvarchar](50) NULL,
	[Comment] [nvarchar](255) NULL,
	[ScheduledForDelete] [bit] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[InternalPriceHistory]    Script Date: 12/10/2018 11:37:49 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[InternalPriceHistory](
	[ID] [bigint] NOT NULL,
	[BusinessEntityID] [int] NOT NULL,
	[CatalogDetailsID] [bigint] NOT NULL,
	[CurrencyNumCode] [nvarchar](3) NOT NULL,
	[PriceTypeID] [int] NOT NULL,
	[Value] [numeric](18, 6) NULL,
	[Priority] [int] NOT NULL,
	[PriceCalculationId] [int] NOT NULL,
	[RefID] [bigint] NOT NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL,
	[ProcessTime] [datetime2](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[ItemLocalPropertyHistory]    Script Date: 12/10/2018 11:37:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[ItemLocalPropertyHistory](
	[ID] [bigint] NOT NULL,
	[ItemId] [int] NOT NULL,
	[BusinessEntityID] [int] NOT NULL,
	[ItemLocalPropertyTypeId] [int] NOT NULL,
	[Value] [nvarchar](1000) NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ValueNum] [decimal](18, 6) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[ItemLocalStateHistory]    Script Date: 12/10/2018 11:37:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[ItemLocalStateHistory](
	[ID] [bigint] NOT NULL,
	[ItemId] [int] NOT NULL,
	[BusinessEntityID] [int] NOT NULL,
	[ItemLocalStateTypeId] [int] NOT NULL,
	[Value] [nvarchar](1000) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[ItemSelectionScopeHistory]    Script Date: 12/10/2018 11:37:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[ItemSelectionScopeHistory](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[ItemSuppliersHistory]    Script Date: 12/10/2018 11:37:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[ItemSuppliersHistory](
	[ItemId] [int] NULL,
	[SupplierId] [int] NULL,
	[LeadingSupplier] [bit] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[MetaColumnDynamicListHistory]    Script Date: 12/10/2018 11:37:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[MetaColumnDynamicListHistory](
	[ID] [int] NOT NULL,
	[MetaColumnId] [int] NOT NULL,
	[Query] [nvarchar](2048) NOT NULL,
	[Url] [nvarchar](1024) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[MetaColumnDynamicMappingHistory]    Script Date: 12/10/2018 11:37:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[MetaColumnDynamicMappingHistory](
	[ID] [int] NOT NULL,
	[SystemName] [nvarchar](250) NOT NULL,
	[LogicalName] [nvarchar](250) NOT NULL,
	[LogicalType] [int] NOT NULL,
	[MetaColumnID] [int] NULL,
	[MetaTableID] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[NPPType] [int] NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[MetaColumnHistory]    Script Date: 12/10/2018 11:37:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[MetaColumnHistory](
	[ID] [int] NOT NULL,
	[TableID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[DisplayName] [nvarchar](100) NOT NULL,
	[Type] [int] NOT NULL,
	[UnitOfMeasure] [nvarchar](50) NULL,
	[Order] [int] NOT NULL,
	[IsPPMaster] [bit] NOT NULL,
	[IsPublic] [bit] NOT NULL,
	[ColumnWidth] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ParentMetaColumnId] [int] NULL,
	[IsExcluded] [bit] NOT NULL,
	[IsGlobal] [bit] NOT NULL,
	[isRuntime] [bit] NULL,
	[IsInBlackList] [bit] NOT NULL,
	[IsLocked] [bit] NOT NULL,
	[InUse] [bit] NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[MetaColumnListValuesHistory]    Script Date: 12/10/2018 11:37:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[MetaColumnListValuesHistory](
	[MetaColumnId] [int] NOT NULL,
	[Value] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[MetaColumnLocalHistory]    Script Date: 12/10/2018 11:37:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[MetaColumnLocalHistory](
	[ID] [int] NOT NULL,
	[MetaColumnId] [int] NOT NULL,
	[BusinessEntityTypeId] [int] NOT NULL,
	[DisplayName] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[MetaColumnSearchSetupHistory]    Script Date: 12/10/2018 11:37:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[MetaColumnSearchSetupHistory](
	[ID] [int] NOT NULL,
	[MetaColumnId] [int] NOT NULL,
	[MetaTableID] [int] NOT NULL,
	[ColumnName] [nvarchar](50) NOT NULL,
	[Order] [int] NOT NULL,
	[IsSearchable] [bit] NOT NULL,
	[SearchString] [nvarchar](1000) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[PriceEquationDetailsHistory]    Script Date: 12/10/2018 11:37:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[PriceEquationDetailsHistory](
	[ID] [bigint] NOT NULL,
	[PriceEquationID] [int] NOT NULL,
	[SequenceNumber] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Condition] [nvarchar](1000) NOT NULL,
	[Equation] [nvarchar](1000) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[PriceEquationHistory]    Script Date: 12/10/2018 11:37:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[PriceEquationHistory](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[PriceTypeID] [int] NOT NULL,
	[BusinessEntityID] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[PriceLeaderHierarchyHistory]    Script Date: 12/10/2018 11:37:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[PriceLeaderHierarchyHistory](
	[ID] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[ParentItemId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[PriceRuleDetailsCommentHistory]    Script Date: 12/10/2018 11:37:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[PriceRuleDetailsCommentHistory](
	[ID] [int] NOT NULL,
	[PriceRuleDetailsId] [bigint] NOT NULL,
	[Comment] [nvarchar](1000) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[PriceRuleDetailsHistory]    Script Date: 12/10/2018 11:37:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[PriceRuleDetailsHistory](
	[ID] [bigint] NOT NULL,
	[PriceRuleID] [int] NOT NULL,
	[SequenceNumber] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Condition] [nvarchar](1000) NULL,
	[Equation] [nvarchar](1000) NOT NULL,
	[PostCalculation] [varchar](1000) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[PriceRuleHistory]    Script Date: 12/10/2018 11:37:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[PriceRuleHistory](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[PriceTypeId] [int] NOT NULL,
	[BusinessEntityID] [int] NULL,
	[BusinessStructureID] [int] NULL,
	[GroupID] [int] NULL,
	[Description] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[PriceRulePostConditionsHistory]    Script Date: 12/10/2018 11:37:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[PriceRulePostConditionsHistory](
	[ID] [bigint] NOT NULL,
	[PriceRuleDetailsId] [bigint] NOT NULL,
	[PriceTypeId] [int] NOT NULL,
	[PostConditionTypeId] [int] NOT NULL,
	[SequenceNumber] [int] NOT NULL,
	[MaxValue] [numeric](18, 6) NULL,
	[MinValue] [numeric](18, 6) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[PriceRulePriceIndexHistory]    Script Date: 12/10/2018 11:37:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[PriceRulePriceIndexHistory](
	[Id] [int] NOT NULL,
	[PriceRuleDetailsId] [bigint] NOT NULL,
	[Value] [numeric](18, 6) NOT NULL,
	[Status] [bit] NOT NULL,
	[ValidFrom] [datetime] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL,
	[AppliedAdjustment] [numeric](18, 6) NULL,
	[PriceRulePriceIndexTypeId] [int] NULL,
	[IsAppliedToTarget] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[PriceRuleSubDetailsHistory]    Script Date: 12/10/2018 11:37:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[PriceRuleSubDetailsHistory](
	[ID] [bigint] NOT NULL,
	[PriceRuleDetailsId] [bigint] NOT NULL,
	[ValueDriver] [nvarchar](100) NOT NULL,
	[Condition] [nvarchar](1000) NOT NULL,
	[Equation] [nvarchar](1000) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[RoundingMappingHistory]    Script Date: 12/10/2018 11:37:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[RoundingMappingHistory](
	[Id] [int] NOT NULL,
	[BusinessEntityId] [int] NOT NULL,
	[PriceTypeId] [int] NOT NULL,
	[RoundingRuleId] [int] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[RoundingRuleDetailsHistory]    Script Date: 12/10/2018 11:37:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[RoundingRuleDetailsHistory](
	[Id] [int] NOT NULL,
	[RoundingRuleId] [int] NOT NULL,
	[LowLimit] [numeric](18, 6) NOT NULL,
	[HighLimit] [numeric](18, 6) NULL,
	[PrecisionScale] [numeric](18, 6) NOT NULL,
	[RoundingType] [nvarchar](100) NOT NULL,
	[Deviation] [int] NOT NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [date] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[RoundingRuleHistory]    Script Date: 12/10/2018 11:37:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[RoundingRuleHistory](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[BusinessEntityContainerId] [int] NULL,
	[CreatedDate] [date] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[RuntimePriceConfigurationHistory]    Script Date: 12/10/2018 11:37:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[RuntimePriceConfigurationHistory](
	[BusinessEntityId] [int] NOT NULL,
	[PriceTypeId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[ScenarioDetailsGroupHistory]    Script Date: 12/10/2018 11:37:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[ScenarioDetailsGroupHistory](
	[ID] [int] NOT NULL,
	[ScenarioId] [int] NOT NULL,
	[GroupId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[ScenarioDetailsItemHistory]    Script Date: 12/10/2018 11:37:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[ScenarioDetailsItemHistory](
	[ID] [int] NOT NULL,
	[ScenarioId] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[ScenarioDetailsItemLocalPropertyTypeHistory]    Script Date: 12/10/2018 11:37:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[ScenarioDetailsItemLocalPropertyTypeHistory](
	[ID] [int] NOT NULL,
	[ScenarioId] [int] NOT NULL,
	[ItemLocalPropertyTypeId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[ScenarioHistory]    Script Date: 12/10/2018 11:37:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[ScenarioHistory](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[BusinessEntityId] [int] NOT NULL,
	[BusinessStructureId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](100) NULL,
	[ScenarioTypeID] [int] NOT NULL,
	[GroupTypeID] [int] NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[ScenarioPriceRuleHistory]    Script Date: 12/10/2018 11:37:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[ScenarioPriceRuleHistory](
	[ID] [int] NOT NULL,
	[ScenarioId] [int] NOT NULL,
	[PriceRuleId] [int] NOT NULL,
	[SequenceNumber] [int] NOT NULL,
	[AutoSetToPriceTypeId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [varchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[ScenarioTypeHistory]    Script Date: 12/10/2018 11:37:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[ScenarioTypeHistory](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[ScenarioTypeSelectionScopeHistory]    Script Date: 12/10/2018 11:37:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[ScenarioTypeSelectionScopeHistory](
	[ID] [int] NOT NULL,
	[ScenarioTypeID] [int] NOT NULL,
	[ItemSelectionScopeID] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [history].[SupplierHistory]    Script Date: 12/10/2018 11:37:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[SupplierHistory](
	[ID] [int] NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[BusinessEntityTypeID] [int] NOT NULL,
	[CountryID] [int] NOT NULL,
	[CurrencyNumCode] [nvarchar](3) NULL,
	[CommodityCode] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[HistoryDate] [datetime] NOT NULL,
	[SourceOfChange] [varchar](128) NOT NULL,
	[TypeOfChange] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [import].[BEGroup]    Script Date: 12/10/2018 11:37:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [import].[BEGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ImportRequestId] [int] NULL,
	[ImportRowNumber] [int] NULL,
	[ImportStatus] [smallint] NULL,
	[ImportErrorMessage] [nvarchar](4000) SPARSE  NULL,
	[BEGroupName] [nvarchar](50) NOT NULL,
	[BEGroupCode] [nvarchar](50) NOT NULL,
	[ParentBEGroupCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_importBEGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [import].[BEGroupDetails]    Script Date: 12/10/2018 11:37:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [import].[BEGroupDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ImportRequestId] [int] NULL,
	[ImportRowNumber] [int] NULL,
	[ImportStatus] [smallint] NULL,
	[ImportErrorMessage] [nvarchar](4000) SPARSE  NULL,
	[BECode] [nvarchar](50) NOT NULL,
	[ParentBEGroupCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_importBEGroupDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [import].[BillOfMaterial]    Script Date: 12/10/2018 11:37:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [import].[BillOfMaterial](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ImportRequestId] [int] NULL,
	[ImportRowNumber] [int] NULL,
	[ImportStatus] [smallint] NULL,
	[ImportErrorMessage] [nvarchar](4000) SPARSE  NULL,
	[ParentNumber] [nvarchar](50) NOT NULL,
	[ParentAssortmentCode] [nvarchar](50) NOT NULL,
	[ChildNumber] [nvarchar](50) NOT NULL,
	[ChildAssortmentCode] [nvarchar](50) NOT NULL,
	[Quantity] [numeric](18, 6) NOT NULL,
	[IsExcluded] [bit] NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL,
	[TopParentNumber] [nvarchar](50) NULL,
	[TopParentAssortmentCode] [nvarchar](50) NULL,
	[SequenceNumber] [nvarchar](8) NULL,
 CONSTRAINT [PK_importBillOfMaterial] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [import].[BusinessEntity]    Script Date: 12/10/2018 11:37:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [import].[BusinessEntity](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ImportRequestId] [int] NULL,
	[ImportRowNumber] [int] NULL,
	[ImportStatus] [smallint] NULL,
	[ImportErrorMessage] [nvarchar](4000) SPARSE  NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Alias] [nvarchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[BusinessEntityTypeName] [nvarchar](100) NOT NULL,
	[CountryName] [nvarchar](100) NULL,
	[CurrencyAlphabeticCode] [nvarchar](3) NOT NULL,
 CONSTRAINT [PK_importBusinessEntity] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [import].[BusinessModelSetup]    Script Date: 12/10/2018 11:37:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [import].[BusinessModelSetup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IndustryId] [int] NULL,
	[BusinessEntityContainerId] [int] NOT NULL,
	[BusinessType] [int] NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_BusinessModelSetup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [import].[CompetitorPrice]    Script Date: 12/10/2018 11:37:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [import].[CompetitorPrice](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ImportRequestId] [int] NULL,
	[ImportRowNumber] [int] NULL,
	[ImportStatus] [smallint] NULL,
	[ImportErrorMessage] [nvarchar](4000) SPARSE  NULL,
	[ItemNumber] [nvarchar](50) NOT NULL,
	[AssortmentCode] [nvarchar](50) NOT NULL,
	[CompetitorCode] [nvarchar](50) NOT NULL,
	[CompetitorArticleNumber] [nvarchar](100) NULL,
	[CompetitorArticleDescription] [nvarchar](500) NULL,
	[BusinessEntityCode] [nvarchar](50) NOT NULL,
	[ListPrice] [decimal](18, 6) NULL,
	[OfferedNetPrice] [decimal](18, 6) NULL,
	[DiscountGiven] [decimal](18, 6) NULL,
	[PriceCurrencyAlphabeticCode] [nvarchar](3) NULL,
	[DeliveryTimeInDays] [int] NULL,
	[SourceName] [nvarchar](50) NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL,
	[CustomerName] [nvarchar](100) NULL,
	[Comparability] [int] NULL,
	[AvailabilityName] [nvarchar](50) NULL,
	[QuantityOffered] [decimal](18, 6) NULL,
	[Link_QuoteNo] [nvarchar](100) NULL,
	[AdditionalComment] [nvarchar](500) NULL,
 CONSTRAINT [PK_importCompetitorPrice] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [import].[Customer]    Script Date: 12/10/2018 11:37:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [import].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ImportRequestId] [int] NULL,
	[ImportRowNumber] [int] NULL,
	[ImportStatus] [smallint] NULL,
	[ImportErrorMessage] [nvarchar](4000) SPARSE  NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CountryName] [nvarchar](100) NOT NULL,
	[CurrencyAlphabeticCode] [nvarchar](3) NULL,
	[CustomerTypeName] [nvarchar](50) NULL,
 CONSTRAINT [PK_importCustomer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [import].[ExchangeRate]    Script Date: 12/10/2018 11:37:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [import].[ExchangeRate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ImportRequestId] [int] NULL,
	[ImportRowNumber] [int] NULL,
	[ImportStatus] [smallint] NULL,
	[ImportErrorMessage] [nvarchar](4000) SPARSE  NULL,
	[FromCurrencyAlphabeticCode] [nvarchar](3) NOT NULL,
	[ToCurrencyAlphabeticCode] [nvarchar](3) NOT NULL,
	[ExchangeRateTypeName] [nvarchar](50) NOT NULL,
	[Rate] [numeric](18, 6) NOT NULL,
	[ValidFrom] [date] NOT NULL,
 CONSTRAINT [PK_importExchangeRate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [import].[Group]    Script Date: 12/10/2018 11:37:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [import].[Group](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ImportRequestId] [int] NULL,
	[ImportRowNumber] [int] NULL,
	[ImportStatus] [smallint] NULL,
	[ImportErrorMessage] [nvarchar](4000) SPARSE  NULL,
	[GroupTypeMetacolumnName] [nvarchar](500) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](20) NULL,
	[Description] [nvarchar](500) NULL,
	[Comment] [nvarchar](255) NULL,
	[ParentGroupCode] [nvarchar](20) NULL,
 CONSTRAINT [PK_importGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [import].[GuidedSetupWizardStatus]    Script Date: 12/10/2018 11:37:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [import].[GuidedSetupWizardStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StepID] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[BusinessEntityContainerId] [int] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_GuidedSetupWizardStatus] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [import].[GuidedSetupWizardStatusType]    Script Date: 12/10/2018 11:37:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [import].[GuidedSetupWizardStatusType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Status] [int] NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_GuidedSetupWizardStatusType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [import].[GuidedSetupWizardStep]    Script Date: 12/10/2018 11:37:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [import].[GuidedSetupWizardStep](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StepName] [nvarchar](100) NOT NULL,
	[Order] [int] NOT NULL,
	[Description] [nvarchar](2000) SPARSE  NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_GuidedSetupWizardStep] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [import].[GuidedSetupWizardStepDetails]    Script Date: 12/10/2018 11:37:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [import].[GuidedSetupWizardStepDetails](
	[StepID] [int] NOT NULL,
	[Order] [int] NOT NULL,
	[Template] [nvarchar](50) NULL,
	[Description] [nvarchar](2000) SPARSE  NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_GuidedSetupWizardStepDetails] PRIMARY KEY CLUSTERED 
(
	[StepID] ASC,
	[Order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [import].[ImportConfiguration]    Script Date: 12/10/2018 11:37:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [import].[ImportConfiguration](
	[BusinessEntityContainerId] [int] NOT NULL,
	[ImportTypeId] [int] NOT NULL,
	[ColumnName] [nvarchar](100) NOT NULL,
	[HeaderColumnText] [nvarchar](50) NULL,
	[HeaderCommentText] [nvarchar](200) NULL,
	[IsCommentDynamic] [bit] NULL,
	[ColumnOrder] [int] NULL,
	[IsMandatory] [bit] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[DynamicRows] [nvarchar](2000) SPARSE  NULL,
 CONSTRAINT [PK_ImportImportConfiguration] PRIMARY KEY CLUSTERED 
(
	[BusinessEntityContainerId] ASC,
	[ImportTypeId] ASC,
	[ColumnName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [import].[ImportFailedRecord]    Script Date: 12/10/2018 11:37:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [import].[ImportFailedRecord](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImportRequestId] [int] NOT NULL,
	[RowNumber] [int] NOT NULL,
	[Data] [nvarchar](max) NULL,
	[Error] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ImportFailedRecord_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [import].[ImportRequest]    Script Date: 12/10/2018 11:37:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [import].[ImportRequest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImportTypeId] [int] NOT NULL,
	[BusinessEntityContainerId] [int] NOT NULL,
	[BusinessEntityId] [int] NOT NULL,
	[StartedOn] [datetime] NULL,
	[FinishedOn] [datetime] NULL,
	[Status] [smallint] NULL,
	[Output] [nvarchar](max) NULL,
	[TotalRecords] [int] NULL,
	[ImportedRecords] [int] NULL,
	[ImportedFile] [nvarchar](200) NULL,
	[Archived] [bit] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_ImportImportRequest_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [import].[ImportStep]    Script Date: 12/10/2018 11:37:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [import].[ImportStep](
	[ImportTypeId] [int] NOT NULL,
	[StepID] [int] NOT NULL,
	[Order] [int] NOT NULL,
	[Description] [nvarchar](2000) SPARSE  NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_ImportStep] PRIMARY KEY CLUSTERED 
(
	[ImportTypeId] ASC,
	[StepID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [import].[ImportType]    Script Date: 12/10/2018 11:37:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [import].[ImportType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](500) NULL,
	[SpSync] [nvarchar](100) NULL,
	[SpPreExecute] [nvarchar](100) NULL,
	[SpPostExecute] [nvarchar](100) NULL,
	[BcpSettings] [nvarchar](500) NULL,
	[ImportTable] [nvarchar](100) NULL,
	[Order] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ImportImportType_ID] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [import].[Industry]    Script Date: 12/10/2018 11:37:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [import].[Industry](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](200) NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Industry] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [import].[Item]    Script Date: 12/10/2018 11:37:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [import].[Item](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ImportRequestId] [int] NULL,
	[ImportRowNumber] [int] NULL,
	[ImportStatus] [smallint] NULL,
	[ImportErrorMessage] [nvarchar](4000) SPARSE  NULL,
	[Number] [nvarchar](50) NOT NULL,
	[AssortmentCode] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Width] [numeric](18, 4) NULL,
	[Length] [numeric](18, 4) NULL,
	[Volume] [numeric](18, 4) NULL,
	[Weight] [numeric](18, 4) NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_importItem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [import].[ItemGroup]    Script Date: 12/10/2018 11:37:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [import].[ItemGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ImportRequestId] [int] NULL,
	[ImportRowNumber] [int] NULL,
	[ImportStatus] [smallint] NULL,
	[ImportErrorMessage] [nvarchar](4000) SPARSE  NULL,
	[AssortmentCode] [nvarchar](50) NOT NULL,
	[ItemNumber] [nvarchar](50) NOT NULL,
	[GroupCode] [nvarchar](20) NOT NULL,
	[GroupType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_importItemGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [import].[ItemProperties]    Script Date: 12/10/2018 11:37:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [import].[ItemProperties](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ImportRequestId] [int] NULL,
	[ImportRowNumber] [int] NULL,
	[ImportStatus] [smallint] NULL,
	[ImportErrorMessage] [nvarchar](4000) SPARSE  NULL,
	[MetaColumnName] [nvarchar](50) NOT NULL,
	[DisplayName] [nvarchar](50) NOT NULL,
	[NewDisplayName] [nvarchar](50) NULL,
 CONSTRAINT [PK_importItemProperties] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [import].[SalesTransaction]    Script Date: 12/10/2018 11:37:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [import].[SalesTransaction](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ImportRequestId] [int] NULL,
	[ImportRowNumber] [int] NULL,
	[ImportStatus] [smallint] NULL,
	[ImportErrorMessage] [nvarchar](4000) SPARSE  NULL,
	[TransactionNumber] [nvarchar](30) NULL,
	[TransactionTime] [datetime] NOT NULL,
	[AssortmentCode] [nvarchar](50) NOT NULL,
	[ItemNumber] [nvarchar](50) NOT NULL,
	[SalesCompanyCode] [nvarchar](50) NOT NULL,
	[CustomerCompanyCode] [nvarchar](50) NOT NULL,
	[IsCustomerBE] [bit] NOT NULL,
	[TransactionCurrencyAlphabeticCode] [nvarchar](3) NOT NULL,
	[NetValueTransaction] [decimal](18, 6) NOT NULL,
	[NetValueLocal] [decimal](18, 6) NOT NULL,
	[QuantitySales] [decimal](18, 6) NOT NULL,
	[UnitOfMeasure] [nvarchar](10) NULL,
 CONSTRAINT [PK_importSalesTransaction] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [NPP3Archive].[InternalPrice]    Script Date: 12/10/2018 11:37:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [NPP3Archive].[InternalPrice](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[BusinessEntityID] [int] NOT NULL,
	[CatalogDetailsID] [bigint] NOT NULL,
	[CurrencyNumCode] [nvarchar](3) NOT NULL,
	[PriceTypeID] [int] NOT NULL,
	[Value] [numeric](18, 6) NULL,
	[Priority] [int] NOT NULL,
	[PriceCalculationId] [int] NOT NULL,
	[RefID] [bigint] NOT NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ProcessTime] [datetime2](7) NULL,
 CONSTRAINT [PK_InternalPrice] PRIMARY KEY CLUSTERED 
(
	[CatalogDetailsID] ASC,
	[ValidFrom] ASC,
	[BusinessEntityID] ASC,
	[PriceTypeID] ASC,
	[Priority] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Archive]
) ON [Archive]
GO
/****** Object:  Table [NPP3Archive].[ItemLocalProperty]    Script Date: 12/10/2018 11:37:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [NPP3Archive].[ItemLocalProperty](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[BusinessEntityID] [int] NOT NULL,
	[ItemLocalPropertyTypeId] [int] NOT NULL,
	[Value] [nvarchar](1000) NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ValueNum]  AS (case when isnumeric([value]+'e0')=(1) then CONVERT([decimal](18,6),[value],(0))  end) PERSISTED,
 CONSTRAINT [PK_ItemLocalProperty] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC,
	[BusinessEntityID] ASC,
	[ItemLocalPropertyTypeId] ASC,
	[ValidFrom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [Archive]
) ON [Archive]
GO
/****** Object:  Table [permission].[DatabaseRole]    Script Date: 12/10/2018 11:37:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permission].[DatabaseRole](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_DatabaseRole] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UC_DatabaseRole_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [permission].[ErrorLog]    Script Date: 12/10/2018 11:37:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permission].[ErrorLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SQLStatement] [nvarchar](1000) NULL,
	[ErrorDescription] [nvarchar](max) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_PermissionErrorLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [permission].[History]    Script Date: 12/10/2018 11:37:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permission].[History](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SQLStatement] [nvarchar](1000) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_PermissionHistory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [permission].[RoleMembership]    Script Date: 12/10/2018 11:37:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permission].[RoleMembership](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](200) NOT NULL,
	[MemberOf] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_RoleMembership] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UC_RoleMembership_RoleMember] UNIQUE NONCLUSTERED 
(
	[RoleName] ASC,
	[MemberOf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [permission].[SecurableMembership]    Script Date: 12/10/2018 11:37:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [permission].[SecurableMembership](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PermissionType] [nvarchar](50) NOT NULL,
	[PermissionName] [nvarchar](50) NOT NULL,
	[ObjectName] [nvarchar](100) NULL,
	[GrantedToRole] [nvarchar](200) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_SecurableMembership] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UC_SecurableMembership_PPOG] UNIQUE NONCLUSTERED 
(
	[PermissionType] ASC,
	[PermissionName] ASC,
	[ObjectName] ASC,
	[GrantedToRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [security].[BusinessEntityContainer]    Script Date: 12/10/2018 11:37:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [security].[BusinessEntityContainer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ItemProtectionSourceId] [int] NOT NULL,
 CONSTRAINT [PK_BusinessEntityContainer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [security].[ItemProtectionSource]    Script Date: 12/10/2018 11:37:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [security].[ItemProtectionSource](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ItemProtectionSourceTypeId] [int] NOT NULL,
	[SourceName] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ItemProtectionSource] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [security].[ItemProtectionSourceType]    Script Date: 12/10/2018 11:37:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [security].[ItemProtectionSourceType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_ItemProtectionSourceType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [security].[PermissionContainer]    Script Date: 12/10/2018 11:37:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [security].[PermissionContainer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[BusinessEntityContainerId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_PermissionContainer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [security].[Role]    Script Date: 12/10/2018 11:37:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [security].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [security].[RoleFeature]    Script Date: 12/10/2018 11:37:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [security].[RoleFeature](
	[RoleID] [int] NOT NULL,
	[FeatureID] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_RoleFeature] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC,
	[FeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [security].[RoleMetaColumn]    Script Date: 12/10/2018 11:37:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [security].[RoleMetaColumn](
	[RoleID] [int] NOT NULL,
	[MetaColumnID] [int] NOT NULL,
	[OperationID] [int] NOT NULL,
	[IsPermited] [bit] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_RoleMetaColumn_1] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC,
	[MetaColumnID] ASC,
	[OperationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [security].[RoleMetaColumnAssortment]    Script Date: 12/10/2018 11:37:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [security].[RoleMetaColumnAssortment](
	[RoleID] [int] NOT NULL,
	[MetaColumnID] [int] NOT NULL,
	[AssortmentID] [int] NOT NULL,
	[OperationID] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_RoleMetaColumnAssortment_1] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC,
	[MetaColumnID] ASC,
	[AssortmentID] ASC,
	[OperationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [security].[RoleMetaColumnGroup]    Script Date: 12/10/2018 11:37:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [security].[RoleMetaColumnGroup](
	[RoleID] [int] NOT NULL,
	[MetaColumnID] [int] NOT NULL,
	[GroupID] [int] NOT NULL,
	[OperationID] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_RoleMetaColumnGroup_1] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC,
	[MetaColumnID] ASC,
	[GroupID] ASC,
	[OperationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [security].[RoleModule]    Script Date: 12/10/2018 11:37:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [security].[RoleModule](
	[RoleID] [int] NOT NULL,
	[ModuleID] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_RoleModule] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC,
	[ModuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [security].[RolePlugin]    Script Date: 12/10/2018 11:37:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [security].[RolePlugin](
	[RoleID] [int] NOT NULL,
	[PluginID] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
 CONSTRAINT [PK_RolePlugin] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC,
	[PluginID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [security].[User]    Script Date: 12/10/2018 11:37:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [security].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Alias] [nvarchar](50) NULL,
	[Info1] [nvarchar](250) NULL,
	[Info2] [nvarchar](250) NULL,
	[Email] [nvarchar](100) NULL,
	[isBlocked] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[Type] [smallint] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [security].[UserAPIKey]    Script Date: 12/10/2018 11:37:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [security].[UserAPIKey](
	[UserId] [int] NOT NULL,
	[APIKey] [uniqueidentifier] NOT NULL,
 CONSTRAINT [UK_APIKey] UNIQUE NONCLUSTERED 
(
	[APIKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [security].[UserRole]    Script Date: 12/10/2018 11:37:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [security].[UserRole](
	[UserID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [security].[UserRoleBusinessEntity]    Script Date: 12/10/2018 11:37:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [security].[UserRoleBusinessEntity](
	[UserID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	[BusinessEntityID] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_UserRoleBusinessEntity] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[RoleID] ASC,
	[BusinessEntityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [security].[UserRolePermissionContainer]    Script Date: 12/10/2018 11:37:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [security].[UserRolePermissionContainer](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[PermissionContainerId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_UserRolePermissionContainer] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC,
	[PermissionContainerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Approval].[InternalPriceRequest] ADD  CONSTRAINT [DF_InternalPriceRequest_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Approval].[ThresholdLevel] ADD  CONSTRAINT [DF_ThresholdLevel_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Archive].[BillOfMaterial] ADD  DEFAULT ((0)) FOR [IsExcluded]
GO
ALTER TABLE [Archive].[BillOfMaterial] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Archive].[CalculationQueue] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Archive].[ErrorLog] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Archive].[Factor] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Archive].[FactorLeafValues] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Archive].[FactorValues] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Archive].[FutureGroupDetails] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Archive].[InternalPrice] ADD  DEFAULT ((0)) FOR [Priority]
GO
ALTER TABLE [Archive].[InternalPrice] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Archive].[ItemLocalProperty] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Archive].[ProcessLog] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Archive].[ProcessStatus] ADD  DEFAULT ((0)) FOR [StartDate]
GO
ALTER TABLE [Archive].[Replacement] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Archive].[WebApiProcess] ADD  CONSTRAINT [DF_WebApiProcess_StartDate]  DEFAULT ((0)) FOR [StartDate]
GO
ALTER TABLE [Competitor].[AdditionalPriceType] ADD  CONSTRAINT [DF_AdditionalPriceType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Competitor].[Competitor] ADD  CONSTRAINT [DF_Competitorr_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Competitor].[CompetitorProperty] ADD  CONSTRAINT [DF_CompetitorProperty_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Competitor].[CompetitorPropertyType] ADD  CONSTRAINT [DF_CompetitorPropertyType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Competitor].[CompetitorReference] ADD  CONSTRAINT [FK_CompetitorReference_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Competitor].[CompetitorReferenceType] ADD  CONSTRAINT [DF_CompetitorReferenceType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Competitor].[CompetitorType] ADD  CONSTRAINT [DF_CompetitorType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Competitor].[DistributionModel] ADD  CONSTRAINT [DF_DistributionModel_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Competitor].[GlobalWeighting] ADD  CONSTRAINT [DF_GlobalWeighting_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Competitor].[LeadingPriorityList] ADD  CONSTRAINT [DF_LeadingPriorityList_ValidTo]  DEFAULT ('2999-12-31') FOR [ValidTo]
GO
ALTER TABLE [Competitor].[Price] ADD  CONSTRAINT [DF_Price_ValidTo]  DEFAULT ('2999-12-31') FOR [ValidTo]
GO
ALTER TABLE [Competitor].[PriceAttachmentType] ADD  CONSTRAINT [DF_PriceAttachmentType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Competitor].[PriceAvailability] ADD  CONSTRAINT [DF_PriceAvailability_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Competitor].[PriceSource] ADD  CONSTRAINT [DF_PriceSource_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Competitor].[ProcessLog] ADD  DEFAULT (getdate()) FOR [CreationDate]
GO
ALTER TABLE [Competitor].[Weighting] ADD  CONSTRAINT [DF_Weighting_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [CompetitorHistory].[AdditionalPriceHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [CompetitorHistory].[AdditionalPriceHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [CompetitorHistory].[AdditionalPriceTypeHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [CompetitorHistory].[AdditionalPriceTypeHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [CompetitorHistory].[BusinessEntityListHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [CompetitorHistory].[BusinessEntityListHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [CompetitorHistory].[CompetitorHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [CompetitorHistory].[CompetitorHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [CompetitorHistory].[CompetitorPropertyHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [CompetitorHistory].[CompetitorPropertyHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [CompetitorHistory].[CompetitorPropertyTypeHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [CompetitorHistory].[CompetitorPropertyTypeHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [CompetitorHistory].[CompetitorReferenceHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [CompetitorHistory].[CompetitorReferenceHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [CompetitorHistory].[CompetitorReferenceTypeHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [CompetitorHistory].[CompetitorReferenceTypeHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [CompetitorHistory].[CompetitorTypeHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [CompetitorHistory].[CompetitorTypeHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [CompetitorHistory].[DistributionModelHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [CompetitorHistory].[DistributionModelHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [CompetitorHistory].[GlobalWeightingHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [CompetitorHistory].[GlobalWeightingHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [CompetitorHistory].[LeadingPriorityListHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [CompetitorHistory].[LeadingPriorityListHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [CompetitorHistory].[PriceAttachmentHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [CompetitorHistory].[PriceAttachmentHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [CompetitorHistory].[PriceAttachmentTypeHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [CompetitorHistory].[PriceAttachmentTypeHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [CompetitorHistory].[PriceAvailabilityHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [CompetitorHistory].[PriceAvailabilityHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [CompetitorHistory].[PriceHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [CompetitorHistory].[PriceHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [CompetitorHistory].[PriceSourceHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [CompetitorHistory].[PriceSourceHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [CompetitorHistory].[WeightingHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [CompetitorHistory].[WeightingHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [dbo].[AggregationConfiguration] ADD  CONSTRAINT [DF_AggregationConfiguration_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[aspnet_Applications] ADD  DEFAULT (newid()) FOR [ApplicationId]
GO
ALTER TABLE [dbo].[aspnet_Membership] ADD  DEFAULT ((0)) FOR [PasswordFormat]
GO
ALTER TABLE [dbo].[aspnet_PasswordHistory] ADD  DEFAULT ((0)) FOR [IsReset]
GO
ALTER TABLE [dbo].[aspnet_PasswordHistory] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[aspnet_Roles] ADD  DEFAULT (newid()) FOR [RoleId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (newid()) FOR [UserId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (NULL) FOR [MobileAlias]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT ((0)) FOR [IsAnonymous]
GO
ALTER TABLE [dbo].[Assortment] ADD  CONSTRAINT [DF_Assortment_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[BillOfMaterial] ADD  CONSTRAINT [DF_BillOfMaterial_IsExcluded]  DEFAULT ((0)) FOR [IsExcluded]
GO
ALTER TABLE [dbo].[BillOfMaterial] ADD  CONSTRAINT [DF_BillOfMaterial_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[BOMCalculationConfiguration] ADD  CONSTRAINT [DF_BOMCalculationConfiguration_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[BOMChildProperty] ADD  CONSTRAINT [DF_BOMChildProperty_SequenceNumber]  DEFAULT ('') FOR [SequenceNumber]
GO
ALTER TABLE [dbo].[BOMChildProperty] ADD  CONSTRAINT [DF_BOMChildProperty_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[BOMImage] ADD  CONSTRAINT [DF_BOMImage_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[BusinessEntity] ADD  CONSTRAINT [DF_BusinessEntity_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[BusinessEntity] ADD  DEFAULT ((0)) FOR [OutPriceOffSwitch]
GO
ALTER TABLE [dbo].[BusinessEntityGroup] ADD  CONSTRAINT [DF_BusinessEntityGroup_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[BusinessEntityGroupDetails] ADD  CONSTRAINT [DF_BusinessEntityGroupDetails_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[BusinessEntityGroupHierarchy] ADD  CONSTRAINT [DF_BusinessEntityGroupHierarchy_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[BusinessEntityStructure] ADD  CONSTRAINT [DF_BusinessEntityStructure_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[BusinessEntityStructureType] ADD  CONSTRAINT [DF_BusinessEntityStructureType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[BusinessEntityStructureTypeRule] ADD  CONSTRAINT [DF_BusinessEntityStructureTypeRule_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[BusinessEntityType] ADD  CONSTRAINT [DF_BusinessEntityType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[BusinessStructure] ADD  CONSTRAINT [DF_BusinessStructure_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[BusinessStructureHierarchy] ADD  CONSTRAINT [DF_BusinessStructureHierarchy_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[BusinessStructureType] ADD  CONSTRAINT [DF_BusinessStructureType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[CalculationQueue] ADD  CONSTRAINT [DF_CalculationQueue_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Catalog] ADD  CONSTRAINT [DF_Catalog_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[CatalogDetails] ADD  CONSTRAINT [DF_CatalogDetails_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[CatalogDetails] ADD  CONSTRAINT [DF__CatalogDe__Valid__5F9E293D]  DEFAULT (getdate()) FOR [ValidFrom]
GO
ALTER TABLE [dbo].[CatalogDetails] ADD  CONSTRAINT [DF__CatalogDe__Valid__60924D76]  DEFAULT (getdate()) FOR [ValidTo]
GO
ALTER TABLE [dbo].[CatalogTransition] ADD  CONSTRAINT [DF_CatalogTransition_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[CatalogType] ADD  CONSTRAINT [DF_CatalogType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[CoordinatorConfiguration] ADD  CONSTRAINT [DF_CoordinatorConfiguration_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Country] ADD  CONSTRAINT [DF_Country_CreateDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[CountrySettings] ADD  CONSTRAINT [DF_CountrySettings_CreateDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Currency] ADD  CONSTRAINT [DF_Currency_CreateDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[CustomerType] ADD  CONSTRAINT [DF_CustomerType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[DampeningRangeVQ] ADD  CONSTRAINT [DF_DampeningRangeVQ_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[DashboardAlert] ADD  CONSTRAINT [DF_DashboardAlert_IsAutomatic]  DEFAULT ((0)) FOR [IsLiveCalculated]
GO
ALTER TABLE [dbo].[DashboardAlert] ADD  CONSTRAINT [DF_DashboardAlert_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[DashboardAlertBox] ADD  CONSTRAINT [DF_DashboardAlertBox_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[DashboardAlertCount] ADD  CONSTRAINT [DF_DashboardAlertCount_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[DefaultNextDate] ADD  CONSTRAINT [DF_DefaultNextDate_UseDefault]  DEFAULT ((1)) FOR [UseDefault]
GO
ALTER TABLE [dbo].[DefaultNextDate] ADD  CONSTRAINT [DF_DefaultNextDate_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ExchangeRate] ADD  CONSTRAINT [DF_ExchangeRate_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ExchangeRateType] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Factor] ADD  CONSTRAINT [DF_Factor_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[FactorLeafValues] ADD  CONSTRAINT [DF_FactorLeafValues_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[FactorValues] ADD  CONSTRAINT [DF_FactorValues_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Feature] ADD  CONSTRAINT [DF_Feature_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[FeatureMetaColumn] ADD  CONSTRAINT [DF_FeatureMetaColumn_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[FutureGroupDetails] ADD  CONSTRAINT [DF_FutureGroupDetails_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[FutureOutgoingProcess] ADD  CONSTRAINT [DF_FutureOutgoingProcess_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[GeneralContentSettings] ADD  CONSTRAINT [DF_GeneralSettings_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Group] ADD  CONSTRAINT [DF_Group_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[GroupDetails] ADD  CONSTRAINT [DF_GroupDetails_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[GroupLocalProperty] ADD  CONSTRAINT [DF_GroupLocalProperty_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[GroupLocalPropertyCode] ADD  CONSTRAINT [DF_GroupLocalPropertyCode_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[GroupLocalPropertyType] ADD  CONSTRAINT [DF_GroupLocal_IsGlobal]  DEFAULT ((0)) FOR [IsGlobal]
GO
ALTER TABLE [dbo].[GroupLocalPropertyType] ADD  CONSTRAINT [DF_GroupLocalPropertyType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[GroupProperty] ADD  CONSTRAINT [DF_GroupProperty_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[GroupType] ADD  CONSTRAINT [DF_GroupType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[InternalPrice] ADD  CONSTRAINT [DF_InternalPrice_Priority]  DEFAULT ((0)) FOR [Priority]
GO
ALTER TABLE [dbo].[InternalPrice] ADD  CONSTRAINT [DF_InternalPrice_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Item] ADD  CONSTRAINT [DF_Item_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ItemDateTimeProperty] ADD  CONSTRAINT [DF_ItemDateTimeProperty_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ItemDefaultProperties] ADD  CONSTRAINT [DF_ItemDefaultProperties_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ItemDetailsLayoutColumn] ADD  CONSTRAINT [DF_ItemDetailsLayoutColumn_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ItemDetailsLayoutProperty] ADD  CONSTRAINT [DF_ItemDetailsLayoutProperty_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ItemDetailsLayoutTab] ADD  CONSTRAINT [DF_ItemDetailsLayoutTab_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ItemLocalProperty] ADD  CONSTRAINT [DF_ItemLocalProperty_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ItemLocalPropertyType] ADD  CONSTRAINT [DF_ItemLocalPropertyType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ItemLocalPropertyType] ADD  DEFAULT ((0)) FOR [IsGlobal]
GO
ALTER TABLE [dbo].[ItemLocalState] ADD  CONSTRAINT [DF_ItemLocalState_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ItemLocalStateType] ADD  CONSTRAINT [DF_ItemLocalStateType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ItemProperty] ADD  CONSTRAINT [DF_ItemProperty_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ItemPropertyName] ADD  CONSTRAINT [DF_ItemPropertyName_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ItemPropertyType] ADD  CONSTRAINT [DF_ItemPropertyType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ItemQualityProperty] ADD  CONSTRAINT [DF_ItemQualityProperty_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ItemQuantityProperty] ADD  CONSTRAINT [DF_ItemQuantityProperty_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ItemSelectionScope] ADD  CONSTRAINT [DF_ItemSelectionScope_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Language] ADD  CONSTRAINT [DF_Language_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MappingConfigurations] ADD  CONSTRAINT [DF_MappingConfigurations_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MetaColumn] ADD  CONSTRAINT [DF_MetaColumn_IsPPMaster]  DEFAULT ((0)) FOR [IsPPMaster]
GO
ALTER TABLE [dbo].[MetaColumn] ADD  CONSTRAINT [DF_MetaColumn_IsPublic]  DEFAULT ((0)) FOR [IsPublic]
GO
ALTER TABLE [dbo].[MetaColumn] ADD  CONSTRAINT [DF_MetaColumn_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MetaColumn] ADD  DEFAULT ((0)) FOR [IsExcluded]
GO
ALTER TABLE [dbo].[MetaColumn] ADD  DEFAULT ((0)) FOR [IsGlobal]
GO
ALTER TABLE [dbo].[MetaColumn] ADD  DEFAULT ((0)) FOR [isRuntime]
GO
ALTER TABLE [dbo].[MetaColumnDynamicList] ADD  CONSTRAINT [DF_MetaColumnDynamicList_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MetaColumnDynamicMapping] ADD  CONSTRAINT [DF_MetaColumnDynamicMapping_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MetaColumnListValues] ADD  CONSTRAINT [DF_MetaColumnListValues_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MetaColumnLocal] ADD  CONSTRAINT [DF_MetaColumnLocal_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MetaColumnLocalHidden] ADD  CONSTRAINT [DF_MetaColumnLocalHidden_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MetaColumnRuntimeDefinition] ADD  CONSTRAINT [DF_MetaColumnRuntimeDefinition_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MetaColumnRuntimeEquation] ADD  CONSTRAINT [DF_MetaColumnRuntimeEquation_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MetaColumnSearchSetup] ADD  CONSTRAINT [DF_MetaColumnSearchSetup_IsSearchable]  DEFAULT ((0)) FOR [IsSearchable]
GO
ALTER TABLE [dbo].[MetaColumnSearchSetup] ADD  CONSTRAINT [DF_MetaColumnSearchSetup_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MetaTable] ADD  CONSTRAINT [DF_MetaTable_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Module] ADD  CONSTRAINT [DF_Module_IsInstalled]  DEFAULT ((0)) FOR [IsInstalled]
GO
ALTER TABLE [dbo].[Module] ADD  CONSTRAINT [DF_Module_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[NaisChangedDataErrors] ADD  CONSTRAINT [DF__NaisChang__Error__0AF29B96]  DEFAULT (getdate()) FOR [ErrorDate]
GO
ALTER TABLE [dbo].[NextBOMCalculationProcess] ADD  CONSTRAINT [DF_NextBOMCalculationProcess_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[NextTargetScheduledCalculation] ADD  CONSTRAINT [DF_NextTargetScheduledCalculation_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Operation] ADD  CONSTRAINT [DF_Operation_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[OrderType] ADD  CONSTRAINT [DF_OrderType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Period] ADD  CONSTRAINT [DF_Period_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Plugin] ADD  CONSTRAINT [DF_Plugin_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PostConditionType] ADD  CONSTRAINT [DF_PostConditionType_CreateDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PredefinedSearch] ADD  CONSTRAINT [DF_PredefinedSearch_IsDefault]  DEFAULT ((0)) FOR [IsDefault]
GO
ALTER TABLE [dbo].[PredefinedSearch] ADD  CONSTRAINT [DF_PredefinedSearch_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PriceCalculation] ADD  CONSTRAINT [DF_PriceCalculation_CreateDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PriceCalculationType] ADD  CONSTRAINT [DF_PriceCalculationType_CreateDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PriceEquation] ADD  CONSTRAINT [DF_PriceEquation_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PriceEquationDetails] ADD  CONSTRAINT [DF_PriceEquationDetails_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PriceIncrease] ADD  CONSTRAINT [DF_PriceIncrease_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PriceIncreaseDetails] ADD  CONSTRAINT [DF_PriceIncreaseDetails_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PriceLeaderHierarchy] ADD  CONSTRAINT [DF_PriceLeaderHierarchy_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PriceRule] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PriceRuleDetails] ADD  CONSTRAINT [DF_PriceRuleDetails_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PriceRuleDetailsComment] ADD  CONSTRAINT [[DF_PriceRuleDetailsComment_CreatedDate]]]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PriceRulePostConditions] ADD  CONSTRAINT [DF_PriceRulePostConditions_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PriceRulePriceIndex] ADD  CONSTRAINT [DF_PriceRulePriceIndex_Status]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[PriceRulePriceIndex] ADD  CONSTRAINT [DF_PriceRulePriceIndex_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PriceRulePriceIndex] ADD  DEFAULT ((0)) FOR [IsAppliedToTarget]
GO
ALTER TABLE [dbo].[PriceRulePriceIndexType] ADD  CONSTRAINT [DF_PriceRulePriceIndexType_CreateDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PriceRuleSubDetails] ADD  CONSTRAINT [DF_PriceRuleSubDetails_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PriceType] ADD  CONSTRAINT [DF_PriceType_CreateDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[PriceType] ADD  DEFAULT ((0)) FOR [IsGlobal]
GO
ALTER TABLE [dbo].[ProcessStatus] ADD  CONSTRAINT [DF_ProcessStatus_Status]  DEFAULT ((0)) FOR [StartDate]
GO
ALTER TABLE [dbo].[Replacement] ADD  CONSTRAINT [DF_Replacement_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Report] ADD  CONSTRAINT [DF_Report_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Report] ADD  CONSTRAINT [DF_Report_RequiresAuthentication]  DEFAULT ((1)) FOR [RequiresAuthentication]
GO
ALTER TABLE [dbo].[Report] ADD  DEFAULT ('Dropdown') FOR [Location]
GO
ALTER TABLE [dbo].[ReportServer] ADD  CONSTRAINT [DF_ReportServer_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[RoundingMapping] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[RoundingRule] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[RoundingRuleDetails] ADD  DEFAULT ((0)) FOR [PrecisionScale]
GO
ALTER TABLE [dbo].[RoundingRuleDetails] ADD  CONSTRAINT [DF_RoundingRuleDetails_Deviation]  DEFAULT ((0)) FOR [Deviation]
GO
ALTER TABLE [dbo].[RoundingRuleDetails] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Rule] ADD  CONSTRAINT [DF_Rule_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[RuntimePriceConfiguration] ADD  CONSTRAINT [DF_RuntimePriceConfiguration_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[SalesChannelStructure] ADD  CONSTRAINT [DF_SalesChannelStructure_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[SalesDataSource] ADD  CONSTRAINT [DF_SalesDataSource_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[SalesTransaction] ADD  CONSTRAINT [DF_SalesTransaction_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Scenario] ADD  CONSTRAINT [DF_Scenario_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ScenarioDetailsGroup] ADD  CONSTRAINT [DF_ScenarioDetailsGroup_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ScenarioDetailsItem] ADD  CONSTRAINT [DF_ScenarioDetailsItem_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ScenarioDetailsItemLocalPropertyType_ToBeDeleted] ADD  CONSTRAINT [DF_ScenarioDetailsItemLocalPropertyType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ScenarioPriceRule] ADD  CONSTRAINT [DF_ScenarioPriceRule_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ScenarioSearchConditions] ADD  CONSTRAINT [DF_ScenarioSearch_CreateDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ScenarioType] ADD  CONSTRAINT [DF_ScenarioType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ScenarioTypeSelectionScope] ADD  CONSTRAINT [DF_ScenarioTypeSelectionScope_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ShippingMethod] ADD  CONSTRAINT [DF_ShippingMethod_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Supplier] ADD  CONSTRAINT [DF_Supplier_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[TransactionType] ADD  CONSTRAINT [DF_TransactionType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[UserProfile] ADD  CONSTRAINT [DF_UserProfile_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[WebApiProcess] ADD  CONSTRAINT [DF_WebApiProcess_StartDate]  DEFAULT ((0)) FOR [StartDate]
GO
ALTER TABLE [history].[ApprovalDeltaFunctionHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[ApprovalDeltaFunctionHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[ApprovalInternalPriceRequestHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[ApprovalInternalPriceRequestHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[ApprovalThresholdLevelHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[ApprovalThresholdLevelHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[BillOfMaterialHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[BillOfMaterialHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[BOMCalculationConfigurationHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[BOMCalculationConfigurationHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[DampeningRangeVQHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[DampeningRangeVQHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[FactorHistory] ADD  CONSTRAINT [DF_FactorHistory_HistoryDate]  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[FactorLeafValuesHistory] ADD  CONSTRAINT [DF_FactorLeafValuesHistory_HistoryDate]  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[FactorValuesHistory] ADD  CONSTRAINT [DF_FactorValuesHistory_HistoryDate]  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[FutureGroupDetailsHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[FutureGroupDetailsHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[FutureOutgoingProcessHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[FutureOutgoingProcessHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[GroupDetailsHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[GroupDetailsHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[GroupHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[GroupHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[InternalPriceHistory] ADD  CONSTRAINT [DF_InternalPriceHistory_HistoryDate]  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[ItemLocalPropertyHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[ItemLocalPropertyHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[ItemLocalStateHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[ItemLocalStateHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[ItemSelectionScopeHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[ItemSelectionScopeHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[ItemSuppliersHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[ItemSuppliersHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[MetaColumnDynamicListHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[MetaColumnDynamicListHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[MetaColumnDynamicMappingHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[MetaColumnDynamicMappingHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[MetaColumnHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[MetaColumnHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[MetaColumnListValuesHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[MetaColumnListValuesHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[MetaColumnLocalHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[MetaColumnLocalHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[MetaColumnSearchSetupHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[MetaColumnSearchSetupHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[PriceEquationDetailsHistory] ADD  CONSTRAINT [DF_PriceEquationDetailsHistory_CreatedDate]  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[PriceEquationHistory] ADD  CONSTRAINT [DF_PriceEquationHistory_CreatedDate]  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[PriceLeaderHierarchyHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[PriceLeaderHierarchyHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[PriceRuleDetailsCommentHistory] ADD  CONSTRAINT [DF_PriceRuleCommentHistory_CreatedDate]  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[PriceRuleDetailsHistory] ADD  CONSTRAINT [DF_PriceRuleDetailsHistory_CreatedDate]  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[PriceRuleHistory] ADD  CONSTRAINT [DF_PriceRuleHistory_CreatedDate]  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[PriceRulePostConditionsHistory] ADD  CONSTRAINT [DF_PriceRulePostConditionsHistory_CreatedDate]  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[PriceRulePriceIndexHistory] ADD  CONSTRAINT [DF_PriceRulePriceIndexHistory_CreatedDate]  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[PriceRuleSubDetailsHistory] ADD  CONSTRAINT [DF_PriceRuleSubDetailsHistory_CreatedDate]  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[RoundingMappingHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[RoundingMappingHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[RoundingRuleDetailsHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[RoundingRuleDetailsHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[RoundingRuleHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[RoundingRuleHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[RuntimePriceConfigurationHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[RuntimePriceConfigurationHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[ScenarioDetailsGroupHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[ScenarioDetailsGroupHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[ScenarioDetailsItemHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[ScenarioDetailsItemHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[ScenarioDetailsItemLocalPropertyTypeHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[ScenarioDetailsItemLocalPropertyTypeHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[ScenarioHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[ScenarioHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[ScenarioPriceRuleHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[ScenarioPriceRuleHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[ScenarioTypeHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[ScenarioTypeHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[ScenarioTypeSelectionScopeHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[ScenarioTypeSelectionScopeHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [history].[SupplierHistory] ADD  DEFAULT (getdate()) FOR [HistoryDate]
GO
ALTER TABLE [history].[SupplierHistory] ADD  DEFAULT (app_name()) FOR [SourceOfChange]
GO
ALTER TABLE [import].[BEGroup] ADD  CONSTRAINT [DF_BEGroup_ImportStatus]  DEFAULT ((0)) FOR [ImportStatus]
GO
ALTER TABLE [import].[BEGroupDetails] ADD  CONSTRAINT [DF_BEGroupDetails_ImportStatus]  DEFAULT ((0)) FOR [ImportStatus]
GO
ALTER TABLE [import].[BillOfMaterial] ADD  CONSTRAINT [DF_BillOfMaterial_ImportStatus]  DEFAULT ((0)) FOR [ImportStatus]
GO
ALTER TABLE [import].[BusinessEntity] ADD  CONSTRAINT [DF_BusinessEntity_ImportStatus]  DEFAULT ((0)) FOR [ImportStatus]
GO
ALTER TABLE [import].[BusinessModelSetup] ADD  CONSTRAINT [DF_BusinessModelSetup_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [import].[CompetitorPrice] ADD  CONSTRAINT [DF_CompetitorPrice_ImportStatus]  DEFAULT ((0)) FOR [ImportStatus]
GO
ALTER TABLE [import].[Customer] ADD  CONSTRAINT [DF_Customer_ImportStatus]  DEFAULT ((0)) FOR [ImportStatus]
GO
ALTER TABLE [import].[ExchangeRate] ADD  CONSTRAINT [DF_ExchangeRate_ImportStatus]  DEFAULT ((0)) FOR [ImportStatus]
GO
ALTER TABLE [import].[Group] ADD  CONSTRAINT [DF_Group_ImportStatus]  DEFAULT ((0)) FOR [ImportStatus]
GO
ALTER TABLE [import].[GuidedSetupWizardStatus] ADD  CONSTRAINT [DF_GuidedSetupWizardStatus_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [import].[GuidedSetupWizardStatusType] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [import].[GuidedSetupWizardStatusType] ADD  DEFAULT ('#FFF') FOR [Color]
GO
ALTER TABLE [import].[GuidedSetupWizardStatusType] ADD  CONSTRAINT [DF_GuidedSetupWizardStatusType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [import].[GuidedSetupWizardStep] ADD  CONSTRAINT [DF_GuidedSetupWizardStep_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [import].[GuidedSetupWizardStepDetails] ADD  CONSTRAINT [DF_GuidedSetupWizardStepDetails_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [import].[ImportConfiguration] ADD  CONSTRAINT [DF_ImportConfiguration_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [import].[ImportFailedRecord] ADD  CONSTRAINT [DF_ImportFailedRecord_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [import].[ImportRequest] ADD  CONSTRAINT [DF_ImportRequest_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [import].[ImportStep] ADD  CONSTRAINT [DF_ImportStep_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [import].[ImportType] ADD  CONSTRAINT [DF_ImportType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [import].[Industry] ADD  CONSTRAINT [DF_Industry_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [import].[Item] ADD  CONSTRAINT [DF_Item_ImportStatus]  DEFAULT ((0)) FOR [ImportStatus]
GO
ALTER TABLE [import].[ItemGroup] ADD  CONSTRAINT [DF_ItemGroup_ImportStatus]  DEFAULT ((0)) FOR [ImportStatus]
GO
ALTER TABLE [import].[ItemProperties] ADD  CONSTRAINT [DF_ItemProperties_ImportStatus]  DEFAULT ((0)) FOR [ImportStatus]
GO
ALTER TABLE [import].[SalesTransaction] ADD  CONSTRAINT [DF_SalesTransaction_ImportStatus]  DEFAULT ((0)) FOR [ImportStatus]
GO
ALTER TABLE [NPP3Archive].[InternalPrice] ADD  CONSTRAINT [DF_InternalPrice_Priority]  DEFAULT ((0)) FOR [Priority]
GO
ALTER TABLE [NPP3Archive].[InternalPrice] ADD  CONSTRAINT [DF_InternalPrice_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [NPP3Archive].[ItemLocalProperty] ADD  CONSTRAINT [DF_ItemLocalProperty_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [permission].[DatabaseRole] ADD  CONSTRAINT [DF_DatabaseRole_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [security].[BusinessEntityContainer] ADD  CONSTRAINT [DF_BusinessEntityContainer_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [security].[ItemProtectionSource] ADD  CONSTRAINT [DF_ItemProtectionSource_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [security].[ItemProtectionSourceType] ADD  CONSTRAINT [DF_ItemProtectionSourceType_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [security].[PermissionContainer] ADD  CONSTRAINT [DF_PermissionContainer_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [security].[Role] ADD  CONSTRAINT [DF_Roles_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [security].[RoleFeature] ADD  CONSTRAINT [DF_RoleFeature_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [security].[RoleMetaColumn] ADD  CONSTRAINT [DF_RoleMetaColumn_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [security].[RoleMetaColumnAssortment] ADD  CONSTRAINT [DF_RoleMetaColumnAssortment_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [security].[RoleMetaColumnGroup] ADD  CONSTRAINT [DF_RoleMetaColumnGroup_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [security].[RoleModule] ADD  CONSTRAINT [DF_RoleModule_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [security].[RolePlugin] ADD  CONSTRAINT [DF_RolePlugin_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [security].[User] ADD  CONSTRAINT [DF_User_isBlocked]  DEFAULT ((0)) FOR [isBlocked]
GO
ALTER TABLE [security].[User] ADD  CONSTRAINT [DF_User_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [security].[UserAPIKey] ADD  CONSTRAINT [DF_UserAPIKey_APIKey]  DEFAULT (newid()) FOR [APIKey]
GO
ALTER TABLE [security].[UserRole] ADD  CONSTRAINT [DF_UserRole_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [security].[UserRoleBusinessEntity] ADD  CONSTRAINT [DF_UserRoleBusinessEntity_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [security].[UserRolePermissionContainer] ADD  CONSTRAINT [DF_UserRolePermissionContainer_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [Approval].[DeltaFunction]  WITH CHECK ADD  CONSTRAINT [FK_DeltaFunction_BusinessEntityContainer] FOREIGN KEY([BusinessEntityContainerID])
REFERENCES [security].[BusinessEntityContainer] ([ID])
GO
ALTER TABLE [Approval].[DeltaFunction] CHECK CONSTRAINT [FK_DeltaFunction_BusinessEntityContainer]
GO
ALTER TABLE [Approval].[DeltaFunction]  WITH CHECK ADD  CONSTRAINT [FK_DeltaFunction_Type] FOREIGN KEY([TypeId])
REFERENCES [Approval].[Type] ([ID])
GO
ALTER TABLE [Approval].[DeltaFunction] CHECK CONSTRAINT [FK_DeltaFunction_Type]
GO
ALTER TABLE [Approval].[InternalPriceRequest]  WITH CHECK ADD  CONSTRAINT [FK_InternalPriceRequest_Item] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [Approval].[InternalPriceRequest] CHECK CONSTRAINT [FK_InternalPriceRequest_Item]
GO
ALTER TABLE [Approval].[InternalPriceRequest]  WITH CHECK ADD  CONSTRAINT [FK_InternalPriceRequest_Status] FOREIGN KEY([StatusId])
REFERENCES [Approval].[Status] ([ID])
GO
ALTER TABLE [Approval].[InternalPriceRequest] CHECK CONSTRAINT [FK_InternalPriceRequest_Status]
GO
ALTER TABLE [Approval].[InternalPriceRequest]  WITH CHECK ADD  CONSTRAINT [FK_InternalPriceRequest_Type] FOREIGN KEY([TypeId])
REFERENCES [Approval].[Type] ([ID])
GO
ALTER TABLE [Approval].[InternalPriceRequest] CHECK CONSTRAINT [FK_InternalPriceRequest_Type]
GO
ALTER TABLE [Approval].[ThresholdLevel]  WITH CHECK ADD  CONSTRAINT [FK_ThresholdLevel_BusinessEntity] FOREIGN KEY([BusinessEntityID])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [Approval].[ThresholdLevel] CHECK CONSTRAINT [FK_ThresholdLevel_BusinessEntity]
GO
ALTER TABLE [Approval].[ThresholdLevel]  WITH CHECK ADD  CONSTRAINT [FK_ThresholdLevel_Feature] FOREIGN KEY([FeatureId])
REFERENCES [dbo].[Feature] ([ID])
GO
ALTER TABLE [Approval].[ThresholdLevel] CHECK CONSTRAINT [FK_ThresholdLevel_Feature]
GO
ALTER TABLE [Approval].[ThresholdLevel]  WITH CHECK ADD  CONSTRAINT [FK_ThresholdLevel_Type] FOREIGN KEY([TypeId])
REFERENCES [Approval].[Type] ([ID])
GO
ALTER TABLE [Approval].[ThresholdLevel] CHECK CONSTRAINT [FK_ThresholdLevel_Type]
GO
ALTER TABLE [Competitor].[AdditionalPrice]  WITH CHECK ADD  CONSTRAINT [FK_AdditionalPrice_AdditionalPriceType] FOREIGN KEY([AdditionalPriceTypeId])
REFERENCES [Competitor].[AdditionalPriceType] ([ID])
GO
ALTER TABLE [Competitor].[AdditionalPrice] CHECK CONSTRAINT [FK_AdditionalPrice_AdditionalPriceType]
GO
ALTER TABLE [Competitor].[AdditionalPrice]  WITH CHECK ADD  CONSTRAINT [FK_AdditionalPrice_CompetitorPrice] FOREIGN KEY([CompetitorPriceId])
REFERENCES [Competitor].[Price] ([ID])
GO
ALTER TABLE [Competitor].[AdditionalPrice] CHECK CONSTRAINT [FK_AdditionalPrice_CompetitorPrice]
GO
ALTER TABLE [Competitor].[BusinessEntityList]  WITH CHECK ADD  CONSTRAINT [FK_BusinessEntityList_BusinessEntity] FOREIGN KEY([BusinessEntityId])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [Competitor].[BusinessEntityList] CHECK CONSTRAINT [FK_BusinessEntityList_BusinessEntity]
GO
ALTER TABLE [Competitor].[BusinessEntityList]  WITH CHECK ADD  CONSTRAINT [FK_BusinessEntityList_Price] FOREIGN KEY([PriceId])
REFERENCES [Competitor].[Price] ([ID])
GO
ALTER TABLE [Competitor].[BusinessEntityList] CHECK CONSTRAINT [FK_BusinessEntityList_Price]
GO
ALTER TABLE [Competitor].[Competitor]  WITH CHECK ADD  CONSTRAINT [FK_Competitor_CompetitorType] FOREIGN KEY([CompetitorTypeID])
REFERENCES [Competitor].[CompetitorType] ([ID])
GO
ALTER TABLE [Competitor].[Competitor] CHECK CONSTRAINT [FK_Competitor_CompetitorType]
GO
ALTER TABLE [Competitor].[Competitor]  WITH CHECK ADD  CONSTRAINT [FK_Competitor_DistributionModel] FOREIGN KEY([DistributionModelID])
REFERENCES [Competitor].[DistributionModel] ([ID])
GO
ALTER TABLE [Competitor].[Competitor] CHECK CONSTRAINT [FK_Competitor_DistributionModel]
GO
ALTER TABLE [Competitor].[Competitor]  WITH CHECK ADD  CONSTRAINT [FK_CompetitorType_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [Competitor].[Competitor] CHECK CONSTRAINT [FK_CompetitorType_Country]
GO
ALTER TABLE [Competitor].[CompetitorProperty]  WITH CHECK ADD  CONSTRAINT [FK_CompetitorProperty_Competitor] FOREIGN KEY([CompetitorId])
REFERENCES [Competitor].[Competitor] ([ID])
GO
ALTER TABLE [Competitor].[CompetitorProperty] CHECK CONSTRAINT [FK_CompetitorProperty_Competitor]
GO
ALTER TABLE [Competitor].[CompetitorProperty]  WITH CHECK ADD  CONSTRAINT [FK_CompetitorProperty_CompetitorPropertyType] FOREIGN KEY([CompetitorPropertyTypeId])
REFERENCES [Competitor].[CompetitorPropertyType] ([ID])
GO
ALTER TABLE [Competitor].[CompetitorProperty] CHECK CONSTRAINT [FK_CompetitorProperty_CompetitorPropertyType]
GO
ALTER TABLE [Competitor].[CompetitorReference]  WITH CHECK ADD  CONSTRAINT [FK_CompetitorReference_Competitor] FOREIGN KEY([CompetitorId])
REFERENCES [Competitor].[Competitor] ([ID])
GO
ALTER TABLE [Competitor].[CompetitorReference] CHECK CONSTRAINT [FK_CompetitorReference_Competitor]
GO
ALTER TABLE [Competitor].[CompetitorReference]  WITH CHECK ADD  CONSTRAINT [FK_CompetitorReference_CompetitorReferenceType] FOREIGN KEY([CompetitorReferenceTypeId])
REFERENCES [Competitor].[CompetitorReferenceType] ([ID])
GO
ALTER TABLE [Competitor].[CompetitorReference] CHECK CONSTRAINT [FK_CompetitorReference_CompetitorReferenceType]
GO
ALTER TABLE [Competitor].[GlobalWeighting]  WITH CHECK ADD  CONSTRAINT [FK_GlobalWeighting_Competitor] FOREIGN KEY([CompetitorId])
REFERENCES [Competitor].[Competitor] ([ID])
GO
ALTER TABLE [Competitor].[GlobalWeighting] CHECK CONSTRAINT [FK_GlobalWeighting_Competitor]
GO
ALTER TABLE [Competitor].[LeadingPriorityList]  WITH CHECK ADD  CONSTRAINT [FK_LeadingPriorityList_BusinessEntity] FOREIGN KEY([BusinessEntityId])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [Competitor].[LeadingPriorityList] CHECK CONSTRAINT [FK_LeadingPriorityList_BusinessEntity]
GO
ALTER TABLE [Competitor].[LeadingPriorityList]  WITH CHECK ADD  CONSTRAINT [FK_LeadingPriorityList_Competitor] FOREIGN KEY([CompetitorId])
REFERENCES [Competitor].[Competitor] ([ID])
GO
ALTER TABLE [Competitor].[LeadingPriorityList] CHECK CONSTRAINT [FK_LeadingPriorityList_Competitor]
GO
ALTER TABLE [Competitor].[LeadingPriorityList]  WITH CHECK ADD  CONSTRAINT [FK_LeadingPriorityList_Group] FOREIGN KEY([Groupid])
REFERENCES [dbo].[Group] ([ID])
GO
ALTER TABLE [Competitor].[LeadingPriorityList] CHECK CONSTRAINT [FK_LeadingPriorityList_Group]
GO
ALTER TABLE [Competitor].[Price]  WITH CHECK ADD  CONSTRAINT [FK_Price_Availability] FOREIGN KEY([AvailabilityId])
REFERENCES [Competitor].[PriceAvailability] ([ID])
GO
ALTER TABLE [Competitor].[Price] CHECK CONSTRAINT [FK_Price_Availability]
GO
ALTER TABLE [Competitor].[Price]  WITH CHECK ADD  CONSTRAINT [FK_Price_Competitor] FOREIGN KEY([CompetitorId])
REFERENCES [Competitor].[Competitor] ([ID])
GO
ALTER TABLE [Competitor].[Price] CHECK CONSTRAINT [FK_Price_Competitor]
GO
ALTER TABLE [Competitor].[Price]  WITH CHECK ADD  CONSTRAINT [FK_Price_Item] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [Competitor].[Price] CHECK CONSTRAINT [FK_Price_Item]
GO
ALTER TABLE [Competitor].[Price]  WITH CHECK ADD  CONSTRAINT [FK_Price_Source] FOREIGN KEY([SourceId])
REFERENCES [Competitor].[PriceSource] ([ID])
GO
ALTER TABLE [Competitor].[Price] CHECK CONSTRAINT [FK_Price_Source]
GO
ALTER TABLE [Competitor].[PriceAttachment]  WITH CHECK ADD  CONSTRAINT [FK_PriceAttachment_AttachmentType] FOREIGN KEY([AttachmentTypeId])
REFERENCES [Competitor].[PriceAttachmentType] ([ID])
GO
ALTER TABLE [Competitor].[PriceAttachment] CHECK CONSTRAINT [FK_PriceAttachment_AttachmentType]
GO
ALTER TABLE [Competitor].[PriceAttachment]  WITH CHECK ADD  CONSTRAINT [FK_PriceAttachment_Price] FOREIGN KEY([PriceId])
REFERENCES [Competitor].[Price] ([ID])
GO
ALTER TABLE [Competitor].[PriceAttachment] CHECK CONSTRAINT [FK_PriceAttachment_Price]
GO
ALTER TABLE [Competitor].[Weighting]  WITH CHECK ADD  CONSTRAINT [FK_Weighting_BusinessEntity] FOREIGN KEY([BusinessEntityId])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [Competitor].[Weighting] CHECK CONSTRAINT [FK_Weighting_BusinessEntity]
GO
ALTER TABLE [Competitor].[Weighting]  WITH CHECK ADD  CONSTRAINT [FK_Weighting_Competitor] FOREIGN KEY([CompetitorId])
REFERENCES [Competitor].[Competitor] ([ID])
GO
ALTER TABLE [Competitor].[Weighting] CHECK CONSTRAINT [FK_Weighting_Competitor]
GO
ALTER TABLE [dbo].[AggregationConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_AggregationConfiguration_TransactionType] FOREIGN KEY([TransactionTypeId])
REFERENCES [dbo].[TransactionType] ([ID])
GO
ALTER TABLE [dbo].[AggregationConfiguration] CHECK CONSTRAINT [FK_AggregationConfiguration_TransactionType]
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_PasswordHistory]  WITH CHECK ADD  CONSTRAINT [FK_aspnet_PasswordHistory_aspnet_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_PasswordHistory] CHECK CONSTRAINT [FK_aspnet_PasswordHistory_aspnet_Users_UserId]
GO
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[Assortment]  WITH CHECK ADD  CONSTRAINT [FK_Assortment_BusinessEntityContainer] FOREIGN KEY([BusinessEntityContainerId])
REFERENCES [security].[BusinessEntityContainer] ([ID])
GO
ALTER TABLE [dbo].[Assortment] CHECK CONSTRAINT [FK_Assortment_BusinessEntityContainer]
GO
ALTER TABLE [dbo].[Assortment]  WITH CHECK ADD  CONSTRAINT [FK_Assortment_PermissionContainer] FOREIGN KEY([PermissionContainerId])
REFERENCES [security].[PermissionContainer] ([ID])
GO
ALTER TABLE [dbo].[Assortment] CHECK CONSTRAINT [FK_Assortment_PermissionContainer]
GO
ALTER TABLE [dbo].[BillOfMaterial]  WITH CHECK ADD  CONSTRAINT [FK_BillOfMaterial_BOMImage] FOREIGN KEY([ImageId])
REFERENCES [dbo].[BOMImage] ([ID])
GO
ALTER TABLE [dbo].[BillOfMaterial] CHECK CONSTRAINT [FK_BillOfMaterial_BOMImage]
GO
ALTER TABLE [dbo].[BillOfMaterial]  WITH CHECK ADD  CONSTRAINT [FK_BillOfMaterial_ChildItem] FOREIGN KEY([ChildItemId])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[BillOfMaterial] CHECK CONSTRAINT [FK_BillOfMaterial_ChildItem]
GO
ALTER TABLE [dbo].[BillOfMaterial]  WITH CHECK ADD  CONSTRAINT [FK_BillOfMaterial_Item] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[BillOfMaterial] CHECK CONSTRAINT [FK_BillOfMaterial_Item]
GO
ALTER TABLE [dbo].[BOMCalculationConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_BOMCalculationConfiguration_BusinessEntity] FOREIGN KEY([BusinessEntityID])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [dbo].[BOMCalculationConfiguration] CHECK CONSTRAINT [FK_BOMCalculationConfiguration_BusinessEntity]
GO
ALTER TABLE [dbo].[BOMChildProperty]  WITH NOCHECK ADD  CONSTRAINT [FK_BOMChildProperty_BillOfMaterial] FOREIGN KEY([BOMId])
REFERENCES [dbo].[BillOfMaterial] ([ID])
GO
ALTER TABLE [dbo].[BOMChildProperty] CHECK CONSTRAINT [FK_BOMChildProperty_BillOfMaterial]
GO
ALTER TABLE [dbo].[BOMChildProperty]  WITH CHECK ADD  CONSTRAINT [FK_BOMChildProperty_Item] FOREIGN KEY([TopParentId])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[BOMChildProperty] CHECK CONSTRAINT [FK_BOMChildProperty_Item]
GO
ALTER TABLE [dbo].[BusinessEntity]  WITH CHECK ADD  CONSTRAINT [FK_BuisnessEntity_BuisinessEntityType] FOREIGN KEY([BusinessEntityTypeId])
REFERENCES [dbo].[BusinessEntityType] ([ID])
GO
ALTER TABLE [dbo].[BusinessEntity] CHECK CONSTRAINT [FK_BuisnessEntity_BuisinessEntityType]
GO
ALTER TABLE [dbo].[BusinessEntity]  WITH CHECK ADD  CONSTRAINT [FK_BusinessEntity_BusinessEntityContainer] FOREIGN KEY([BusinessEntityContainerId])
REFERENCES [security].[BusinessEntityContainer] ([ID])
GO
ALTER TABLE [dbo].[BusinessEntity] CHECK CONSTRAINT [FK_BusinessEntity_BusinessEntityContainer]
GO
ALTER TABLE [dbo].[BusinessEntity]  WITH CHECK ADD  CONSTRAINT [FK_BusinessEntity_Country] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[BusinessEntity] CHECK CONSTRAINT [FK_BusinessEntity_Country]
GO
ALTER TABLE [dbo].[BusinessEntity]  WITH CHECK ADD  CONSTRAINT [FK_BusinessEntity_Currency] FOREIGN KEY([CurrencyNumCode])
REFERENCES [dbo].[Currency] ([NumericCode])
GO
ALTER TABLE [dbo].[BusinessEntity] CHECK CONSTRAINT [FK_BusinessEntity_Currency]
GO
ALTER TABLE [dbo].[BusinessEntityGroup]  WITH CHECK ADD  CONSTRAINT [FK_BusinessEntityGroup_BusinessEntityContainer] FOREIGN KEY([BusinessEntityContainerId])
REFERENCES [security].[BusinessEntityContainer] ([ID])
GO
ALTER TABLE [dbo].[BusinessEntityGroup] CHECK CONSTRAINT [FK_BusinessEntityGroup_BusinessEntityContainer]
GO
ALTER TABLE [dbo].[BusinessEntityGroup]  WITH CHECK ADD  CONSTRAINT [FK_BusinessEntityGroup_BusinessEntityStructure] FOREIGN KEY([BusinessEntityStructureId])
REFERENCES [dbo].[BusinessEntityStructure] ([ID])
GO
ALTER TABLE [dbo].[BusinessEntityGroup] CHECK CONSTRAINT [FK_BusinessEntityGroup_BusinessEntityStructure]
GO
ALTER TABLE [dbo].[BusinessEntityGroupDetails]  WITH CHECK ADD  CONSTRAINT [FK_BusinessEntityGroupDetails_BusinessEntity] FOREIGN KEY([BusinessEntityId])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [dbo].[BusinessEntityGroupDetails] CHECK CONSTRAINT [FK_BusinessEntityGroupDetails_BusinessEntity]
GO
ALTER TABLE [dbo].[BusinessEntityGroupDetails]  WITH CHECK ADD  CONSTRAINT [FK_BusinessEntityGroupDetails_BusinessEntityGroup] FOREIGN KEY([BusinessEntityGroupId])
REFERENCES [dbo].[BusinessEntityGroup] ([ID])
GO
ALTER TABLE [dbo].[BusinessEntityGroupDetails] CHECK CONSTRAINT [FK_BusinessEntityGroupDetails_BusinessEntityGroup]
GO
ALTER TABLE [dbo].[BusinessEntityGroupHierarchy]  WITH CHECK ADD  CONSTRAINT [FK_BusinessEntityGroupHierarchy_BusinessEntityGroup] FOREIGN KEY([BusinessEntityGroupId])
REFERENCES [dbo].[BusinessEntityGroup] ([ID])
GO
ALTER TABLE [dbo].[BusinessEntityGroupHierarchy] CHECK CONSTRAINT [FK_BusinessEntityGroupHierarchy_BusinessEntityGroup]
GO
ALTER TABLE [dbo].[BusinessEntityGroupHierarchy]  WITH CHECK ADD  CONSTRAINT [FK_BusinessEntityGroupHierarchy_BusinessEntityGroup2] FOREIGN KEY([BusinessEntityGroupParentId])
REFERENCES [dbo].[BusinessEntityGroup] ([ID])
GO
ALTER TABLE [dbo].[BusinessEntityGroupHierarchy] CHECK CONSTRAINT [FK_BusinessEntityGroupHierarchy_BusinessEntityGroup2]
GO
ALTER TABLE [dbo].[BusinessEntityStructure]  WITH CHECK ADD  CONSTRAINT [FK_BusinessEntityStructure_BusinessEntity] FOREIGN KEY([BusinessEntityBranchId])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [dbo].[BusinessEntityStructure] CHECK CONSTRAINT [FK_BusinessEntityStructure_BusinessEntity]
GO
ALTER TABLE [dbo].[BusinessEntityStructure]  WITH CHECK ADD  CONSTRAINT [FK_BusinessEntityStructure_BusinessEntityStructureType] FOREIGN KEY([BusinessEntityStructureTypeId])
REFERENCES [dbo].[BusinessEntityStructureType] ([ID])
GO
ALTER TABLE [dbo].[BusinessEntityStructure] CHECK CONSTRAINT [FK_BusinessEntityStructure_BusinessEntityStructureType]
GO
ALTER TABLE [dbo].[BusinessEntityStructureTypeRule]  WITH CHECK ADD  CONSTRAINT [FK_BusinessEntityStructureTypeRule_BuisinessEntityStructureType] FOREIGN KEY([BusinessEntityStructureTypeId])
REFERENCES [dbo].[BusinessEntityStructureType] ([ID])
GO
ALTER TABLE [dbo].[BusinessEntityStructureTypeRule] CHECK CONSTRAINT [FK_BusinessEntityStructureTypeRule_BuisinessEntityStructureType]
GO
ALTER TABLE [dbo].[BusinessEntityStructureTypeRule]  WITH CHECK ADD  CONSTRAINT [FK_BusinessEntityStructureTypeRule_BuisinessEntityType] FOREIGN KEY([BusinessEntityTypeId])
REFERENCES [dbo].[BusinessEntityType] ([ID])
GO
ALTER TABLE [dbo].[BusinessEntityStructureTypeRule] CHECK CONSTRAINT [FK_BusinessEntityStructureTypeRule_BuisinessEntityType]
GO
ALTER TABLE [dbo].[BusinessStructure]  WITH CHECK ADD  CONSTRAINT [FK_BusinessStructure_BusinessStructureType] FOREIGN KEY([BusinessStructureTypeId])
REFERENCES [dbo].[BusinessStructureType] ([ID])
GO
ALTER TABLE [dbo].[BusinessStructure] CHECK CONSTRAINT [FK_BusinessStructure_BusinessStructureType]
GO
ALTER TABLE [dbo].[BusinessStructure]  WITH CHECK ADD  CONSTRAINT [FK_BusinessStructure_Rule] FOREIGN KEY([RuleId])
REFERENCES [dbo].[Rule] ([ID])
GO
ALTER TABLE [dbo].[BusinessStructure] CHECK CONSTRAINT [FK_BusinessStructure_Rule]
GO
ALTER TABLE [dbo].[BusinessStructureHierarchy]  WITH CHECK ADD  CONSTRAINT [FK_BusinessStructureHierarchy_BusinessStructure] FOREIGN KEY([BusinessStructureId])
REFERENCES [dbo].[BusinessStructure] ([ID])
GO
ALTER TABLE [dbo].[BusinessStructureHierarchy] CHECK CONSTRAINT [FK_BusinessStructureHierarchy_BusinessStructure]
GO
ALTER TABLE [dbo].[BusinessStructureHierarchy]  WITH CHECK ADD  CONSTRAINT [FK_BusinessStructureHierarchy_Group] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([ID])
GO
ALTER TABLE [dbo].[BusinessStructureHierarchy] CHECK CONSTRAINT [FK_BusinessStructureHierarchy_Group]
GO
ALTER TABLE [dbo].[BusinessStructureHierarchy]  WITH CHECK ADD  CONSTRAINT [FK_BusinessStructureHierarchy_ParentGroup] FOREIGN KEY([ParentGroupId])
REFERENCES [dbo].[Group] ([ID])
GO
ALTER TABLE [dbo].[BusinessStructureHierarchy] CHECK CONSTRAINT [FK_BusinessStructureHierarchy_ParentGroup]
GO
ALTER TABLE [dbo].[BusinessStructureType]  WITH CHECK ADD  CONSTRAINT [FK_BusinessStructureType_GroupType] FOREIGN KEY([GroupTypeId])
REFERENCES [dbo].[GroupType] ([ID])
GO
ALTER TABLE [dbo].[BusinessStructureType] CHECK CONSTRAINT [FK_BusinessStructureType_GroupType]
GO
ALTER TABLE [dbo].[Catalog]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_BusinessEntity] FOREIGN KEY([BusinessEntityId])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [dbo].[Catalog] CHECK CONSTRAINT [FK_Catalog_BusinessEntity]
GO
ALTER TABLE [dbo].[Catalog]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_BusinessEntityContainer] FOREIGN KEY([BusinessEntityContainerId])
REFERENCES [security].[BusinessEntityContainer] ([ID])
GO
ALTER TABLE [dbo].[Catalog] CHECK CONSTRAINT [FK_Catalog_BusinessEntityContainer]
GO
ALTER TABLE [dbo].[Catalog]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_CatalogType] FOREIGN KEY([CatalogTypeId])
REFERENCES [dbo].[CatalogType] ([ID])
GO
ALTER TABLE [dbo].[Catalog] CHECK CONSTRAINT [FK_Catalog_CatalogType]
GO
ALTER TABLE [dbo].[CatalogDetails]  WITH CHECK ADD  CONSTRAINT [FK_CatalogDetails_Catalog] FOREIGN KEY([CatalogId])
REFERENCES [dbo].[Catalog] ([ID])
GO
ALTER TABLE [dbo].[CatalogDetails] CHECK CONSTRAINT [FK_CatalogDetails_Catalog]
GO
ALTER TABLE [dbo].[CatalogDetails]  WITH CHECK ADD  CONSTRAINT [FK_CatalogDetails_Item] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[CatalogDetails] CHECK CONSTRAINT [FK_CatalogDetails_Item]
GO
ALTER TABLE [dbo].[CatalogTransition]  WITH CHECK ADD  CONSTRAINT [FK_CatalogTransition_BusinessEntity] FOREIGN KEY([ReceiverId])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [dbo].[CatalogTransition] CHECK CONSTRAINT [FK_CatalogTransition_BusinessEntity]
GO
ALTER TABLE [dbo].[CatalogTransition]  WITH CHECK ADD  CONSTRAINT [FK_CatalogTransition_Catalog] FOREIGN KEY([CatalogId])
REFERENCES [dbo].[Catalog] ([ID])
GO
ALTER TABLE [dbo].[CatalogTransition] CHECK CONSTRAINT [FK_CatalogTransition_Catalog]
GO
ALTER TABLE [dbo].[Country]  WITH CHECK ADD  CONSTRAINT [FK_Country_Currency] FOREIGN KEY([CurrencyNumCode])
REFERENCES [dbo].[Currency] ([NumericCode])
GO
ALTER TABLE [dbo].[Country] CHECK CONSTRAINT [FK_Country_Currency]
GO
ALTER TABLE [dbo].[CountrySettings]  WITH CHECK ADD  CONSTRAINT [FK_Country_CountryID] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[CountrySettings] CHECK CONSTRAINT [FK_Country_CountryID]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_BeC] FOREIGN KEY([BusinessEntityContainerId])
REFERENCES [security].[BusinessEntityContainer] ([ID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_BeC]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_BusinessEntityType] FOREIGN KEY([BusinessEntityTypeID])
REFERENCES [dbo].[BusinessEntityType] ([ID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_BusinessEntityType]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Country]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_Currency] FOREIGN KEY([CurrencyNumCode])
REFERENCES [dbo].[Currency] ([NumericCode])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_Currency]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_CustomerType] FOREIGN KEY([CustomerTypeID])
REFERENCES [dbo].[CustomerType] ([ID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_CustomerType]
GO
ALTER TABLE [dbo].[DampeningRangeVQ]  WITH CHECK ADD  CONSTRAINT [FK_DampeningRangeVQ_Scenario] FOREIGN KEY([ScenarioID])
REFERENCES [dbo].[Scenario] ([ID])
GO
ALTER TABLE [dbo].[DampeningRangeVQ] CHECK CONSTRAINT [FK_DampeningRangeVQ_Scenario]
GO
ALTER TABLE [dbo].[DashboardAlert]  WITH CHECK ADD  CONSTRAINT [FK_DashboardAlert_DashboardAlertBox] FOREIGN KEY([DashboardAlertBoxId])
REFERENCES [dbo].[DashboardAlertBox] ([Id])
GO
ALTER TABLE [dbo].[DashboardAlert] CHECK CONSTRAINT [FK_DashboardAlert_DashboardAlertBox]
GO
ALTER TABLE [dbo].[DashboardAlert]  WITH CHECK ADD  CONSTRAINT [FK_DashboardAlert_Feature] FOREIGN KEY([FeatureId])
REFERENCES [dbo].[Feature] ([ID])
GO
ALTER TABLE [dbo].[DashboardAlert] CHECK CONSTRAINT [FK_DashboardAlert_Feature]
GO
ALTER TABLE [dbo].[DashboardAlertBox]  WITH CHECK ADD  CONSTRAINT [FK_DashboardAlertBox_Feature] FOREIGN KEY([FeatureId])
REFERENCES [dbo].[Feature] ([ID])
GO
ALTER TABLE [dbo].[DashboardAlertBox] CHECK CONSTRAINT [FK_DashboardAlertBox_Feature]
GO
ALTER TABLE [dbo].[DashboardAlertCount]  WITH CHECK ADD  CONSTRAINT [FK_DashboardAlertCount_BusinessEntity] FOREIGN KEY([BusinessEntityId])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [dbo].[DashboardAlertCount] CHECK CONSTRAINT [FK_DashboardAlertCount_BusinessEntity]
GO
ALTER TABLE [dbo].[DashboardAlertCount]  WITH CHECK ADD  CONSTRAINT [FK_DashboardAlertCount_DashboardAlert] FOREIGN KEY([DashboardAlertId])
REFERENCES [dbo].[DashboardAlert] ([Id])
GO
ALTER TABLE [dbo].[DashboardAlertCount] CHECK CONSTRAINT [FK_DashboardAlertCount_DashboardAlert]
GO
ALTER TABLE [dbo].[DashboardAlertCount]  WITH CHECK ADD  CONSTRAINT [FK_DashboardAlertCount_User] FOREIGN KEY([UserId])
REFERENCES [security].[User] ([ID])
GO
ALTER TABLE [dbo].[DashboardAlertCount] CHECK CONSTRAINT [FK_DashboardAlertCount_User]
GO
ALTER TABLE [dbo].[DefaultNextDate]  WITH CHECK ADD  CONSTRAINT [FK_DefaultNextDate_BusinessEntity] FOREIGN KEY([BusinessEntityId])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [dbo].[DefaultNextDate] CHECK CONSTRAINT [FK_DefaultNextDate_BusinessEntity]
GO
ALTER TABLE [dbo].[DefaultNextDate]  WITH CHECK ADD  CONSTRAINT [FK_DefaultNextDate_Factor] FOREIGN KEY([FactorId])
REFERENCES [dbo].[Factor] ([ID])
GO
ALTER TABLE [dbo].[DefaultNextDate] CHECK CONSTRAINT [FK_DefaultNextDate_Factor]
GO
ALTER TABLE [dbo].[DefaultNextDate]  WITH CHECK ADD  CONSTRAINT [FK_DefaultNextDate_ItemLocalPropertyType] FOREIGN KEY([ItemLocalPropertyTypeId])
REFERENCES [dbo].[ItemLocalPropertyType] ([ID])
GO
ALTER TABLE [dbo].[DefaultNextDate] CHECK CONSTRAINT [FK_DefaultNextDate_ItemLocalPropertyType]
GO
ALTER TABLE [dbo].[DefaultNextDate]  WITH CHECK ADD  CONSTRAINT [FK_DefaultNextDate_Period] FOREIGN KEY([PeriodId])
REFERENCES [dbo].[Period] ([ID])
GO
ALTER TABLE [dbo].[DefaultNextDate] CHECK CONSTRAINT [FK_DefaultNextDate_Period]
GO
ALTER TABLE [dbo].[DefaultNextDate]  WITH CHECK ADD  CONSTRAINT [FK_DefaultNextDate_PriceType] FOREIGN KEY([PriceTypeId])
REFERENCES [dbo].[PriceType] ([ID])
GO
ALTER TABLE [dbo].[DefaultNextDate] CHECK CONSTRAINT [FK_DefaultNextDate_PriceType]
GO
ALTER TABLE [dbo].[Dynamic_UDTMappingColumns]  WITH CHECK ADD  CONSTRAINT [FK_Dynamic_UDTMappingColumns] FOREIGN KEY([DynamicTableID])
REFERENCES [dbo].[DynamicTable] ([ID])
GO
ALTER TABLE [dbo].[Dynamic_UDTMappingColumns] CHECK CONSTRAINT [FK_Dynamic_UDTMappingColumns]
GO
ALTER TABLE [dbo].[ExchangeRate]  WITH CHECK ADD  CONSTRAINT [FK_ExchangeRate_ExchangeRateType] FOREIGN KEY([RateTypeID])
REFERENCES [dbo].[ExchangeRateType] ([ID])
GO
ALTER TABLE [dbo].[ExchangeRate] CHECK CONSTRAINT [FK_ExchangeRate_ExchangeRateType]
GO
ALTER TABLE [dbo].[ExchangeRate]  WITH CHECK ADD  CONSTRAINT [FK_ExchangeRate_From_Currency] FOREIGN KEY([FromCurrencyNumCode])
REFERENCES [dbo].[Currency] ([NumericCode])
GO
ALTER TABLE [dbo].[ExchangeRate] CHECK CONSTRAINT [FK_ExchangeRate_From_Currency]
GO
ALTER TABLE [dbo].[ExchangeRate]  WITH CHECK ADD  CONSTRAINT [FK_ExchangeRate_To_Currency] FOREIGN KEY([ToCurrencyNumCode])
REFERENCES [dbo].[Currency] ([NumericCode])
GO
ALTER TABLE [dbo].[ExchangeRate] CHECK CONSTRAINT [FK_ExchangeRate_To_Currency]
GO
ALTER TABLE [dbo].[Factor]  WITH CHECK ADD  CONSTRAINT [FK_Factor_BusinessEntityStructure] FOREIGN KEY([BusinessEntityStructureID])
REFERENCES [dbo].[BusinessEntityStructure] ([ID])
GO
ALTER TABLE [dbo].[Factor] CHECK CONSTRAINT [FK_Factor_BusinessEntityStructure]
GO
ALTER TABLE [dbo].[Factor]  WITH CHECK ADD  CONSTRAINT [FK_Factor_BusinessStructure] FOREIGN KEY([BusinessStructureID])
REFERENCES [dbo].[BusinessStructure] ([ID])
GO
ALTER TABLE [dbo].[Factor] CHECK CONSTRAINT [FK_Factor_BusinessStructure]
GO
ALTER TABLE [dbo].[FactorLeafValues]  WITH CHECK ADD  CONSTRAINT [FK_FactorLeafValues_BusinessEntity] FOREIGN KEY([BusinessEntityID])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [dbo].[FactorLeafValues] CHECK CONSTRAINT [FK_FactorLeafValues_BusinessEntity]
GO
ALTER TABLE [dbo].[FactorLeafValues]  WITH CHECK ADD  CONSTRAINT [FK_FactorLeafValues_Factor] FOREIGN KEY([FactorID])
REFERENCES [dbo].[Factor] ([ID])
GO
ALTER TABLE [dbo].[FactorLeafValues] CHECK CONSTRAINT [FK_FactorLeafValues_Factor]
GO
ALTER TABLE [dbo].[FactorLeafValues]  WITH CHECK ADD  CONSTRAINT [FK_FactorLeafValues_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([ID])
GO
ALTER TABLE [dbo].[FactorLeafValues] CHECK CONSTRAINT [FK_FactorLeafValues_Group]
GO
ALTER TABLE [dbo].[FactorValues]  WITH CHECK ADD  CONSTRAINT [FK_FactorValues_BusinessEntityGroup] FOREIGN KEY([BusinessEntityGroupID])
REFERENCES [dbo].[BusinessEntityGroup] ([ID])
GO
ALTER TABLE [dbo].[FactorValues] CHECK CONSTRAINT [FK_FactorValues_BusinessEntityGroup]
GO
ALTER TABLE [dbo].[FactorValues]  WITH CHECK ADD  CONSTRAINT [FK_FactorValues_Factor] FOREIGN KEY([FactorID])
REFERENCES [dbo].[Factor] ([ID])
GO
ALTER TABLE [dbo].[FactorValues] CHECK CONSTRAINT [FK_FactorValues_Factor]
GO
ALTER TABLE [dbo].[FactorValues]  WITH CHECK ADD  CONSTRAINT [FK_FactorValues_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([ID])
GO
ALTER TABLE [dbo].[FactorValues] CHECK CONSTRAINT [FK_FactorValues_Group]
GO
ALTER TABLE [dbo].[Feature]  WITH CHECK ADD  CONSTRAINT [FK_Feature_ParentFeature] FOREIGN KEY([ParentFeatureID])
REFERENCES [dbo].[Feature] ([ID])
GO
ALTER TABLE [dbo].[Feature] CHECK CONSTRAINT [FK_Feature_ParentFeature]
GO
ALTER TABLE [dbo].[Feature]  WITH CHECK ADD  CONSTRAINT [FK_Feature_Plugin] FOREIGN KEY([PluginID])
REFERENCES [dbo].[Plugin] ([ID])
GO
ALTER TABLE [dbo].[Feature] CHECK CONSTRAINT [FK_Feature_Plugin]
GO
ALTER TABLE [dbo].[FeatureMetaColumn]  WITH CHECK ADD  CONSTRAINT [FK_FeatureMetaColumn_Feature] FOREIGN KEY([FeatureID])
REFERENCES [dbo].[Feature] ([ID])
GO
ALTER TABLE [dbo].[FeatureMetaColumn] CHECK CONSTRAINT [FK_FeatureMetaColumn_Feature]
GO
ALTER TABLE [dbo].[FeatureMetaColumn]  WITH CHECK ADD  CONSTRAINT [FK_FeatureMetaColumn_MetaColumn] FOREIGN KEY([MetaColumnID])
REFERENCES [dbo].[MetaColumn] ([ID])
GO
ALTER TABLE [dbo].[FeatureMetaColumn] CHECK CONSTRAINT [FK_FeatureMetaColumn_MetaColumn]
GO
ALTER TABLE [dbo].[FeatureMetaColumn]  WITH CHECK ADD  CONSTRAINT [FK_FeatureMetaColumn_Operation] FOREIGN KEY([OperationId])
REFERENCES [dbo].[Operation] ([ID])
GO
ALTER TABLE [dbo].[FeatureMetaColumn] CHECK CONSTRAINT [FK_FeatureMetaColumn_Operation]
GO
ALTER TABLE [dbo].[FutureGroupDetails]  WITH CHECK ADD  CONSTRAINT [FK_FutureGroupDetails_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([ID])
GO
ALTER TABLE [dbo].[FutureGroupDetails] CHECK CONSTRAINT [FK_FutureGroupDetails_Group]
GO
ALTER TABLE [dbo].[FutureGroupDetails]  WITH CHECK ADD  CONSTRAINT [FK_FutureGroupDetails_Item] FOREIGN KEY([ItemID])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[FutureGroupDetails] CHECK CONSTRAINT [FK_FutureGroupDetails_Item]
GO
ALTER TABLE [dbo].[FutureOutgoingProcess]  WITH CHECK ADD  CONSTRAINT [FK_FutureOutgoingProcess_BusinessEntityContainer] FOREIGN KEY([BusinessEntityContainerId])
REFERENCES [security].[BusinessEntityContainer] ([ID])
GO
ALTER TABLE [dbo].[FutureOutgoingProcess] CHECK CONSTRAINT [FK_FutureOutgoingProcess_BusinessEntityContainer]
GO
ALTER TABLE [dbo].[FutureOutgoingProcess]  WITH CHECK ADD  CONSTRAINT [FK_FutureOutgoingProcess_User] FOREIGN KEY([UserId])
REFERENCES [security].[User] ([ID])
GO
ALTER TABLE [dbo].[FutureOutgoingProcess] CHECK CONSTRAINT [FK_FutureOutgoingProcess_User]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_BusinessEntityContainer] FOREIGN KEY([BusinessEntityContainerId])
REFERENCES [security].[BusinessEntityContainer] ([ID])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_BusinessEntityContainer]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_GroupType] FOREIGN KEY([GroupTypeID])
REFERENCES [dbo].[GroupType] ([ID])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_GroupType]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Item] FOREIGN KEY([MasterItemID])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Item]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_PermissionContainer] FOREIGN KEY([PermissionContainerId])
REFERENCES [security].[PermissionContainer] ([ID])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_PermissionContainer]
GO
ALTER TABLE [dbo].[GroupDetails]  WITH CHECK ADD  CONSTRAINT [FK_GroupDetails_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([ID])
GO
ALTER TABLE [dbo].[GroupDetails] CHECK CONSTRAINT [FK_GroupDetails_Group]
GO
ALTER TABLE [dbo].[GroupDetails]  WITH CHECK ADD  CONSTRAINT [FK_GroupDetails_Item] FOREIGN KEY([ItemID])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[GroupDetails] CHECK CONSTRAINT [FK_GroupDetails_Item]
GO
ALTER TABLE [dbo].[GroupLocalProperty]  WITH CHECK ADD  CONSTRAINT [FK_GroupLocalProperty_BusinessEntity] FOREIGN KEY([BusinessEntityID])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [dbo].[GroupLocalProperty] CHECK CONSTRAINT [FK_GroupLocalProperty_BusinessEntity]
GO
ALTER TABLE [dbo].[GroupLocalProperty]  WITH CHECK ADD  CONSTRAINT [FK_GroupLocalProperty_Group] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([ID])
GO
ALTER TABLE [dbo].[GroupLocalProperty] CHECK CONSTRAINT [FK_GroupLocalProperty_Group]
GO
ALTER TABLE [dbo].[GroupLocalProperty]  WITH CHECK ADD  CONSTRAINT [FK_GroupLocalProperty_GroupLocalPropertType] FOREIGN KEY([GroupLocalPropertyTypeId])
REFERENCES [dbo].[GroupLocalPropertyType] ([ID])
GO
ALTER TABLE [dbo].[GroupLocalProperty] CHECK CONSTRAINT [FK_GroupLocalProperty_GroupLocalPropertType]
GO
ALTER TABLE [dbo].[GroupLocalProperty]  WITH CHECK ADD  CONSTRAINT [FK_GroupLocalProperty_GroupLocalPropertyCode] FOREIGN KEY([GroupLocalPropertyCodeId])
REFERENCES [dbo].[GroupLocalPropertyCode] ([ID])
GO
ALTER TABLE [dbo].[GroupLocalProperty] CHECK CONSTRAINT [FK_GroupLocalProperty_GroupLocalPropertyCode]
GO
ALTER TABLE [dbo].[GroupLocalPropertyCode]  WITH CHECK ADD  CONSTRAINT [FK_GroupLocalPropertyCode_BusinessEntity] FOREIGN KEY([BusinessEntityID])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [dbo].[GroupLocalPropertyCode] CHECK CONSTRAINT [FK_GroupLocalPropertyCode_BusinessEntity]
GO
ALTER TABLE [dbo].[GroupLocalPropertyCode]  WITH CHECK ADD  CONSTRAINT [FK_GroupLocalPropertyCode_GroupLocalPropertyType] FOREIGN KEY([GroupLocalPropertyTypeId])
REFERENCES [dbo].[GroupLocalPropertyType] ([ID])
GO
ALTER TABLE [dbo].[GroupLocalPropertyCode] CHECK CONSTRAINT [FK_GroupLocalPropertyCode_GroupLocalPropertyType]
GO
ALTER TABLE [dbo].[GroupProperty]  WITH CHECK ADD  CONSTRAINT [FK_GroupProperty_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([ID])
GO
ALTER TABLE [dbo].[GroupProperty] CHECK CONSTRAINT [FK_GroupProperty_Group]
GO
ALTER TABLE [dbo].[InternalPrice]  WITH CHECK ADD  CONSTRAINT [FK_InternalPrice_BusinessEntity] FOREIGN KEY([BusinessEntityID])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [dbo].[InternalPrice] CHECK CONSTRAINT [FK_InternalPrice_BusinessEntity]
GO
ALTER TABLE [dbo].[InternalPrice]  WITH CHECK ADD  CONSTRAINT [FK_InternalPrice_Currency] FOREIGN KEY([CurrencyNumCode])
REFERENCES [dbo].[Currency] ([NumericCode])
GO
ALTER TABLE [dbo].[InternalPrice] CHECK CONSTRAINT [FK_InternalPrice_Currency]
GO
ALTER TABLE [dbo].[InternalPrice]  WITH CHECK ADD  CONSTRAINT [FK_InternalPrice_PriceCalculation] FOREIGN KEY([PriceCalculationId])
REFERENCES [dbo].[PriceCalculation] ([ID])
GO
ALTER TABLE [dbo].[InternalPrice] CHECK CONSTRAINT [FK_InternalPrice_PriceCalculation]
GO
ALTER TABLE [dbo].[InternalPrice]  WITH CHECK ADD  CONSTRAINT [FK_InternalPrice_PriceType] FOREIGN KEY([PriceTypeID])
REFERENCES [dbo].[PriceType] ([ID])
GO
ALTER TABLE [dbo].[InternalPrice] CHECK CONSTRAINT [FK_InternalPrice_PriceType]
GO
ALTER TABLE [dbo].[InternalPrice]  WITH CHECK ADD  CONSTRAINT [FK_InternalPriceList_CatalogDetails] FOREIGN KEY([CatalogDetailsID])
REFERENCES [dbo].[CatalogDetails] ([ID])
GO
ALTER TABLE [dbo].[InternalPrice] CHECK CONSTRAINT [FK_InternalPriceList_CatalogDetails]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_Assortment] FOREIGN KEY([AssortmentID])
REFERENCES [dbo].[Assortment] ([ID])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_Assortment]
GO
ALTER TABLE [dbo].[Item]  WITH CHECK ADD  CONSTRAINT [FK_Item_BusinessEntityContainer] FOREIGN KEY([BusinessEntityContainerId])
REFERENCES [security].[BusinessEntityContainer] ([ID])
GO
ALTER TABLE [dbo].[Item] CHECK CONSTRAINT [FK_Item_BusinessEntityContainer]
GO
ALTER TABLE [dbo].[ItemDateTimeProperty]  WITH CHECK ADD  CONSTRAINT [FK_ItemDateTimeProperty_Item] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[ItemDateTimeProperty] CHECK CONSTRAINT [FK_ItemDateTimeProperty_Item]
GO
ALTER TABLE [dbo].[ItemDefaultProperties]  WITH CHECK ADD  CONSTRAINT [FK_ItemDefaultProperties_Group] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([ID])
GO
ALTER TABLE [dbo].[ItemDefaultProperties] CHECK CONSTRAINT [FK_ItemDefaultProperties_Group]
GO
ALTER TABLE [dbo].[ItemDefaultProperties]  WITH CHECK ADD  CONSTRAINT [FK_ItemDefaultProperties_MetaColumn] FOREIGN KEY([MetaColumnId])
REFERENCES [dbo].[MetaColumn] ([ID])
GO
ALTER TABLE [dbo].[ItemDefaultProperties] CHECK CONSTRAINT [FK_ItemDefaultProperties_MetaColumn]
GO
ALTER TABLE [dbo].[ItemDetailsLayoutColumn]  WITH CHECK ADD  CONSTRAINT [FK_ItemDetailsLayoutColumn_ItemDetailsLayoutTab] FOREIGN KEY([ItemDetailsLayoutTabId])
REFERENCES [dbo].[ItemDetailsLayoutTab] ([Id])
GO
ALTER TABLE [dbo].[ItemDetailsLayoutColumn] CHECK CONSTRAINT [FK_ItemDetailsLayoutColumn_ItemDetailsLayoutTab]
GO
ALTER TABLE [dbo].[ItemDetailsLayoutProperty]  WITH CHECK ADD  CONSTRAINT [FK_ItemDetailsLayoutProperty_ItemDetailsLayoutColumn] FOREIGN KEY([ItemDetailsLayoutColumnId])
REFERENCES [dbo].[ItemDetailsLayoutColumn] ([Id])
GO
ALTER TABLE [dbo].[ItemDetailsLayoutProperty] CHECK CONSTRAINT [FK_ItemDetailsLayoutProperty_ItemDetailsLayoutColumn]
GO
ALTER TABLE [dbo].[ItemDetailsLayoutProperty]  WITH CHECK ADD  CONSTRAINT [FK_ItemDetailsLayoutProperty_MetaColumn] FOREIGN KEY([MetaColumnId])
REFERENCES [dbo].[MetaColumn] ([ID])
GO
ALTER TABLE [dbo].[ItemDetailsLayoutProperty] CHECK CONSTRAINT [FK_ItemDetailsLayoutProperty_MetaColumn]
GO
ALTER TABLE [dbo].[ItemDetailsLayoutTab]  WITH CHECK ADD  CONSTRAINT [FK_ItemDetailsLayoutTab_Feature] FOREIGN KEY([FeatureId])
REFERENCES [dbo].[Feature] ([ID])
GO
ALTER TABLE [dbo].[ItemDetailsLayoutTab] CHECK CONSTRAINT [FK_ItemDetailsLayoutTab_Feature]
GO
ALTER TABLE [dbo].[ItemLocalProperty]  WITH CHECK ADD  CONSTRAINT [FK_ItemLocalProperty_BusinessEntity] FOREIGN KEY([BusinessEntityID])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [dbo].[ItemLocalProperty] CHECK CONSTRAINT [FK_ItemLocalProperty_BusinessEntity]
GO
ALTER TABLE [dbo].[ItemLocalProperty]  WITH CHECK ADD  CONSTRAINT [FK_ItemLocalProperty_Item] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[ItemLocalProperty] CHECK CONSTRAINT [FK_ItemLocalProperty_Item]
GO
ALTER TABLE [dbo].[ItemLocalProperty]  WITH CHECK ADD  CONSTRAINT [FK_ItemLocalProperty_ItemLocalPropertType] FOREIGN KEY([ItemLocalPropertyTypeId])
REFERENCES [dbo].[ItemLocalPropertyType] ([ID])
GO
ALTER TABLE [dbo].[ItemLocalProperty] CHECK CONSTRAINT [FK_ItemLocalProperty_ItemLocalPropertType]
GO
ALTER TABLE [dbo].[ItemLocalState]  WITH CHECK ADD  CONSTRAINT [FK_ItemLocalState_BusinessEntity] FOREIGN KEY([BusinessEntityID])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [dbo].[ItemLocalState] CHECK CONSTRAINT [FK_ItemLocalState_BusinessEntity]
GO
ALTER TABLE [dbo].[ItemLocalState]  WITH CHECK ADD  CONSTRAINT [FK_ItemLocalState_Item] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[ItemLocalState] CHECK CONSTRAINT [FK_ItemLocalState_Item]
GO
ALTER TABLE [dbo].[ItemLocalState]  WITH CHECK ADD  CONSTRAINT [FK_ItemLocalState_ItemLocalStateType] FOREIGN KEY([ItemLocalStateTypeId])
REFERENCES [dbo].[ItemLocalStateType] ([ID])
GO
ALTER TABLE [dbo].[ItemLocalState] CHECK CONSTRAINT [FK_ItemLocalState_ItemLocalStateType]
GO
ALTER TABLE [dbo].[ItemProperty]  WITH CHECK ADD  CONSTRAINT [FK_ItemProperty_Item] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[ItemProperty] CHECK CONSTRAINT [FK_ItemProperty_Item]
GO
ALTER TABLE [dbo].[ItemProperty]  WITH CHECK ADD  CONSTRAINT [FK_ItemProperty_ItemPropertType] FOREIGN KEY([PropertyTypeId])
REFERENCES [dbo].[ItemPropertyType] ([ID])
GO
ALTER TABLE [dbo].[ItemProperty] CHECK CONSTRAINT [FK_ItemProperty_ItemPropertType]
GO
ALTER TABLE [dbo].[ItemProperty]  WITH CHECK ADD  CONSTRAINT [FK_ItemProperty_ItemPropertyName] FOREIGN KEY([PropertyNameId])
REFERENCES [dbo].[ItemPropertyName] ([ID])
GO
ALTER TABLE [dbo].[ItemProperty] CHECK CONSTRAINT [FK_ItemProperty_ItemPropertyName]
GO
ALTER TABLE [dbo].[ItemPropertyName]  WITH CHECK ADD  CONSTRAINT [FK_ItemPropertyName_Languaes] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([ID])
GO
ALTER TABLE [dbo].[ItemPropertyName] CHECK CONSTRAINT [FK_ItemPropertyName_Languaes]
GO
ALTER TABLE [dbo].[ItemQualityProperty]  WITH CHECK ADD  CONSTRAINT [FK_ItemQualityProperty_Item] FOREIGN KEY([Itemid])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[ItemQualityProperty] CHECK CONSTRAINT [FK_ItemQualityProperty_Item]
GO
ALTER TABLE [dbo].[ItemQuantityProperty]  WITH CHECK ADD  CONSTRAINT [FK_ItemQuantityProperty_Item] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[ItemQuantityProperty] CHECK CONSTRAINT [FK_ItemQuantityProperty_Item]
GO
ALTER TABLE [dbo].[ItemSuppliers]  WITH CHECK ADD  CONSTRAINT [FK_ItemSuppliers_Item] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[ItemSuppliers] CHECK CONSTRAINT [FK_ItemSuppliers_Item]
GO
ALTER TABLE [dbo].[ItemSuppliers]  WITH CHECK ADD  CONSTRAINT [FK_ItemSuppliers_Supplier] FOREIGN KEY([SupplierId])
REFERENCES [dbo].[Supplier] ([ID])
GO
ALTER TABLE [dbo].[ItemSuppliers] CHECK CONSTRAINT [FK_ItemSuppliers_Supplier]
GO
ALTER TABLE [dbo].[MappingConfigurations]  WITH CHECK ADD  CONSTRAINT [FK_MappingConfigurations_Assortment] FOREIGN KEY([AssortmentID])
REFERENCES [dbo].[Assortment] ([ID])
GO
ALTER TABLE [dbo].[MappingConfigurations] CHECK CONSTRAINT [FK_MappingConfigurations_Assortment]
GO
ALTER TABLE [dbo].[MappingConfigurations]  WITH CHECK ADD  CONSTRAINT [FK_MappingConfigurations_BusinessEntity] FOREIGN KEY([BusinessEntityID])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [dbo].[MappingConfigurations] CHECK CONSTRAINT [FK_MappingConfigurations_BusinessEntity]
GO
ALTER TABLE [dbo].[MappingConfigurations]  WITH CHECK ADD  CONSTRAINT [FK_MappingConfigurations_Catalog] FOREIGN KEY([CatalogID])
REFERENCES [dbo].[Catalog] ([ID])
GO
ALTER TABLE [dbo].[MappingConfigurations] CHECK CONSTRAINT [FK_MappingConfigurations_Catalog]
GO
ALTER TABLE [dbo].[MappingConfigurations]  WITH CHECK ADD  CONSTRAINT [FK_MappingConfigurations_Currency] FOREIGN KEY([CurrencyCode])
REFERENCES [dbo].[Currency] ([NumericCode])
GO
ALTER TABLE [dbo].[MappingConfigurations] CHECK CONSTRAINT [FK_MappingConfigurations_Currency]
GO
ALTER TABLE [dbo].[MetaColumn]  WITH CHECK ADD FOREIGN KEY([ParentMetaColumnId])
REFERENCES [dbo].[MetaColumn] ([ID])
GO
ALTER TABLE [dbo].[MetaColumn]  WITH CHECK ADD  CONSTRAINT [FK_MetaColumn_MetaTable] FOREIGN KEY([TableID])
REFERENCES [dbo].[MetaTable] ([ID])
GO
ALTER TABLE [dbo].[MetaColumn] CHECK CONSTRAINT [FK_MetaColumn_MetaTable]
GO
ALTER TABLE [dbo].[MetaColumnDynamicList]  WITH CHECK ADD  CONSTRAINT [FK_MetaColumnDynamicList_MetaColumn] FOREIGN KEY([MetaColumnId])
REFERENCES [dbo].[MetaColumn] ([ID])
GO
ALTER TABLE [dbo].[MetaColumnDynamicList] CHECK CONSTRAINT [FK_MetaColumnDynamicList_MetaColumn]
GO
ALTER TABLE [dbo].[MetaColumnDynamicMapping]  WITH CHECK ADD  CONSTRAINT [FK_MetaColumnDynamicMapping_MetaTable] FOREIGN KEY([MetaTableID])
REFERENCES [dbo].[MetaTable] ([ID])
GO
ALTER TABLE [dbo].[MetaColumnDynamicMapping] CHECK CONSTRAINT [FK_MetaColumnDynamicMapping_MetaTable]
GO
ALTER TABLE [dbo].[MetaColumnExportConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_MetaColumnExportConfiguration_MetaColumn] FOREIGN KEY([MetaColumnId])
REFERENCES [dbo].[MetaColumn] ([ID])
GO
ALTER TABLE [dbo].[MetaColumnExportConfiguration] CHECK CONSTRAINT [FK_MetaColumnExportConfiguration_MetaColumn]
GO
ALTER TABLE [dbo].[MetaColumnListValues]  WITH CHECK ADD  CONSTRAINT [FK_MetaColumnListValues_MetaColumn] FOREIGN KEY([MetaColumnId])
REFERENCES [dbo].[MetaColumn] ([ID])
GO
ALTER TABLE [dbo].[MetaColumnListValues] CHECK CONSTRAINT [FK_MetaColumnListValues_MetaColumn]
GO
ALTER TABLE [dbo].[MetaColumnLocal]  WITH CHECK ADD  CONSTRAINT [FK_MetaColumnLocal_BusinessEntitytype] FOREIGN KEY([BusinessEntityTypeId])
REFERENCES [dbo].[BusinessEntityType] ([ID])
GO
ALTER TABLE [dbo].[MetaColumnLocal] CHECK CONSTRAINT [FK_MetaColumnLocal_BusinessEntitytype]
GO
ALTER TABLE [dbo].[MetaColumnLocal]  WITH CHECK ADD  CONSTRAINT [FK_MetaColumnLocal_MetaColumn] FOREIGN KEY([MetaColumnId])
REFERENCES [dbo].[MetaColumn] ([ID])
GO
ALTER TABLE [dbo].[MetaColumnLocal] CHECK CONSTRAINT [FK_MetaColumnLocal_MetaColumn]
GO
ALTER TABLE [dbo].[MetaColumnLocalHidden]  WITH CHECK ADD  CONSTRAINT [FK_MetaColumnLocalHidden_BusinessEntitytype] FOREIGN KEY([BusinessEntityTypeId])
REFERENCES [dbo].[BusinessEntityType] ([ID])
GO
ALTER TABLE [dbo].[MetaColumnLocalHidden] CHECK CONSTRAINT [FK_MetaColumnLocalHidden_BusinessEntitytype]
GO
ALTER TABLE [dbo].[MetaColumnLocalHidden]  WITH CHECK ADD  CONSTRAINT [FK_MetaColumnLocalHidden_MetaColumn] FOREIGN KEY([MetaColumnId])
REFERENCES [dbo].[MetaColumn] ([ID])
GO
ALTER TABLE [dbo].[MetaColumnLocalHidden] CHECK CONSTRAINT [FK_MetaColumnLocalHidden_MetaColumn]
GO
ALTER TABLE [dbo].[MetaColumnRuntimeDefinition]  WITH CHECK ADD  CONSTRAINT [FK_MetaColumnRuntimeDefinition_MetaColumn] FOREIGN KEY([MetaColumnID])
REFERENCES [dbo].[MetaColumn] ([ID])
GO
ALTER TABLE [dbo].[MetaColumnRuntimeDefinition] CHECK CONSTRAINT [FK_MetaColumnRuntimeDefinition_MetaColumn]
GO
ALTER TABLE [dbo].[MetaColumnRuntimeEquation]  WITH CHECK ADD  CONSTRAINT [FK_MetaColumnRuntimeEquation_MetaColumn] FOREIGN KEY([MetaColumnID])
REFERENCES [dbo].[MetaColumn] ([ID])
GO
ALTER TABLE [dbo].[MetaColumnRuntimeEquation] CHECK CONSTRAINT [FK_MetaColumnRuntimeEquation_MetaColumn]
GO
ALTER TABLE [dbo].[MetaColumnSearchSetup]  WITH CHECK ADD  CONSTRAINT [FK_MetaColumnSearchSetup_MetaColumn] FOREIGN KEY([MetaColumnId])
REFERENCES [dbo].[MetaColumn] ([ID])
GO
ALTER TABLE [dbo].[MetaColumnSearchSetup] CHECK CONSTRAINT [FK_MetaColumnSearchSetup_MetaColumn]
GO
ALTER TABLE [dbo].[MetaColumnSearchSetup]  WITH CHECK ADD  CONSTRAINT [FK_MetaColumnSearchSetup_MetaTable] FOREIGN KEY([MetaTableID])
REFERENCES [dbo].[MetaTable] ([ID])
GO
ALTER TABLE [dbo].[MetaColumnSearchSetup] CHECK CONSTRAINT [FK_MetaColumnSearchSetup_MetaTable]
GO
ALTER TABLE [dbo].[NextBOMCalculationProcess]  WITH CHECK ADD  CONSTRAINT [FK_FNextBOMCalculationProcess_BusinessEntity] FOREIGN KEY([BusinessEntityId])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [dbo].[NextBOMCalculationProcess] CHECK CONSTRAINT [FK_FNextBOMCalculationProcess_BusinessEntity]
GO
ALTER TABLE [dbo].[NextBOMCalculationProcess]  WITH CHECK ADD  CONSTRAINT [FK_NextBOMCalculationProcess_User] FOREIGN KEY([UserId])
REFERENCES [security].[User] ([ID])
GO
ALTER TABLE [dbo].[NextBOMCalculationProcess] CHECK CONSTRAINT [FK_NextBOMCalculationProcess_User]
GO
ALTER TABLE [dbo].[NextTargetScheduledCalculation]  WITH CHECK ADD  CONSTRAINT [FK_NextTargetScheduledCalculation_BusinessEntity] FOREIGN KEY([BusinessEntityId])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [dbo].[NextTargetScheduledCalculation] CHECK CONSTRAINT [FK_NextTargetScheduledCalculation_BusinessEntity]
GO
ALTER TABLE [dbo].[NextTargetScheduledCalculation]  WITH CHECK ADD  CONSTRAINT [FK_NextTargetScheduledCalculation_PriceType] FOREIGN KEY([PriceTypeId])
REFERENCES [dbo].[PriceType] ([ID])
GO
ALTER TABLE [dbo].[NextTargetScheduledCalculation] CHECK CONSTRAINT [FK_NextTargetScheduledCalculation_PriceType]
GO
ALTER TABLE [dbo].[PriceEquation]  WITH CHECK ADD  CONSTRAINT [FK_PriceEquation_BusinessEntity] FOREIGN KEY([BusinessEntityID])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [dbo].[PriceEquation] CHECK CONSTRAINT [FK_PriceEquation_BusinessEntity]
GO
ALTER TABLE [dbo].[PriceEquation]  WITH CHECK ADD  CONSTRAINT [FK_PriceEquation_PriceType] FOREIGN KEY([PriceTypeID])
REFERENCES [dbo].[PriceType] ([ID])
GO
ALTER TABLE [dbo].[PriceEquation] CHECK CONSTRAINT [FK_PriceEquation_PriceType]
GO
ALTER TABLE [dbo].[PriceEquationDetails]  WITH CHECK ADD  CONSTRAINT [FK_PriceEquationDetails_PriceEquation] FOREIGN KEY([PriceEquationID])
REFERENCES [dbo].[PriceEquation] ([ID])
GO
ALTER TABLE [dbo].[PriceEquationDetails] CHECK CONSTRAINT [FK_PriceEquationDetails_PriceEquation]
GO
ALTER TABLE [dbo].[PriceIncrease]  WITH CHECK ADD  CONSTRAINT [FK_PriceIncrease_BusinessEntity] FOREIGN KEY([BusinessEntityId])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [dbo].[PriceIncrease] CHECK CONSTRAINT [FK_PriceIncrease_BusinessEntity]
GO
ALTER TABLE [dbo].[PriceIncrease]  WITH CHECK ADD  CONSTRAINT [FK_PriceIncrease_PriceIncreaseStatus] FOREIGN KEY([Status])
REFERENCES [dbo].[PriceIncreaseStatus] ([ID])
GO
ALTER TABLE [dbo].[PriceIncrease] CHECK CONSTRAINT [FK_PriceIncrease_PriceIncreaseStatus]
GO
ALTER TABLE [dbo].[PriceIncrease]  WITH CHECK ADD  CONSTRAINT [FK_PriceIncrease_PriceTypeFrom] FOREIGN KEY([PriceTypeFromId])
REFERENCES [dbo].[PriceType] ([ID])
GO
ALTER TABLE [dbo].[PriceIncrease] CHECK CONSTRAINT [FK_PriceIncrease_PriceTypeFrom]
GO
ALTER TABLE [dbo].[PriceIncrease]  WITH CHECK ADD  CONSTRAINT [FK_PriceIncrease_PriceTypeTo] FOREIGN KEY([PriceTypeToId])
REFERENCES [dbo].[PriceType] ([ID])
GO
ALTER TABLE [dbo].[PriceIncrease] CHECK CONSTRAINT [FK_PriceIncrease_PriceTypeTo]
GO
ALTER TABLE [dbo].[PriceIncreaseDetails]  WITH CHECK ADD  CONSTRAINT [FK_PriceIncreaseDetails_PriceIncrease] FOREIGN KEY([PriceIncreaseId])
REFERENCES [dbo].[PriceIncrease] ([ID])
GO
ALTER TABLE [dbo].[PriceIncreaseDetails] CHECK CONSTRAINT [FK_PriceIncreaseDetails_PriceIncrease]
GO
ALTER TABLE [dbo].[PriceIncreaseDetails]  WITH CHECK ADD  CONSTRAINT [FK_PriceIncreaseDetails_Scenario] FOREIGN KEY([ScenarioId])
REFERENCES [dbo].[Scenario] ([ID])
GO
ALTER TABLE [dbo].[PriceIncreaseDetails] CHECK CONSTRAINT [FK_PriceIncreaseDetails_Scenario]
GO
ALTER TABLE [dbo].[PriceLeaderHierarchy]  WITH CHECK ADD  CONSTRAINT [FK_PriceLeaderHierarchy_ItemId] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[PriceLeaderHierarchy] CHECK CONSTRAINT [FK_PriceLeaderHierarchy_ItemId]
GO
ALTER TABLE [dbo].[PriceLeaderHierarchy]  WITH CHECK ADD  CONSTRAINT [FK_PriceLeaderHierarchy_ParentItemId] FOREIGN KEY([ParentItemId])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[PriceLeaderHierarchy] CHECK CONSTRAINT [FK_PriceLeaderHierarchy_ParentItemId]
GO
ALTER TABLE [dbo].[PriceRule]  WITH CHECK ADD  CONSTRAINT [FK_PriceRule_BusinessEntity] FOREIGN KEY([BusinessEntityID])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [dbo].[PriceRule] CHECK CONSTRAINT [FK_PriceRule_BusinessEntity]
GO
ALTER TABLE [dbo].[PriceRule]  WITH CHECK ADD  CONSTRAINT [FK_PriceRule_BusinessStructure] FOREIGN KEY([BusinessStructureID])
REFERENCES [dbo].[BusinessStructure] ([ID])
GO
ALTER TABLE [dbo].[PriceRule] CHECK CONSTRAINT [FK_PriceRule_BusinessStructure]
GO
ALTER TABLE [dbo].[PriceRule]  WITH CHECK ADD  CONSTRAINT [FK_PriceRule_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([ID])
GO
ALTER TABLE [dbo].[PriceRule] CHECK CONSTRAINT [FK_PriceRule_Group]
GO
ALTER TABLE [dbo].[PriceRule]  WITH CHECK ADD  CONSTRAINT [FK_PriceRule_PriceType] FOREIGN KEY([PriceTypeId])
REFERENCES [dbo].[PriceType] ([ID])
GO
ALTER TABLE [dbo].[PriceRule] CHECK CONSTRAINT [FK_PriceRule_PriceType]
GO
ALTER TABLE [dbo].[PriceRuleDetails]  WITH CHECK ADD  CONSTRAINT [FK_PriceRuleDetails_PriceRule] FOREIGN KEY([PriceRuleID])
REFERENCES [dbo].[PriceRule] ([ID])
GO
ALTER TABLE [dbo].[PriceRuleDetails] CHECK CONSTRAINT [FK_PriceRuleDetails_PriceRule]
GO
ALTER TABLE [dbo].[PriceRuleDetailsComment]  WITH CHECK ADD  CONSTRAINT [FK_PriceRuleDetailsComment_PriceRuleDetails] FOREIGN KEY([PriceRuleDetailsId])
REFERENCES [dbo].[PriceRuleDetails] ([ID])
GO
ALTER TABLE [dbo].[PriceRuleDetailsComment] CHECK CONSTRAINT [FK_PriceRuleDetailsComment_PriceRuleDetails]
GO
ALTER TABLE [dbo].[PriceRulePostConditions]  WITH CHECK ADD  CONSTRAINT [FK_PriceRulePostConditions_PostConditionType] FOREIGN KEY([PostConditionTypeId])
REFERENCES [dbo].[PostConditionType] ([ID])
GO
ALTER TABLE [dbo].[PriceRulePostConditions] CHECK CONSTRAINT [FK_PriceRulePostConditions_PostConditionType]
GO
ALTER TABLE [dbo].[PriceRulePostConditions]  WITH CHECK ADD  CONSTRAINT [FK_PriceRulePostConditions_PriceRuleDetails] FOREIGN KEY([PriceRuleDetailsId])
REFERENCES [dbo].[PriceRuleDetails] ([ID])
GO
ALTER TABLE [dbo].[PriceRulePostConditions] CHECK CONSTRAINT [FK_PriceRulePostConditions_PriceRuleDetails]
GO
ALTER TABLE [dbo].[PriceRulePostConditions]  WITH CHECK ADD  CONSTRAINT [FK_PriceRulePostConditions_PriceType] FOREIGN KEY([PriceTypeId])
REFERENCES [dbo].[PriceType] ([ID])
GO
ALTER TABLE [dbo].[PriceRulePostConditions] CHECK CONSTRAINT [FK_PriceRulePostConditions_PriceType]
GO
ALTER TABLE [dbo].[PriceRulePriceIndex]  WITH CHECK ADD  CONSTRAINT [FK_PriceRulePriceIndex_PriceRuleDetails] FOREIGN KEY([PriceRuleDetailsId])
REFERENCES [dbo].[PriceRuleDetails] ([ID])
GO
ALTER TABLE [dbo].[PriceRulePriceIndex] CHECK CONSTRAINT [FK_PriceRulePriceIndex_PriceRuleDetails]
GO
ALTER TABLE [dbo].[PriceRulePriceIndex]  WITH CHECK ADD  CONSTRAINT [FK_PriceRulePriceIndex_PriceRulePriceIndexType] FOREIGN KEY([PriceRulePriceIndexTypeId])
REFERENCES [dbo].[PriceRulePriceIndexType] ([ID])
GO
ALTER TABLE [dbo].[PriceRulePriceIndex] CHECK CONSTRAINT [FK_PriceRulePriceIndex_PriceRulePriceIndexType]
GO
ALTER TABLE [dbo].[PriceRuleSubDetails]  WITH CHECK ADD  CONSTRAINT [FK_PriceRuleSubDetails_PriceRuleDetails] FOREIGN KEY([PriceRuleDetailsId])
REFERENCES [dbo].[PriceRuleDetails] ([ID])
GO
ALTER TABLE [dbo].[PriceRuleSubDetails] CHECK CONSTRAINT [FK_PriceRuleSubDetails_PriceRuleDetails]
GO
ALTER TABLE [dbo].[PriceType]  WITH CHECK ADD  CONSTRAINT [FK_PriceType_BusinessStructure] FOREIGN KEY([BusinessStructureID])
REFERENCES [dbo].[BusinessStructure] ([ID])
GO
ALTER TABLE [dbo].[PriceType] CHECK CONSTRAINT [FK_PriceType_BusinessStructure]
GO
ALTER TABLE [dbo].[PriceType]  WITH CHECK ADD  CONSTRAINT [FK_PriceType_MetaColumn] FOREIGN KEY([MetaColumnId])
REFERENCES [dbo].[MetaColumn] ([ID])
GO
ALTER TABLE [dbo].[PriceType] CHECK CONSTRAINT [FK_PriceType_MetaColumn]
GO
ALTER TABLE [dbo].[PriceType]  WITH CHECK ADD  CONSTRAINT [FK_PriceType_PriceCalculationType] FOREIGN KEY([PriceCalculationTypeID])
REFERENCES [dbo].[PriceCalculationType] ([ID])
GO
ALTER TABLE [dbo].[PriceType] CHECK CONSTRAINT [FK_PriceType_PriceCalculationType]
GO
ALTER TABLE [dbo].[PriceTypeToPriceTypeConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_PTtoPTFrom_PriceType] FOREIGN KEY([FromPriceTypeId])
REFERENCES [dbo].[PriceType] ([ID])
GO
ALTER TABLE [dbo].[PriceTypeToPriceTypeConfiguration] CHECK CONSTRAINT [FK_PTtoPTFrom_PriceType]
GO
ALTER TABLE [dbo].[PriceTypeToPriceTypeConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_PTtoPTTo_PriceType] FOREIGN KEY([ToPriceTypeId])
REFERENCES [dbo].[PriceType] ([ID])
GO
ALTER TABLE [dbo].[PriceTypeToPriceTypeConfiguration] CHECK CONSTRAINT [FK_PTtoPTTo_PriceType]
GO
ALTER TABLE [dbo].[Replacement]  WITH CHECK ADD  CONSTRAINT [FK_Replacement_Item] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[Replacement] CHECK CONSTRAINT [FK_Replacement_Item]
GO
ALTER TABLE [dbo].[Replacement]  WITH CHECK ADD  CONSTRAINT [FK_Replacement_ItemReplaced] FOREIGN KEY([ItemReplacedById])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[Replacement] CHECK CONSTRAINT [FK_Replacement_ItemReplaced]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_Feature] FOREIGN KEY([FeatureId])
REFERENCES [dbo].[Feature] ([ID])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_Feature]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_ReportInstanceType] FOREIGN KEY([InstanceTypeId])
REFERENCES [dbo].[ReportInstanceType] ([ID])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_ReportInstanceType]
GO
ALTER TABLE [dbo].[Report]  WITH CHECK ADD  CONSTRAINT [FK_Report_ReportServer] FOREIGN KEY([ReportServerId])
REFERENCES [dbo].[ReportServer] ([Id])
GO
ALTER TABLE [dbo].[Report] CHECK CONSTRAINT [FK_Report_ReportServer]
GO
ALTER TABLE [dbo].[RoundingMapping]  WITH CHECK ADD  CONSTRAINT [FK_RoundingMapping_BusinessEntity] FOREIGN KEY([BusinessEntityId])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [dbo].[RoundingMapping] CHECK CONSTRAINT [FK_RoundingMapping_BusinessEntity]
GO
ALTER TABLE [dbo].[RoundingMapping]  WITH CHECK ADD  CONSTRAINT [FK_RoundingMapping_PriceType] FOREIGN KEY([PriceTypeId])
REFERENCES [dbo].[PriceType] ([ID])
GO
ALTER TABLE [dbo].[RoundingMapping] CHECK CONSTRAINT [FK_RoundingMapping_PriceType]
GO
ALTER TABLE [dbo].[RoundingMapping]  WITH CHECK ADD  CONSTRAINT [FK_RoundingMapping_RoundingRule] FOREIGN KEY([RoundingRuleId])
REFERENCES [dbo].[RoundingRule] ([Id])
GO
ALTER TABLE [dbo].[RoundingMapping] CHECK CONSTRAINT [FK_RoundingMapping_RoundingRule]
GO
ALTER TABLE [dbo].[RoundingRule]  WITH CHECK ADD  CONSTRAINT [FK_RoundingRule_BusinessEntityContainerId] FOREIGN KEY([BusinessEntityContainerId])
REFERENCES [security].[BusinessEntityContainer] ([ID])
GO
ALTER TABLE [dbo].[RoundingRule] CHECK CONSTRAINT [FK_RoundingRule_BusinessEntityContainerId]
GO
ALTER TABLE [dbo].[RoundingRuleDetails]  WITH CHECK ADD  CONSTRAINT [FK_RoundingRuleDetails_RoundingRule] FOREIGN KEY([RoundingRuleId])
REFERENCES [dbo].[RoundingRule] ([Id])
GO
ALTER TABLE [dbo].[RoundingRuleDetails] CHECK CONSTRAINT [FK_RoundingRuleDetails_RoundingRule]
GO
ALTER TABLE [dbo].[RuntimePriceConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_RuntimePriceConfiguration_BusinessEntity] FOREIGN KEY([BusinessEntityId])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [dbo].[RuntimePriceConfiguration] CHECK CONSTRAINT [FK_RuntimePriceConfiguration_BusinessEntity]
GO
ALTER TABLE [dbo].[RuntimePriceConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_RuntimePriceConfiguration_PriceType] FOREIGN KEY([PriceTypeId])
REFERENCES [dbo].[PriceType] ([ID])
GO
ALTER TABLE [dbo].[RuntimePriceConfiguration] CHECK CONSTRAINT [FK_RuntimePriceConfiguration_PriceType]
GO
ALTER TABLE [dbo].[SalesTransaction]  WITH CHECK ADD  CONSTRAINT [FK_SalesTransaction_BusinessEntity] FOREIGN KEY([SalesCompanyID])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [dbo].[SalesTransaction] CHECK CONSTRAINT [FK_SalesTransaction_BusinessEntity]
GO
ALTER TABLE [dbo].[SalesTransaction]  WITH CHECK ADD  CONSTRAINT [FK_SalesTransaction_DateDim] FOREIGN KEY([DateDimId])
REFERENCES [dbo].[DateDim] ([ID])
GO
ALTER TABLE [dbo].[SalesTransaction] CHECK CONSTRAINT [FK_SalesTransaction_DateDim]
GO
ALTER TABLE [dbo].[SalesTransaction]  WITH CHECK ADD  CONSTRAINT [FK_SalesTransaction_Item] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[SalesTransaction] CHECK CONSTRAINT [FK_SalesTransaction_Item]
GO
ALTER TABLE [dbo].[SalesTransaction]  WITH CHECK ADD  CONSTRAINT [FK_SalesTransaction_OrderType] FOREIGN KEY([OrderTypeId])
REFERENCES [dbo].[OrderType] ([ID])
GO
ALTER TABLE [dbo].[SalesTransaction] CHECK CONSTRAINT [FK_SalesTransaction_OrderType]
GO
ALTER TABLE [dbo].[SalesTransaction]  WITH CHECK ADD  CONSTRAINT [FK_SalesTransaction_SalesDataSource] FOREIGN KEY([SourceID])
REFERENCES [dbo].[SalesDataSource] ([ID])
GO
ALTER TABLE [dbo].[SalesTransaction] CHECK CONSTRAINT [FK_SalesTransaction_SalesDataSource]
GO
ALTER TABLE [dbo].[SalesTransaction]  WITH CHECK ADD  CONSTRAINT [FK_SalesTransaction_ShippingMethod] FOREIGN KEY([ShippingMethodId])
REFERENCES [dbo].[ShippingMethod] ([ID])
GO
ALTER TABLE [dbo].[SalesTransaction] CHECK CONSTRAINT [FK_SalesTransaction_ShippingMethod]
GO
ALTER TABLE [dbo].[SalesTransaction]  WITH CHECK ADD  CONSTRAINT [FK_SalesTransaction_TransactionType] FOREIGN KEY([TransactionTypeId])
REFERENCES [dbo].[TransactionType] ([ID])
GO
ALTER TABLE [dbo].[SalesTransaction] CHECK CONSTRAINT [FK_SalesTransaction_TransactionType]
GO
ALTER TABLE [dbo].[Scenario]  WITH CHECK ADD  CONSTRAINT [FK_Scenario_BusinessEntity] FOREIGN KEY([BusinessEntityId])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [dbo].[Scenario] CHECK CONSTRAINT [FK_Scenario_BusinessEntity]
GO
ALTER TABLE [dbo].[Scenario]  WITH CHECK ADD  CONSTRAINT [FK_Scenario_BusinessStructure] FOREIGN KEY([BusinessStructureId])
REFERENCES [dbo].[BusinessStructure] ([ID])
GO
ALTER TABLE [dbo].[Scenario] CHECK CONSTRAINT [FK_Scenario_BusinessStructure]
GO
ALTER TABLE [dbo].[Scenario]  WITH CHECK ADD  CONSTRAINT [FK_Scenario_GroupType] FOREIGN KEY([GroupTypeID])
REFERENCES [dbo].[GroupType] ([ID])
GO
ALTER TABLE [dbo].[Scenario] CHECK CONSTRAINT [FK_Scenario_GroupType]
GO
ALTER TABLE [dbo].[Scenario]  WITH CHECK ADD  CONSTRAINT [FK_Scenario_ScenarioType] FOREIGN KEY([ScenarioTypeID])
REFERENCES [dbo].[ScenarioType] ([ID])
GO
ALTER TABLE [dbo].[Scenario] CHECK CONSTRAINT [FK_Scenario_ScenarioType]
GO
ALTER TABLE [dbo].[ScenarioDetailsGroup]  WITH CHECK ADD  CONSTRAINT [FK_ScenarioDetailsGroup_Group] FOREIGN KEY([GroupId])
REFERENCES [dbo].[Group] ([ID])
GO
ALTER TABLE [dbo].[ScenarioDetailsGroup] CHECK CONSTRAINT [FK_ScenarioDetailsGroup_Group]
GO
ALTER TABLE [dbo].[ScenarioDetailsGroup]  WITH CHECK ADD  CONSTRAINT [FK_ScenarioDetailsGroup_Scenario] FOREIGN KEY([ScenarioId])
REFERENCES [dbo].[Scenario] ([ID])
GO
ALTER TABLE [dbo].[ScenarioDetailsGroup] CHECK CONSTRAINT [FK_ScenarioDetailsGroup_Scenario]
GO
ALTER TABLE [dbo].[ScenarioDetailsItem]  WITH CHECK ADD  CONSTRAINT [FK_ScenarioDetailsItem_Item] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [dbo].[ScenarioDetailsItem] CHECK CONSTRAINT [FK_ScenarioDetailsItem_Item]
GO
ALTER TABLE [dbo].[ScenarioDetailsItem]  WITH CHECK ADD  CONSTRAINT [FK_ScenarioDetailsItem_Scenario] FOREIGN KEY([ScenarioId])
REFERENCES [dbo].[Scenario] ([ID])
GO
ALTER TABLE [dbo].[ScenarioDetailsItem] CHECK CONSTRAINT [FK_ScenarioDetailsItem_Scenario]
GO
ALTER TABLE [dbo].[ScenarioDetailsItemLocalPropertyType_ToBeDeleted]  WITH CHECK ADD  CONSTRAINT [FK_ScenarioDetailsItemLocalPropertyType_ItemLocalPropertyType] FOREIGN KEY([ItemLocalPropertyTypeId])
REFERENCES [dbo].[ItemLocalPropertyType] ([ID])
GO
ALTER TABLE [dbo].[ScenarioDetailsItemLocalPropertyType_ToBeDeleted] CHECK CONSTRAINT [FK_ScenarioDetailsItemLocalPropertyType_ItemLocalPropertyType]
GO
ALTER TABLE [dbo].[ScenarioDetailsItemLocalPropertyType_ToBeDeleted]  WITH CHECK ADD  CONSTRAINT [FK_ScenarioDetailsItemLocalPropertyType_Scenario] FOREIGN KEY([ScenarioId])
REFERENCES [dbo].[Scenario] ([ID])
GO
ALTER TABLE [dbo].[ScenarioDetailsItemLocalPropertyType_ToBeDeleted] CHECK CONSTRAINT [FK_ScenarioDetailsItemLocalPropertyType_Scenario]
GO
ALTER TABLE [dbo].[ScenarioPriceRule]  WITH CHECK ADD  CONSTRAINT [FK_ScenarioPriceRule_PriceRule] FOREIGN KEY([PriceRuleId])
REFERENCES [dbo].[PriceRule] ([ID])
GO
ALTER TABLE [dbo].[ScenarioPriceRule] CHECK CONSTRAINT [FK_ScenarioPriceRule_PriceRule]
GO
ALTER TABLE [dbo].[ScenarioPriceRule]  WITH CHECK ADD  CONSTRAINT [FK_ScenarioPriceRule_PriceType] FOREIGN KEY([AutoSetToPriceTypeId])
REFERENCES [dbo].[PriceType] ([ID])
GO
ALTER TABLE [dbo].[ScenarioPriceRule] CHECK CONSTRAINT [FK_ScenarioPriceRule_PriceType]
GO
ALTER TABLE [dbo].[ScenarioPriceRule]  WITH CHECK ADD  CONSTRAINT [FK_ScenarioPriceRule_Scenario] FOREIGN KEY([ScenarioId])
REFERENCES [dbo].[Scenario] ([ID])
GO
ALTER TABLE [dbo].[ScenarioPriceRule] CHECK CONSTRAINT [FK_ScenarioPriceRule_Scenario]
GO
ALTER TABLE [dbo].[ScenarioSearchConditions]  WITH CHECK ADD  CONSTRAINT [FK_ScenarioSearchConditions_Scenario] FOREIGN KEY([ScenarioId])
REFERENCES [dbo].[Scenario] ([ID])
GO
ALTER TABLE [dbo].[ScenarioSearchConditions] CHECK CONSTRAINT [FK_ScenarioSearchConditions_Scenario]
GO
ALTER TABLE [dbo].[ScenarioTypeSelectionScope]  WITH CHECK ADD  CONSTRAINT [FK_ScenarioTypeSelectionScope_ItemSelectionScope] FOREIGN KEY([ItemSelectionScopeID])
REFERENCES [dbo].[ItemSelectionScope] ([ID])
GO
ALTER TABLE [dbo].[ScenarioTypeSelectionScope] CHECK CONSTRAINT [FK_ScenarioTypeSelectionScope_ItemSelectionScope]
GO
ALTER TABLE [dbo].[ScenarioTypeSelectionScope]  WITH CHECK ADD  CONSTRAINT [FK_ScenarioTypeSelectionScope_ScenarioType] FOREIGN KEY([ScenarioTypeID])
REFERENCES [dbo].[ScenarioType] ([ID])
GO
ALTER TABLE [dbo].[ScenarioTypeSelectionScope] CHECK CONSTRAINT [FK_ScenarioTypeSelectionScope_ScenarioType]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_BusinessEntityType] FOREIGN KEY([BusinessEntityTypeID])
REFERENCES [dbo].[BusinessEntityType] ([ID])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_BusinessEntityType]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_Country] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_Country]
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD  CONSTRAINT [FK_Supplier_Currency] FOREIGN KEY([CurrencyNumCode])
REFERENCES [dbo].[Currency] ([NumericCode])
GO
ALTER TABLE [dbo].[Supplier] CHECK CONSTRAINT [FK_Supplier_Currency]
GO
ALTER TABLE [dbo].[SystemLocalParameter]  WITH CHECK ADD  CONSTRAINT [FK_SystemLocalParameter_BusinessEntity] FOREIGN KEY([BusinessEntityId])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [dbo].[SystemLocalParameter] CHECK CONSTRAINT [FK_SystemLocalParameter_BusinessEntity]
GO
ALTER TABLE [dbo].[UserProfile]  WITH NOCHECK ADD  CONSTRAINT [FK_UserProfile_BusinessEntity] FOREIGN KEY([DefaultBusinessEntityID])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [dbo].[UserProfile] CHECK CONSTRAINT [FK_UserProfile_BusinessEntity]
GO
ALTER TABLE [dbo].[UserProfile]  WITH CHECK ADD  CONSTRAINT [FK_UserProfile_User] FOREIGN KEY([UserID])
REFERENCES [security].[User] ([ID])
GO
ALTER TABLE [dbo].[UserProfile] CHECK CONSTRAINT [FK_UserProfile_User]
GO
ALTER TABLE [dbo].[WebApiProcess]  WITH CHECK ADD  CONSTRAINT [FK_WebApiProcess_WebApiProcessStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[WebApiProcessStatus] ([ID])
GO
ALTER TABLE [dbo].[WebApiProcess] CHECK CONSTRAINT [FK_WebApiProcess_WebApiProcessStatus]
GO
ALTER TABLE [import].[BEGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_ImportBEGroup_ImportRequest] FOREIGN KEY([ImportRequestId])
REFERENCES [import].[ImportRequest] ([Id])
GO
ALTER TABLE [import].[BEGroup] CHECK CONSTRAINT [FK_ImportBEGroup_ImportRequest]
GO
ALTER TABLE [import].[BEGroupDetails]  WITH NOCHECK ADD  CONSTRAINT [FK_ImportBEGroupDetails_ImportRequest] FOREIGN KEY([ImportRequestId])
REFERENCES [import].[ImportRequest] ([Id])
GO
ALTER TABLE [import].[BEGroupDetails] CHECK CONSTRAINT [FK_ImportBEGroupDetails_ImportRequest]
GO
ALTER TABLE [import].[BillOfMaterial]  WITH CHECK ADD  CONSTRAINT [FK_importBillOfMaterial_ImportRequest] FOREIGN KEY([ImportRequestId])
REFERENCES [import].[ImportRequest] ([Id])
GO
ALTER TABLE [import].[BillOfMaterial] CHECK CONSTRAINT [FK_importBillOfMaterial_ImportRequest]
GO
ALTER TABLE [import].[BusinessEntity]  WITH CHECK ADD  CONSTRAINT [FK_importBusinessEntity_ImportRequest] FOREIGN KEY([ImportRequestId])
REFERENCES [import].[ImportRequest] ([Id])
GO
ALTER TABLE [import].[BusinessEntity] CHECK CONSTRAINT [FK_importBusinessEntity_ImportRequest]
GO
ALTER TABLE [import].[BusinessModelSetup]  WITH CHECK ADD  CONSTRAINT [FK_BusinessModelSetup_BusinessEntityContainer] FOREIGN KEY([BusinessEntityContainerId])
REFERENCES [security].[BusinessEntityContainer] ([ID])
GO
ALTER TABLE [import].[BusinessModelSetup] CHECK CONSTRAINT [FK_BusinessModelSetup_BusinessEntityContainer]
GO
ALTER TABLE [import].[BusinessModelSetup]  WITH CHECK ADD  CONSTRAINT [FK_BusinessModelSetup_Industry] FOREIGN KEY([IndustryId])
REFERENCES [import].[Industry] ([ID])
GO
ALTER TABLE [import].[BusinessModelSetup] CHECK CONSTRAINT [FK_BusinessModelSetup_Industry]
GO
ALTER TABLE [import].[CompetitorPrice]  WITH CHECK ADD  CONSTRAINT [FK_importCompetitorPrice_ImportRequest] FOREIGN KEY([ImportRequestId])
REFERENCES [import].[ImportRequest] ([Id])
GO
ALTER TABLE [import].[CompetitorPrice] CHECK CONSTRAINT [FK_importCompetitorPrice_ImportRequest]
GO
ALTER TABLE [import].[Customer]  WITH NOCHECK ADD  CONSTRAINT [FK_ImportCustomer_ImportRequest] FOREIGN KEY([ImportRequestId])
REFERENCES [import].[ImportRequest] ([Id])
GO
ALTER TABLE [import].[Customer] CHECK CONSTRAINT [FK_ImportCustomer_ImportRequest]
GO
ALTER TABLE [import].[ExchangeRate]  WITH CHECK ADD  CONSTRAINT [FK_importExchangeRate_ImportRequest] FOREIGN KEY([ImportRequestId])
REFERENCES [import].[ImportRequest] ([Id])
GO
ALTER TABLE [import].[ExchangeRate] CHECK CONSTRAINT [FK_importExchangeRate_ImportRequest]
GO
ALTER TABLE [import].[Group]  WITH NOCHECK ADD  CONSTRAINT [FK_ImportGroup_ImportRequest] FOREIGN KEY([ImportRequestId])
REFERENCES [import].[ImportRequest] ([Id])
GO
ALTER TABLE [import].[Group] CHECK CONSTRAINT [FK_ImportGroup_ImportRequest]
GO
ALTER TABLE [import].[GuidedSetupWizardStatus]  WITH CHECK ADD  CONSTRAINT [FK_GuidedSetupWizardStatus_BusinessEntityContainer] FOREIGN KEY([BusinessEntityContainerId])
REFERENCES [security].[BusinessEntityContainer] ([ID])
GO
ALTER TABLE [import].[GuidedSetupWizardStatus] CHECK CONSTRAINT [FK_GuidedSetupWizardStatus_BusinessEntityContainer]
GO
ALTER TABLE [import].[GuidedSetupWizardStatus]  WITH CHECK ADD  CONSTRAINT [FK_GuidedSetupWizardStatus_GuidedSetupWizardStatusType] FOREIGN KEY([StatusId])
REFERENCES [import].[GuidedSetupWizardStatusType] ([ID])
GO
ALTER TABLE [import].[GuidedSetupWizardStatus] CHECK CONSTRAINT [FK_GuidedSetupWizardStatus_GuidedSetupWizardStatusType]
GO
ALTER TABLE [import].[GuidedSetupWizardStatus]  WITH CHECK ADD  CONSTRAINT [FK_GuidedSetupWizardStatus_GuidedSetupWizardStep] FOREIGN KEY([StepID])
REFERENCES [import].[GuidedSetupWizardStep] ([ID])
GO
ALTER TABLE [import].[GuidedSetupWizardStatus] CHECK CONSTRAINT [FK_GuidedSetupWizardStatus_GuidedSetupWizardStep]
GO
ALTER TABLE [import].[GuidedSetupWizardStepDetails]  WITH CHECK ADD  CONSTRAINT [FK_GuidedSetupWizardStepDetails_GuidedSetupWizardStep] FOREIGN KEY([StepID])
REFERENCES [import].[GuidedSetupWizardStep] ([ID])
GO
ALTER TABLE [import].[GuidedSetupWizardStepDetails] CHECK CONSTRAINT [FK_GuidedSetupWizardStepDetails_GuidedSetupWizardStep]
GO
ALTER TABLE [import].[ImportConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_ImportConfiguration_BusinessEntityContainer] FOREIGN KEY([BusinessEntityContainerId])
REFERENCES [security].[BusinessEntityContainer] ([ID])
GO
ALTER TABLE [import].[ImportConfiguration] CHECK CONSTRAINT [FK_ImportConfiguration_BusinessEntityContainer]
GO
ALTER TABLE [import].[ImportConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_ImportConfiguration_ImportType] FOREIGN KEY([ImportTypeId])
REFERENCES [import].[ImportType] ([Id])
GO
ALTER TABLE [import].[ImportConfiguration] CHECK CONSTRAINT [FK_ImportConfiguration_ImportType]
GO
ALTER TABLE [import].[ImportFailedRecord]  WITH CHECK ADD  CONSTRAINT [FK_ImportFailedRecord_ImportRequest] FOREIGN KEY([ImportRequestId])
REFERENCES [import].[ImportRequest] ([Id])
GO
ALTER TABLE [import].[ImportFailedRecord] CHECK CONSTRAINT [FK_ImportFailedRecord_ImportRequest]
GO
ALTER TABLE [import].[ImportRequest]  WITH CHECK ADD  CONSTRAINT [FK_ImportRequest_BusinessEntity] FOREIGN KEY([BusinessEntityId])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [import].[ImportRequest] CHECK CONSTRAINT [FK_ImportRequest_BusinessEntity]
GO
ALTER TABLE [import].[ImportRequest]  WITH CHECK ADD  CONSTRAINT [FK_ImportRequest_BusinessEntityContainer] FOREIGN KEY([BusinessEntityContainerId])
REFERENCES [security].[BusinessEntityContainer] ([ID])
GO
ALTER TABLE [import].[ImportRequest] CHECK CONSTRAINT [FK_ImportRequest_BusinessEntityContainer]
GO
ALTER TABLE [import].[ImportRequest]  WITH CHECK ADD  CONSTRAINT [FK_ImportRequest_ImportType] FOREIGN KEY([ImportTypeId])
REFERENCES [import].[ImportType] ([Id])
GO
ALTER TABLE [import].[ImportRequest] CHECK CONSTRAINT [FK_ImportRequest_ImportType]
GO
ALTER TABLE [import].[ImportStep]  WITH CHECK ADD  CONSTRAINT [FK_ImportStep_GuidedSetupWizardStep] FOREIGN KEY([StepID])
REFERENCES [import].[GuidedSetupWizardStep] ([ID])
GO
ALTER TABLE [import].[ImportStep] CHECK CONSTRAINT [FK_ImportStep_GuidedSetupWizardStep]
GO
ALTER TABLE [import].[ImportStep]  WITH CHECK ADD  CONSTRAINT [FK_ImportStep_ImportType] FOREIGN KEY([ImportTypeId])
REFERENCES [import].[ImportType] ([Id])
GO
ALTER TABLE [import].[ImportStep] CHECK CONSTRAINT [FK_ImportStep_ImportType]
GO
ALTER TABLE [import].[Item]  WITH CHECK ADD  CONSTRAINT [FK_ImportItem_ImportRequest] FOREIGN KEY([ImportRequestId])
REFERENCES [import].[ImportRequest] ([Id])
GO
ALTER TABLE [import].[Item] CHECK CONSTRAINT [FK_ImportItem_ImportRequest]
GO
ALTER TABLE [import].[ItemGroup]  WITH NOCHECK ADD  CONSTRAINT [FK_ImportItemGroup_ImportRequest] FOREIGN KEY([ImportRequestId])
REFERENCES [import].[ImportRequest] ([Id])
GO
ALTER TABLE [import].[ItemGroup] CHECK CONSTRAINT [FK_ImportItemGroup_ImportRequest]
GO
ALTER TABLE [import].[ItemProperties]  WITH NOCHECK ADD  CONSTRAINT [FK_ImportItemProperties_ImportRequest] FOREIGN KEY([ImportRequestId])
REFERENCES [import].[ImportRequest] ([Id])
GO
ALTER TABLE [import].[ItemProperties] CHECK CONSTRAINT [FK_ImportItemProperties_ImportRequest]
GO
ALTER TABLE [import].[SalesTransaction]  WITH NOCHECK ADD  CONSTRAINT [FK_ImportSalesTransaction_ImportRequest] FOREIGN KEY([ImportRequestId])
REFERENCES [import].[ImportRequest] ([Id])
GO
ALTER TABLE [import].[SalesTransaction] CHECK CONSTRAINT [FK_ImportSalesTransaction_ImportRequest]
GO
ALTER TABLE [NPP3Archive].[InternalPrice]  WITH CHECK ADD  CONSTRAINT [FK_InternalPrice_BusinessEntity] FOREIGN KEY([BusinessEntityID])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [NPP3Archive].[InternalPrice] CHECK CONSTRAINT [FK_InternalPrice_BusinessEntity]
GO
ALTER TABLE [NPP3Archive].[InternalPrice]  WITH CHECK ADD  CONSTRAINT [FK_InternalPrice_Currency] FOREIGN KEY([CurrencyNumCode])
REFERENCES [dbo].[Currency] ([NumericCode])
GO
ALTER TABLE [NPP3Archive].[InternalPrice] CHECK CONSTRAINT [FK_InternalPrice_Currency]
GO
ALTER TABLE [NPP3Archive].[InternalPrice]  WITH CHECK ADD  CONSTRAINT [FK_InternalPrice_PriceCalculation] FOREIGN KEY([PriceCalculationId])
REFERENCES [dbo].[PriceCalculation] ([ID])
GO
ALTER TABLE [NPP3Archive].[InternalPrice] CHECK CONSTRAINT [FK_InternalPrice_PriceCalculation]
GO
ALTER TABLE [NPP3Archive].[InternalPrice]  WITH CHECK ADD  CONSTRAINT [FK_InternalPrice_PriceType] FOREIGN KEY([PriceTypeID])
REFERENCES [dbo].[PriceType] ([ID])
GO
ALTER TABLE [NPP3Archive].[InternalPrice] CHECK CONSTRAINT [FK_InternalPrice_PriceType]
GO
ALTER TABLE [NPP3Archive].[InternalPrice]  WITH CHECK ADD  CONSTRAINT [FK_InternalPriceList_CatalogDetails] FOREIGN KEY([CatalogDetailsID])
REFERENCES [dbo].[CatalogDetails] ([ID])
GO
ALTER TABLE [NPP3Archive].[InternalPrice] CHECK CONSTRAINT [FK_InternalPriceList_CatalogDetails]
GO
ALTER TABLE [NPP3Archive].[ItemLocalProperty]  WITH CHECK ADD  CONSTRAINT [FK_ItemLocalProperty_BusinessEntity] FOREIGN KEY([BusinessEntityID])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [NPP3Archive].[ItemLocalProperty] CHECK CONSTRAINT [FK_ItemLocalProperty_BusinessEntity]
GO
ALTER TABLE [NPP3Archive].[ItemLocalProperty]  WITH CHECK ADD  CONSTRAINT [FK_ItemLocalProperty_Item] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Item] ([ID])
GO
ALTER TABLE [NPP3Archive].[ItemLocalProperty] CHECK CONSTRAINT [FK_ItemLocalProperty_Item]
GO
ALTER TABLE [NPP3Archive].[ItemLocalProperty]  WITH CHECK ADD  CONSTRAINT [FK_ItemLocalProperty_ItemLocalPropertType] FOREIGN KEY([ItemLocalPropertyTypeId])
REFERENCES [dbo].[ItemLocalPropertyType] ([ID])
GO
ALTER TABLE [NPP3Archive].[ItemLocalProperty] CHECK CONSTRAINT [FK_ItemLocalProperty_ItemLocalPropertType]
GO
ALTER TABLE [permission].[RoleMembership]  WITH CHECK ADD  CONSTRAINT [FK_RoleMembership_RoleName] FOREIGN KEY([RoleName])
REFERENCES [permission].[DatabaseRole] ([Name])
ON DELETE CASCADE
GO
ALTER TABLE [permission].[RoleMembership] CHECK CONSTRAINT [FK_RoleMembership_RoleName]
GO
ALTER TABLE [permission].[SecurableMembership]  WITH CHECK ADD  CONSTRAINT [FK_SecurableMembership_RoleName] FOREIGN KEY([GrantedToRole])
REFERENCES [permission].[DatabaseRole] ([Name])
ON DELETE CASCADE
GO
ALTER TABLE [permission].[SecurableMembership] CHECK CONSTRAINT [FK_SecurableMembership_RoleName]
GO
ALTER TABLE [security].[BusinessEntityContainer]  WITH CHECK ADD  CONSTRAINT [FK_BusinessEntityContainer_ItemProtectionSource] FOREIGN KEY([ItemProtectionSourceId])
REFERENCES [security].[ItemProtectionSource] ([ID])
GO
ALTER TABLE [security].[BusinessEntityContainer] CHECK CONSTRAINT [FK_BusinessEntityContainer_ItemProtectionSource]
GO
ALTER TABLE [security].[ItemProtectionSource]  WITH CHECK ADD  CONSTRAINT [FK_ItemProtectionSource_ItemProtectionSourceType] FOREIGN KEY([ItemProtectionSourceTypeId])
REFERENCES [security].[ItemProtectionSourceType] ([ID])
GO
ALTER TABLE [security].[ItemProtectionSource] CHECK CONSTRAINT [FK_ItemProtectionSource_ItemProtectionSourceType]
GO
ALTER TABLE [security].[PermissionContainer]  WITH CHECK ADD  CONSTRAINT [FK_PermissionContainer_BusinessEntityContainer] FOREIGN KEY([BusinessEntityContainerId])
REFERENCES [security].[BusinessEntityContainer] ([ID])
GO
ALTER TABLE [security].[PermissionContainer] CHECK CONSTRAINT [FK_PermissionContainer_BusinessEntityContainer]
GO
ALTER TABLE [security].[RoleFeature]  WITH CHECK ADD  CONSTRAINT [FK_RoleFeature_Feature] FOREIGN KEY([FeatureID])
REFERENCES [dbo].[Feature] ([ID])
GO
ALTER TABLE [security].[RoleFeature] CHECK CONSTRAINT [FK_RoleFeature_Feature]
GO
ALTER TABLE [security].[RoleFeature]  WITH CHECK ADD  CONSTRAINT [FK_RoleFeature_Role] FOREIGN KEY([RoleID])
REFERENCES [security].[Role] ([ID])
GO
ALTER TABLE [security].[RoleFeature] CHECK CONSTRAINT [FK_RoleFeature_Role]
GO
ALTER TABLE [security].[RoleMetaColumn]  WITH CHECK ADD  CONSTRAINT [FK_RoleMetaColumn_MetaColumn] FOREIGN KEY([MetaColumnID])
REFERENCES [dbo].[MetaColumn] ([ID])
GO
ALTER TABLE [security].[RoleMetaColumn] CHECK CONSTRAINT [FK_RoleMetaColumn_MetaColumn]
GO
ALTER TABLE [security].[RoleMetaColumn]  WITH CHECK ADD  CONSTRAINT [FK_RoleMetaColumn_Operation] FOREIGN KEY([OperationID])
REFERENCES [dbo].[Operation] ([ID])
GO
ALTER TABLE [security].[RoleMetaColumn] CHECK CONSTRAINT [FK_RoleMetaColumn_Operation]
GO
ALTER TABLE [security].[RoleMetaColumn]  WITH CHECK ADD  CONSTRAINT [FK_RoleMetaColumn_Role] FOREIGN KEY([RoleID])
REFERENCES [security].[Role] ([ID])
GO
ALTER TABLE [security].[RoleMetaColumn] CHECK CONSTRAINT [FK_RoleMetaColumn_Role]
GO
ALTER TABLE [security].[RoleMetaColumnAssortment]  WITH CHECK ADD  CONSTRAINT [FK_RoleMetaColumnAssortment_Assortment] FOREIGN KEY([AssortmentID])
REFERENCES [dbo].[Assortment] ([ID])
GO
ALTER TABLE [security].[RoleMetaColumnAssortment] CHECK CONSTRAINT [FK_RoleMetaColumnAssortment_Assortment]
GO
ALTER TABLE [security].[RoleMetaColumnAssortment]  WITH CHECK ADD  CONSTRAINT [FK_RoleMetaColumnAssortment_MetaColumn] FOREIGN KEY([MetaColumnID])
REFERENCES [dbo].[MetaColumn] ([ID])
GO
ALTER TABLE [security].[RoleMetaColumnAssortment] CHECK CONSTRAINT [FK_RoleMetaColumnAssortment_MetaColumn]
GO
ALTER TABLE [security].[RoleMetaColumnAssortment]  WITH CHECK ADD  CONSTRAINT [FK_RoleMetaColumnAssortment_Operation] FOREIGN KEY([OperationID])
REFERENCES [dbo].[Operation] ([ID])
GO
ALTER TABLE [security].[RoleMetaColumnAssortment] CHECK CONSTRAINT [FK_RoleMetaColumnAssortment_Operation]
GO
ALTER TABLE [security].[RoleMetaColumnAssortment]  WITH CHECK ADD  CONSTRAINT [FK_RoleMetaColumnAssortment_Role] FOREIGN KEY([RoleID])
REFERENCES [security].[Role] ([ID])
GO
ALTER TABLE [security].[RoleMetaColumnAssortment] CHECK CONSTRAINT [FK_RoleMetaColumnAssortment_Role]
GO
ALTER TABLE [security].[RoleMetaColumnAssortment]  WITH CHECK ADD  CONSTRAINT [FK_RoleMetaColumnAssortment_RoleMetaColumn] FOREIGN KEY([RoleID], [MetaColumnID], [OperationID])
REFERENCES [security].[RoleMetaColumn] ([RoleID], [MetaColumnID], [OperationID])
GO
ALTER TABLE [security].[RoleMetaColumnAssortment] CHECK CONSTRAINT [FK_RoleMetaColumnAssortment_RoleMetaColumn]
GO
ALTER TABLE [security].[RoleMetaColumnGroup]  WITH CHECK ADD  CONSTRAINT [FK_RoleMetaColumnGroup_Group] FOREIGN KEY([GroupID])
REFERENCES [dbo].[Group] ([ID])
GO
ALTER TABLE [security].[RoleMetaColumnGroup] CHECK CONSTRAINT [FK_RoleMetaColumnGroup_Group]
GO
ALTER TABLE [security].[RoleMetaColumnGroup]  WITH CHECK ADD  CONSTRAINT [FK_RoleMetaColumnGroup_MetaColumn] FOREIGN KEY([MetaColumnID])
REFERENCES [dbo].[MetaColumn] ([ID])
GO
ALTER TABLE [security].[RoleMetaColumnGroup] CHECK CONSTRAINT [FK_RoleMetaColumnGroup_MetaColumn]
GO
ALTER TABLE [security].[RoleMetaColumnGroup]  WITH CHECK ADD  CONSTRAINT [FK_RoleMetaColumnGroup_Operation] FOREIGN KEY([OperationID])
REFERENCES [dbo].[Operation] ([ID])
GO
ALTER TABLE [security].[RoleMetaColumnGroup] CHECK CONSTRAINT [FK_RoleMetaColumnGroup_Operation]
GO
ALTER TABLE [security].[RoleMetaColumnGroup]  WITH CHECK ADD  CONSTRAINT [FK_RoleMetaColumnGroup_Role] FOREIGN KEY([RoleID])
REFERENCES [security].[Role] ([ID])
GO
ALTER TABLE [security].[RoleMetaColumnGroup] CHECK CONSTRAINT [FK_RoleMetaColumnGroup_Role]
GO
ALTER TABLE [security].[RoleMetaColumnGroup]  WITH CHECK ADD  CONSTRAINT [FK_RoleMetaColumnGroup_RoleMetaColumn] FOREIGN KEY([RoleID], [MetaColumnID], [OperationID])
REFERENCES [security].[RoleMetaColumn] ([RoleID], [MetaColumnID], [OperationID])
GO
ALTER TABLE [security].[RoleMetaColumnGroup] CHECK CONSTRAINT [FK_RoleMetaColumnGroup_RoleMetaColumn]
GO
ALTER TABLE [security].[RoleModule]  WITH CHECK ADD  CONSTRAINT [FK_RoleModule_Module] FOREIGN KEY([ModuleID])
REFERENCES [dbo].[Module] ([ID])
GO
ALTER TABLE [security].[RoleModule] CHECK CONSTRAINT [FK_RoleModule_Module]
GO
ALTER TABLE [security].[RoleModule]  WITH CHECK ADD  CONSTRAINT [FK_RoleModule_Role] FOREIGN KEY([RoleID])
REFERENCES [security].[Role] ([ID])
GO
ALTER TABLE [security].[RoleModule] CHECK CONSTRAINT [FK_RoleModule_Role]
GO
ALTER TABLE [security].[RolePlugin]  WITH CHECK ADD  CONSTRAINT [FK_RolePlugin_Plugin] FOREIGN KEY([PluginID])
REFERENCES [dbo].[Plugin] ([ID])
GO
ALTER TABLE [security].[RolePlugin] CHECK CONSTRAINT [FK_RolePlugin_Plugin]
GO
ALTER TABLE [security].[RolePlugin]  WITH CHECK ADD  CONSTRAINT [FK_RolePlugin_Role] FOREIGN KEY([RoleID])
REFERENCES [security].[Role] ([ID])
GO
ALTER TABLE [security].[RolePlugin] CHECK CONSTRAINT [FK_RolePlugin_Role]
GO
ALTER TABLE [security].[UserAPIKey]  WITH CHECK ADD  CONSTRAINT [FK_UserAPIKey_User] FOREIGN KEY([UserId])
REFERENCES [security].[User] ([ID])
GO
ALTER TABLE [security].[UserAPIKey] CHECK CONSTRAINT [FK_UserAPIKey_User]
GO
ALTER TABLE [security].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([RoleID])
REFERENCES [security].[Role] ([ID])
GO
ALTER TABLE [security].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role]
GO
ALTER TABLE [security].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_User] FOREIGN KEY([UserID])
REFERENCES [security].[User] ([ID])
GO
ALTER TABLE [security].[UserRole] CHECK CONSTRAINT [FK_UserRole_User]
GO
ALTER TABLE [security].[UserRoleBusinessEntity]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleBusinessEntity_BusinessEntity] FOREIGN KEY([BusinessEntityID])
REFERENCES [dbo].[BusinessEntity] ([ID])
GO
ALTER TABLE [security].[UserRoleBusinessEntity] CHECK CONSTRAINT [FK_UserRoleBusinessEntity_BusinessEntity]
GO
ALTER TABLE [security].[UserRoleBusinessEntity]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleBusinessEntity_Role] FOREIGN KEY([RoleID])
REFERENCES [security].[Role] ([ID])
GO
ALTER TABLE [security].[UserRoleBusinessEntity] CHECK CONSTRAINT [FK_UserRoleBusinessEntity_Role]
GO
ALTER TABLE [security].[UserRoleBusinessEntity]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleBusinessEntity_User] FOREIGN KEY([UserID])
REFERENCES [security].[User] ([ID])
GO
ALTER TABLE [security].[UserRoleBusinessEntity] CHECK CONSTRAINT [FK_UserRoleBusinessEntity_User]
GO
ALTER TABLE [security].[UserRoleBusinessEntity]  WITH CHECK ADD  CONSTRAINT [FK_UserRoleBusinessEntity_UserRole] FOREIGN KEY([UserID], [RoleID])
REFERENCES [security].[UserRole] ([UserID], [RoleID])
GO
ALTER TABLE [security].[UserRoleBusinessEntity] CHECK CONSTRAINT [FK_UserRoleBusinessEntity_UserRole]
GO
ALTER TABLE [security].[UserRolePermissionContainer]  WITH CHECK ADD  CONSTRAINT [FK_UserRolePermissionContainer_PermissionContainer] FOREIGN KEY([PermissionContainerId])
REFERENCES [security].[PermissionContainer] ([ID])
GO
ALTER TABLE [security].[UserRolePermissionContainer] CHECK CONSTRAINT [FK_UserRolePermissionContainer_PermissionContainer]
GO
ALTER TABLE [security].[UserRolePermissionContainer]  WITH CHECK ADD  CONSTRAINT [FK_UserRolePermissionContainer_Role] FOREIGN KEY([RoleId])
REFERENCES [security].[Role] ([ID])
GO
ALTER TABLE [security].[UserRolePermissionContainer] CHECK CONSTRAINT [FK_UserRolePermissionContainer_Role]
GO
ALTER TABLE [security].[UserRolePermissionContainer]  WITH CHECK ADD  CONSTRAINT [FK_UserRolePermissionContainer_User] FOREIGN KEY([UserId])
REFERENCES [security].[User] ([ID])
GO
ALTER TABLE [security].[UserRolePermissionContainer] CHECK CONSTRAINT [FK_UserRolePermissionContainer_User]
GO
ALTER TABLE [security].[UserRolePermissionContainer]  WITH CHECK ADD  CONSTRAINT [FK_UserRolePermissionContainer_UserRole] FOREIGN KEY([UserId], [RoleId])
REFERENCES [security].[UserRole] ([UserID], [RoleID])
GO
ALTER TABLE [security].[UserRolePermissionContainer] CHECK CONSTRAINT [FK_UserRolePermissionContainer_UserRole]
GO
ALTER TABLE [Competitor].[GlobalWeighting]  WITH CHECK ADD  CONSTRAINT [CHK_GlobalWeighting_Value] CHECK  (([Value]>=(0) AND [Value]<=(100)))
GO
ALTER TABLE [Competitor].[GlobalWeighting] CHECK CONSTRAINT [CHK_GlobalWeighting_Value]
GO
ALTER TABLE [Competitor].[Weighting]  WITH CHECK ADD  CONSTRAINT [CHK_Weighting_Value] CHECK  (([Value]>=(0) AND [Value]<=(100)))
GO
ALTER TABLE [Competitor].[Weighting] CHECK CONSTRAINT [CHK_Weighting_Value]
GO
ALTER TABLE [dbo].[BusinessEntityGroupDetails]  WITH CHECK ADD  CONSTRAINT [CHK_BusinessEntityGroupDetails_BESRule] CHECK  (([dbo].[fn_BESRule]([BusinessEntityGroupID],[BusinessEntityId])='True'))
GO
ALTER TABLE [dbo].[BusinessEntityGroupDetails] CHECK CONSTRAINT [CHK_BusinessEntityGroupDetails_BESRule]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [CHK_Group_PriceMasterVerification] CHECK  (([dbo].[fn_PriceMasterVerification]([MasterItemID])='True'))
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [CHK_Group_PriceMasterVerification]
GO
ALTER TABLE [dbo].[MetaColumnExportConfiguration]  WITH CHECK ADD  CONSTRAINT [CHK_MetaColumnExportConfiguration_BusinessEntityId] CHECK  (([dbo].[IsProductCompany]([BusinessEntityId])='True'))
GO
ALTER TABLE [dbo].[MetaColumnExportConfiguration] CHECK CONSTRAINT [CHK_MetaColumnExportConfiguration_BusinessEntityId]
GO
ALTER TABLE [dbo].[MetaColumnExportConfiguration]  WITH CHECK ADD  CONSTRAINT [CHK_MetaColumnExportConfiguration_SequenceNumber] CHECK  (([SequenceNumber]<=(50)))
GO
ALTER TABLE [dbo].[MetaColumnExportConfiguration] CHECK CONSTRAINT [CHK_MetaColumnExportConfiguration_SequenceNumber]
GO
ALTER TABLE [dbo].[PriceLeaderHierarchy]  WITH CHECK ADD  CONSTRAINT [CHK_PriceLeaderHierarchy_PriceLeaderVerification] CHECK  (([dbo].[fn_PriceLeaderVerification]([ItemID],[ParentItemId])='True'))
GO
ALTER TABLE [dbo].[PriceLeaderHierarchy] CHECK CONSTRAINT [CHK_PriceLeaderHierarchy_PriceLeaderVerification]
GO
ALTER TABLE [dbo].[RoundingRuleDetails]  WITH CHECK ADD  CONSTRAINT [CHK_RoundingRuleDetails] CHECK  (([RoundingType]='CEIL' OR [RoundingType]='FLOOR' OR [RoundingType]='ROUND'))
GO
ALTER TABLE [dbo].[RoundingRuleDetails] CHECK CONSTRAINT [CHK_RoundingRuleDetails]
GO
ALTER TABLE [dbo].[ScenarioSearchConditions]  WITH CHECK ADD  CONSTRAINT [CHK_ScenarioSearchConditions_SqlSearch] CHECK  (([SqlSearch]<>''))
GO
ALTER TABLE [dbo].[ScenarioSearchConditions] CHECK CONSTRAINT [CHK_ScenarioSearchConditions_SqlSearch]
GO
ALTER TABLE [dw].[LastAggregation]  WITH CHECK ADD  CONSTRAINT [CHK_LastAggregation_BusinessEntityId] CHECK  (([dbo].[IsProductCompany]([BusinessEntityId])='True'))
GO
ALTER TABLE [dw].[LastAggregation] CHECK CONSTRAINT [CHK_LastAggregation_BusinessEntityId]
GO
ALTER TABLE [import].[BEGroup]  WITH NOCHECK ADD  CONSTRAINT [chk_BEGroup_ImportStatus] CHECK  (([ImportStatus]=(2) OR [ImportStatus]=(1) OR [ImportStatus]=(0)))
GO
ALTER TABLE [import].[BEGroup] CHECK CONSTRAINT [chk_BEGroup_ImportStatus]
GO
ALTER TABLE [import].[BEGroupDetails]  WITH NOCHECK ADD  CONSTRAINT [chk_BEGroupDetails_ImportStatus] CHECK  (([ImportStatus]=(2) OR [ImportStatus]=(1) OR [ImportStatus]=(0)))
GO
ALTER TABLE [import].[BEGroupDetails] CHECK CONSTRAINT [chk_BEGroupDetails_ImportStatus]
GO
ALTER TABLE [import].[BillOfMaterial]  WITH CHECK ADD  CONSTRAINT [chk_BillOfMaterial_ImportStatus] CHECK  (([ImportStatus]=(2) OR [ImportStatus]=(1) OR [ImportStatus]=(0)))
GO
ALTER TABLE [import].[BillOfMaterial] CHECK CONSTRAINT [chk_BillOfMaterial_ImportStatus]
GO
ALTER TABLE [import].[BusinessEntity]  WITH CHECK ADD  CONSTRAINT [chk_BusinessEntity_ImportStatus] CHECK  (([ImportStatus]=(2) OR [ImportStatus]=(1) OR [ImportStatus]=(0)))
GO
ALTER TABLE [import].[BusinessEntity] CHECK CONSTRAINT [chk_BusinessEntity_ImportStatus]
GO
ALTER TABLE [import].[CompetitorPrice]  WITH CHECK ADD  CONSTRAINT [chk_CompetitorPrice_ImportStatus] CHECK  (([ImportStatus]=(2) OR [ImportStatus]=(1) OR [ImportStatus]=(0)))
GO
ALTER TABLE [import].[CompetitorPrice] CHECK CONSTRAINT [chk_CompetitorPrice_ImportStatus]
GO
ALTER TABLE [import].[Customer]  WITH NOCHECK ADD  CONSTRAINT [chk_Customer_ImportStatus] CHECK  (([ImportStatus]=(2) OR [ImportStatus]=(1) OR [ImportStatus]=(0)))
GO
ALTER TABLE [import].[Customer] CHECK CONSTRAINT [chk_Customer_ImportStatus]
GO
ALTER TABLE [import].[ExchangeRate]  WITH CHECK ADD  CONSTRAINT [chk_ExchangeRate_ImportStatus] CHECK  (([ImportStatus]=(2) OR [ImportStatus]=(1) OR [ImportStatus]=(0)))
GO
ALTER TABLE [import].[ExchangeRate] CHECK CONSTRAINT [chk_ExchangeRate_ImportStatus]
GO
ALTER TABLE [import].[Group]  WITH NOCHECK ADD  CONSTRAINT [chk_Group_ImportStatus] CHECK  (([ImportStatus]=(2) OR [ImportStatus]=(1) OR [ImportStatus]=(0)))
GO
ALTER TABLE [import].[Group] CHECK CONSTRAINT [chk_Group_ImportStatus]
GO
ALTER TABLE [import].[Item]  WITH CHECK ADD  CONSTRAINT [chk_Item_ImportStatus] CHECK  (([ImportStatus]=(2) OR [ImportStatus]=(1) OR [ImportStatus]=(0)))
GO
ALTER TABLE [import].[Item] CHECK CONSTRAINT [chk_Item_ImportStatus]
GO
ALTER TABLE [import].[ItemGroup]  WITH NOCHECK ADD  CONSTRAINT [chk_ItemGroup_ImportStatus] CHECK  (([ImportStatus]=(2) OR [ImportStatus]=(1) OR [ImportStatus]=(0)))
GO
ALTER TABLE [import].[ItemGroup] CHECK CONSTRAINT [chk_ItemGroup_ImportStatus]
GO
ALTER TABLE [import].[ItemProperties]  WITH NOCHECK ADD  CONSTRAINT [chk_ItemProperties_ImportStatus] CHECK  (([ImportStatus]=(2) OR [ImportStatus]=(1) OR [ImportStatus]=(0)))
GO
ALTER TABLE [import].[ItemProperties] CHECK CONSTRAINT [chk_ItemProperties_ImportStatus]
GO
ALTER TABLE [import].[SalesTransaction]  WITH NOCHECK ADD  CONSTRAINT [chk_SalesTransaction_ImportStatus] CHECK  (([ImportStatus]=(2) OR [ImportStatus]=(1) OR [ImportStatus]=(0)))
GO
ALTER TABLE [import].[SalesTransaction] CHECK CONSTRAINT [chk_SalesTransaction_ImportStatus]
GO
EXEC sys.sp_addextendedproperty @name=N'ChangeType', @value=N'1 - ItemChange;
2 - FamilyChange;
3 - BusinessEntityChange;
4 - MasterItemChange;
5 - PriceRuleChange;
6 - BomStructureChange;
7 - BusinessEntityBomChange;
8 - BomStructureIsExcludedChange;
9 - ItemBomChange;
10 - PriceLeaderStructureChange;' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationQueue'
GO
EXEC sys.sp_addextendedproperty @name=N'Status', @value=N'0 - Not Processed;
1 - In Processing;
2 - Processed;
3 - Failed;
4 - No Items Affected;
5 - Incorrect Input Amoung Affected Ids;' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CalculationQueue'
GO
EXEC sys.sp_addextendedproperty @name=N'IncreaseDecrease', @value=N'
Increase = 1;
Decrease = 0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DampeningRangeVQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 - AdvancedSearch
2 - CustomQuery' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DashboardAlert', @level2type=N'COLUMN',@level2name=N'CountQueryTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 - Search; 2 - Workspace; 3 - Revision' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DashboardAlert', @level2type=N'COLUMN',@level2name=N'DestinationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 - recalculate on some period (PeriodId) 
1 - recalculate on Login' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DashboardAlert', @level2type=N'COLUMN',@level2name=N'IsLiveCalculated'
GO
EXEC sys.sp_addextendedproperty @name=N'FutureOutgoingProcess_StatusProperty', @value=N'Scheduled = 0;  
WaitingInQueue = 1; 
InProgress = 2; 
Completed = 3; 
Failed = 4 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FutureOutgoingProcess', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Launch manager states:
1 - NotSet
2 - Approved
3 - Rejected
4 - Expired ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ItemLocalState'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 - Text;
1 - List;
2 - Numeric;
3 - Date;
4 - Boolean;
5 - Group;
6 - DynamicList' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MetaColumn', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Boolean = 1;
BooleanNullable = 2;
DateTime = 3;
DateTimeNullable = 4;
Decimal = 5;
DecimalNullable = 6;
Object = 7;
Int = 8;
IntNullable = 9;
Long = 10;
LongNullable = 11;
String = 12' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MetaColumnDynamicMapping', @level2type=N'COLUMN',@level2name=N'LogicalType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identity = 1001;
Name = 1002;
Value = 1003;
Currency = 1004;
Logical = 1005;
ItemNumber = 1010' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'MetaColumnDynamicMapping', @level2type=N'COLUMN',@level2name=N'NPPType'
GO
EXEC sys.sp_addextendedproperty @name=N'NextBOMCalculationProcess_StatusProperty', @value=N'InProgress = 0; 
Completed = 1; 
Failed = 2 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NextBOMCalculationProcess', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'NextTargetScheduledCalculation_StatusProperty', @value=N'Scheduled = 0;  
WaitingInQueue = 1; 
InProgress = 2; 
Completed = 3; 
Failed = 4 ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NextTargetScheduledCalculation', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'(0-waiting for Approval ,1- approved,2 - rejected)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PriceIncrease', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'Status', @value=N'
Started = 0;
Finished=1;
FinishedWithErrors=2;
Failed = 3;
Resend = 4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProcessStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Supported format: Name1#0;Name2#1; ...  
Name can be: ItemId, GroupId
0 means single selection allowed
1 means multiple selection allowed' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Report', @level2type=N'COLUMN',@level2name=N'Parameter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Possible values: LogiXML, SSRS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Report', @level2type=N'COLUMN',@level2name=N'ReportType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Possible values: ItemSearch, Dashboard, PriceRule' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Report', @level2type=N'COLUMN',@level2name=N'ReportGroupType'
GO
EXEC sys.sp_addextendedproperty @name=N'IncreaseDecrease', @value=N'
Increase = 1;
Decrease = 0' , @level0type=N'SCHEMA',@level0name=N'history', @level1type=N'TABLE',@level1name=N'DampeningRangeVQHistory'
GO
EXEC sys.sp_addextendedproperty @name=N'Status_Description', @value=N'NotStarted = 0; InProgress = 1; Completed = 2' , @level0type=N'SCHEMA',@level0name=N'import', @level1type=N'TABLE',@level1name=N'GuidedSetupWizardStatusType', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1 - ApplicationUser;
2 - NavettiAppsUser;
3 - DealManagementUser' , @level0type=N'SCHEMA',@level0name=N'security', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Type'
GO
