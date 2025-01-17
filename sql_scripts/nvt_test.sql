USE [NVT_test]
GO
/****** Object:  Table [history].[ConditionValueHistory]    Script Date: 12/10/2018 11:36:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [history].[ConditionValueHistory](
	[id] [bigint] NOT NULL,
	[BusinessEntityId] [int] NOT NULL,
	[SequenceId] [int] NOT NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[Map1] [int] NOT NULL,
	[Map2] [int] NOT NULL,
	[Map3] [int] NULL,
	[Map4] [int] NULL,
	[Map5] [int] NULL,
	[Map6] [int] NULL,
	[Map7] [int] NULL,
	[Map8] [int] NULL,
	[Map9] [int] NULL,
	[Map10] [int] NULL,
	[Value] [decimal](18, 6) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[SysStartTime] [datetime2](3) NOT NULL,
	[SysEndTime] [datetime2](3) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConditionValue]    Script Date: 12/10/2018 11:36:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConditionValue](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[BusinessEntityId] [int] NOT NULL,
	[SequenceId] [int] NOT NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NOT NULL,
	[Map1] [int] NOT NULL,
	[Map2] [int] NOT NULL,
	[Map3] [int] NULL,
	[Map4] [int] NULL,
	[Map5] [int] NULL,
	[Map6] [int] NULL,
	[Map7] [int] NULL,
	[Map8] [int] NULL,
	[Map9] [int] NULL,
	[Map10] [int] NULL,
	[Value] [decimal](18, 6) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[SysStartTime] [datetime2](3) GENERATED ALWAYS AS ROW START NOT NULL,
	[SysEndTime] [datetime2](3) GENERATED ALWAYS AS ROW END NOT NULL,
 CONSTRAINT [PK_ConditionValue_NC] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
	PERIOD FOR SYSTEM_TIME ([SysStartTime], [SysEndTime])
) ON [PRIMARY]
WITH
(
SYSTEM_VERSIONING = ON ( HISTORY_TABLE = [history].[ConditionValueHistory] )
)
GO
/****** Object:  Table [dbo].[Condition]    Script Date: 12/10/2018 11:36:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Condition](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[ConditionTypeId] [int] NOT NULL,
	[BusinessEntityContainerId] [int] NOT NULL,
	[ValueTypeId] [smallint] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ImageURL] [nvarchar](max) NULL,
	[InternalCode] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_Condition] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConditionScale]    Script Date: 12/10/2018 11:36:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConditionScale](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ConditionValueId] [bigint] NOT NULL,
	[FromRange] [decimal](18, 6) NULL,
	[ToRange] [decimal](18, 6) NULL,
	[Value] [decimal](18, 6) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ConditionType]    Script Date: 12/10/2018 11:36:29 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConditionType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_ConditionType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerGlobalProperty]    Script Date: 12/10/2018 11:36:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerGlobalProperty](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[CustomerGlobalPropertyTypeid] [int] NULL,
	[Value] [nvarchar](1000) NOT NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_CustomerGlobalProperty] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerGlobalPropertyType]    Script Date: 12/10/2018 11:36:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerGlobalPropertyType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[ValueTypeId] [smallint] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_CustomerGlobalPropertyType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerGroup]    Script Date: 12/10/2018 11:36:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CustomerGroupTypeId] [int] NOT NULL,
	[BusinessEntityContainerId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_CustomerGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerGroupDetails]    Script Date: 12/10/2018 11:36:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerGroupDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerGroupId] [int] NOT NULL,
	[CustomerId] [int] NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_CustomerGroupDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerGroupProperty]    Script Date: 12/10/2018 11:36:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerGroupProperty](
	[Id] [int] NOT NULL,
	[CustomerGroupId] [int] NOT NULL,
	[CustomerGroupPropertyTypeId] [int] NOT NULL,
	[Value] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_CustomerGroupProperty] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerGroupPropertyType]    Script Date: 12/10/2018 11:36:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerGroupPropertyType](
	[Id] [int] NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_CustomerGroupPropertyType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerGroupType]    Script Date: 12/10/2018 11:36:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerGroupType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_CustomerGroupType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerLocalProperty]    Script Date: 12/10/2018 11:36:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerLocalProperty](
	[Id] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[BusinessEntityId] [int] NOT NULL,
	[CustomerLocalPropertyTypeId] [int] NOT NULL,
	[Value] [nvarchar](1000) NOT NULL,
	[ValidFrom] [date] NOT NULL,
	[ValidTo] [date] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_CustomerLocalProperty] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerLocalPropertyType]    Script Date: 12/10/2018 11:36:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerLocalPropertyType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[ValueTypeId] [smallint] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_CustomerLocalPropertyType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DBAudit]    Script Date: 12/10/2018 11:36:30 AM ******/
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
/****** Object:  Table [dbo].[Dimension]    Script Date: 12/10/2018 11:36:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dimension](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[isHierarchy] [bit] NOT NULL,
	[HierarchyView_SmartSearch] [nvarchar](50) NULL,
	[HierarchyLevels] [smallint] NULL,
	[BaseTable] [nvarchar](100) NULL,
	[BaseTable_Alias] [nvarchar](10) NULL,
	[BaseTable_NameColumn] [nvarchar](100) NULL,
	[Dim_udt] [nvarchar](20) NULL,
	[Dim_udt_Alias] [nvarchar](5) NULL,
	[Dim_udt_Column] [nvarchar](100) NULL,
	[Dim_udt_JoinQuery] [nvarchar](1000) NULL,
	[Priority] [int] NULL,
	[HierarchyView_DimensionTree] [nvarchar](50) NULL,
	[BaseTable_AllMembers] [bit] NOT NULL,
	[Code] [nvarchar](50) NULL,
	[isFilteredByBusinessEntity] [bit] NOT NULL,
	[DimensionTypeId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
	[hasDetailsTable] [bit] NOT NULL,
	[DetailsTableName] [nvarchar](100) NULL,
	[DetailsTableColumn] [nvarchar](100) NULL,
	[detailsTableNameAlias] [nvarchar](10) NULL,
 CONSTRAINT [PK_Dimension] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimensionToBusinessEntity]    Script Date: 12/10/2018 11:36:30 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimensionToBusinessEntity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BusinessEntityId] [int] NOT NULL,
	[DimensionId] [int] NOT NULL,
	[ValueId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_DimensionToBusinessEntity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimensionType]    Script Date: 12/10/2018 11:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimensionType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_DimensionType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DummyTable]    Script Date: 12/10/2018 11:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DummyTable](
	[Id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HierarchyDetails]    Script Date: 12/10/2018 11:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HierarchyDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HierarchyTypeId] [int] NOT NULL,
	[ParentId] [int] NOT NULL,
	[ChildId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_HierarchyDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HierarchyType]    Script Date: 12/10/2018 11:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HierarchyType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[BaseTable] [nvarchar](100) NULL,
	[NumberOfLevels] [int] NULL,
	[Code] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_HierarchyType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemGroup]    Script Date: 12/10/2018 11:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[ItemGroupTypeId] [int] NOT NULL,
	[Code] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_ItemGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemGroupDetails]    Script Date: 12/10/2018 11:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemGroupDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemGroupId] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_ItemGroupDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemGroupType]    Script Date: 12/10/2018 11:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemGroupType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_ItemGroupType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemPricingGroup]    Script Date: 12/10/2018 11:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemPricingGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_ItemPricingGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemPricingGroupDetails]    Script Date: 12/10/2018 11:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemPricingGroupDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ItemPricingGroupId] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_ItemPricingGroupDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductVersion]    Script Date: 12/10/2018 11:36:31 AM ******/
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
/****** Object:  Table [dbo].[RebateBase]    Script Date: 12/10/2018 11:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RebateBase](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_RebateBase] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RebateType]    Script Date: 12/10/2018 11:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RebateType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_RebateType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScaleType]    Script Date: 12/10/2018 11:36:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScaleType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
	[ScaleDim_udt] [nvarchar](20) NULL,
	[BaseTable] [nvarchar](100) NULL,
	[BaseTable_AggColumn] [nvarchar](100) NULL,
	[hasCurrency] [bit] NOT NULL,
 CONSTRAINT [PK_DiscountScaleType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scenario]    Script Date: 12/10/2018 11:36:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scenario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](100) NOT NULL,
	[ScenarioTypeId] [int] NOT NULL,
	[ScenarioConditionTypeId] [int] NOT NULL,
	[ScenarioStatusId] [int] NOT NULL,
	[BusinessEntityId] [int] NOT NULL,
	[CustomerDimensionId] [int] NOT NULL,
	[CustomerDimensionValue] [int] NOT NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Scenario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScenarioCondition]    Script Date: 12/10/2018 11:36:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScenarioCondition](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[ScenarioId] [int] NOT NULL,
	[ScenarioConditionSequenceId] [int] NOT NULL,
	[RebateBaseId] [int] NULL,
	[RebateTypeId] [int] NULL,
	[isExclusion] [bit] NOT NULL,
	[IsExclusionForScenarioConditionId] [int] NULL,
	[MinimumSegments] [int] NULL,
	[AdditionalValueMinimumIncrease] [decimal](18, 6) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_ScenarioCondition] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScenarioConditionSequence]    Script Date: 12/10/2018 11:36:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScenarioConditionSequence](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[DimensionList] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_ScenarioConditionSequence] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScenarioConditionSequenceDetails]    Script Date: 12/10/2018 11:36:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScenarioConditionSequenceDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ScenarioConditionSequenceId] [int] NOT NULL,
	[DimensionId] [int] NOT NULL,
	[MapColumn] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_ScenarioConditionSequenceDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScenarioConditionType]    Script Date: 12/10/2018 11:36:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScenarioConditionType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_ScenarioConditionType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScenarioConditionValue]    Script Date: 12/10/2018 11:36:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScenarioConditionValue](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ScenarioConditionId] [int] NOT NULL,
	[Map1] [int] NOT NULL,
	[Map2] [int] NOT NULL,
	[Map3] [int] NULL,
	[Map4] [int] NULL,
	[Map5] [int] NULL,
	[Map6] [int] NULL,
	[Map7] [int] NULL,
	[Map8] [int] NULL,
	[Map9] [int] NULL,
	[Map10] [int] NULL,
	[FromRange] [decimal](18, 6) NULL,
	[ToRange] [decimal](18, 6) NULL,
	[Value] [decimal](18, 6) NULL,
	[AdditionalValue] [decimal](18, 6) NULL,
	[isMostProbable] [bit] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
 CONSTRAINT [PK_ScenarioConditionValue] PRIMARY KEY NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScenarioStatus]    Script Date: 12/10/2018 11:36:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScenarioStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_ScenarioStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ScenarioType]    Script Date: 12/10/2018 11:36:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ScenarioType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_ScenarioType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchemaVersions]    Script Date: 12/10/2018 11:36:32 AM ******/
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
/****** Object:  Table [dbo].[Sequence]    Script Date: 12/10/2018 11:36:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sequence](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ConditionId] [int] NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Priority] [int] NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
	[SequenceTypeId] [int] NOT NULL,
	[ScaleTypeId] [int] NULL,
 CONSTRAINT [PK_Sequence] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SequenceDetails]    Script Date: 12/10/2018 11:36:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SequenceDetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SequenceId] [int] NOT NULL,
	[DimensionId] [int] NOT NULL,
	[MapColumn] [nvarchar](10) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_SequenceDetails] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UI_SequenceDetails_SequenceDimension] UNIQUE NONCLUSTERED 
(
	[SequenceId] ASC,
	[DimensionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UI_SequenceDetails_SequenceMapColumn] UNIQUE NONCLUSTERED 
(
	[SequenceId] ASC,
	[MapColumn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SequenceRelation]    Script Date: 12/10/2018 11:36:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SequenceRelation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SequenceId] [int] NOT NULL,
	[RelatedSequenceId] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
	[SequenceRelationTypeId] [int] NOT NULL,
 CONSTRAINT [PK_SequenceRelation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [UI_SequenceRelation_SequenceId] UNIQUE NONCLUSTERED 
(
	[SequenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SequenceRelationType]    Script Date: 12/10/2018 11:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SequenceRelationType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_SequenceRelationType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SequenceType]    Script Date: 12/10/2018 11:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SequenceType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_SequenceType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StairsCalculationFormula]    Script Date: 12/10/2018 11:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StairsCalculationFormula](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NOT NULL,
	[isBase] [bit] NOT NULL,
	[Formula] [nvarchar](max) NULL,
	[isOutput] [bit] NOT NULL,
	[ValueTypeId] [smallint] NOT NULL,
	[IsHidden] [bit] NOT NULL,
	[ParentColumnId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_StairsCalculationFormula] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemParameter]    Script Date: 12/10/2018 11:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemParameter](
	[Name] [varchar](100) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_SystemParameter] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ValueType]    Script Date: 12/10/2018 11:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ValueType](
	[id] [smallint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_ValueType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [import].[ConditionValue]    Script Date: 12/10/2018 11:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [import].[ConditionValue](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[ImportRequestId] [int] NULL,
	[ImportRowNumber] [int] NULL,
	[ImportStatusId] [smallint] NULL,
	[ImportErrorMessage] [nvarchar](4000) NULL,
	[Map1Code] [nvarchar](200) NULL,
	[Map2Code] [nvarchar](200) NULL,
	[Map3Code] [nvarchar](200) NULL,
	[Map4Code] [nvarchar](200) NULL,
	[Map5Code] [nvarchar](200) NULL,
	[Map6Code] [nvarchar](200) NULL,
	[Map7Code] [nvarchar](200) NULL,
	[Map8Code] [nvarchar](200) NULL,
	[Map9Code] [nvarchar](200) NULL,
	[Map10Code] [nvarchar](200) NULL,
	[FromRange] [nvarchar](100) NULL,
	[Value] [nvarchar](100) NULL,
 CONSTRAINT [PK_importConditionValue] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [import].[ImportRequest]    Script Date: 12/10/2018 11:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [import].[ImportRequest](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImportTypeId] [int] NOT NULL,
	[BusinessEntityId] [int] NOT NULL,
	[SequenceId] [int] NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL,
	[StartedOn] [datetime] NULL,
	[FinishedOn] [datetime] NULL,
	[ImportStatusId] [smallint] NULL,
	[Output] [nvarchar](max) NULL,
	[TotalRecords] [int] NULL,
	[ImportedRecords] [int] NULL,
	[ImportedFile] [nvarchar](200) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
 CONSTRAINT [PK_ImportImportRequest_Id] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [import].[ImportStatus]    Script Date: 12/10/2018 11:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [import].[ImportStatus](
	[Id] [smallint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](100) NULL,
 CONSTRAINT [PK_ImportStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [import].[ImportType]    Script Date: 12/10/2018 11:36:33 AM ******/
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
	[CreatedDate] [datetime] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[ModifiedDate] [datetime] SPARSE  NULL,
	[ModifiedBy] [int] SPARSE  NULL,
 CONSTRAINT [PK_ImportImportType_ID] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [output].[OutgoingMessagesConfiguration]    Script Date: 12/10/2018 11:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [output].[OutgoingMessagesConfiguration](
	[MessageName] [nvarchar](100) NULL,
	[FileName] [nvarchar](100) NULL,
	[FilePath] [nvarchar](100) NULL,
	[InsertQueryString] [nvarchar](max) NULL,
	[SelectQueryString] [nvarchar](max) NULL,
	[JoinQueryString] [nvarchar](max) NULL,
	[XMLFormatString] [nvarchar](max) NULL,
	[XMLSchemaString] [nvarchar](max) NULL,
	[LastRunOut] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [output].[OutgoingMessagesLog]    Script Date: 12/10/2018 11:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [output].[OutgoingMessagesLog](
	[MessageName] [nvarchar](100) NULL,
	[LogDate] [datetime] NULL,
	[RowsNumber] [int] NULL,
	[ErrorMessage] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [security].[Roles]    Script Date: 12/10/2018 11:36:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [security].[Roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RoleGuid] [uniqueidentifier] NOT NULL,
	[RoleCode] [nvarchar](200) NOT NULL,
	[Description] [nvarchar](1000) NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ConditionValue] ADD  CONSTRAINT [DF_ConditionValue_SysStartTime]  DEFAULT (sysutcdatetime()) FOR [SysStartTime]
GO
ALTER TABLE [dbo].[ConditionValue] ADD  CONSTRAINT [DF_ConditionValue_SysEndTime]  DEFAULT (CONVERT([datetime2],'9999-12-31 23:59:59.999')) FOR [SysEndTime]
GO
ALTER TABLE [import].[ImportRequest] ADD  CONSTRAINT [DF_ImportRequest_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Condition]  WITH CHECK ADD  CONSTRAINT [FK_Condition_ConditionType] FOREIGN KEY([ConditionTypeId])
REFERENCES [dbo].[ConditionType] ([id])
GO
ALTER TABLE [dbo].[Condition] CHECK CONSTRAINT [FK_Condition_ConditionType]
GO
ALTER TABLE [dbo].[Condition]  WITH CHECK ADD  CONSTRAINT [FK_Condition_ValueType] FOREIGN KEY([ValueTypeId])
REFERENCES [dbo].[ValueType] ([id])
GO
ALTER TABLE [dbo].[Condition] CHECK CONSTRAINT [FK_Condition_ValueType]
GO
ALTER TABLE [dbo].[ConditionScale]  WITH CHECK ADD  CONSTRAINT [FK_ConditionScale_ConditionValue] FOREIGN KEY([ConditionValueId])
REFERENCES [dbo].[ConditionValue] ([id])
GO
ALTER TABLE [dbo].[ConditionScale] CHECK CONSTRAINT [FK_ConditionScale_ConditionValue]
GO
ALTER TABLE [dbo].[ConditionValue]  WITH CHECK ADD  CONSTRAINT [FK_ConditionValue_Sequence] FOREIGN KEY([SequenceId])
REFERENCES [dbo].[Sequence] ([id])
GO
ALTER TABLE [dbo].[ConditionValue] CHECK CONSTRAINT [FK_ConditionValue_Sequence]
GO
ALTER TABLE [dbo].[CustomerGlobalProperty]  WITH CHECK ADD  CONSTRAINT [FK_CustomerGlobalProperty_CustomerGlobalPropertyType] FOREIGN KEY([CustomerGlobalPropertyTypeid])
REFERENCES [dbo].[CustomerGlobalPropertyType] ([Id])
GO
ALTER TABLE [dbo].[CustomerGlobalProperty] CHECK CONSTRAINT [FK_CustomerGlobalProperty_CustomerGlobalPropertyType]
GO
ALTER TABLE [dbo].[CustomerGlobalPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_CustomerGlobalPropertyType_ValueType] FOREIGN KEY([ValueTypeId])
REFERENCES [dbo].[ValueType] ([id])
GO
ALTER TABLE [dbo].[CustomerGlobalPropertyType] CHECK CONSTRAINT [FK_CustomerGlobalPropertyType_ValueType]
GO
ALTER TABLE [dbo].[CustomerGroup]  WITH CHECK ADD  CONSTRAINT [FK_CustomerGroup_CustomerGroupType] FOREIGN KEY([CustomerGroupTypeId])
REFERENCES [dbo].[CustomerGroupType] ([Id])
GO
ALTER TABLE [dbo].[CustomerGroup] CHECK CONSTRAINT [FK_CustomerGroup_CustomerGroupType]
GO
ALTER TABLE [dbo].[CustomerGroupDetails]  WITH CHECK ADD  CONSTRAINT [FK_CustomerGroupDetails_CustomerGroup] FOREIGN KEY([CustomerGroupId])
REFERENCES [dbo].[CustomerGroup] ([Id])
GO
ALTER TABLE [dbo].[CustomerGroupDetails] CHECK CONSTRAINT [FK_CustomerGroupDetails_CustomerGroup]
GO
ALTER TABLE [dbo].[CustomerGroupProperty]  WITH CHECK ADD  CONSTRAINT [FK_CustomerGroupProperty_CustomerGroup] FOREIGN KEY([CustomerGroupId])
REFERENCES [dbo].[CustomerGroup] ([Id])
GO
ALTER TABLE [dbo].[CustomerGroupProperty] CHECK CONSTRAINT [FK_CustomerGroupProperty_CustomerGroup]
GO
ALTER TABLE [dbo].[CustomerGroupProperty]  WITH CHECK ADD  CONSTRAINT [FK_CustomerGroupProperty_CustomerGroupPropertyType] FOREIGN KEY([CustomerGroupPropertyTypeId])
REFERENCES [dbo].[CustomerGroupPropertyType] ([Id])
GO
ALTER TABLE [dbo].[CustomerGroupProperty] CHECK CONSTRAINT [FK_CustomerGroupProperty_CustomerGroupPropertyType]
GO
ALTER TABLE [dbo].[CustomerLocalProperty]  WITH CHECK ADD  CONSTRAINT [FK_CustomerLocalProperty_CustomerLocalPropertyType] FOREIGN KEY([CustomerLocalPropertyTypeId])
REFERENCES [dbo].[CustomerLocalPropertyType] ([Id])
GO
ALTER TABLE [dbo].[CustomerLocalProperty] CHECK CONSTRAINT [FK_CustomerLocalProperty_CustomerLocalPropertyType]
GO
ALTER TABLE [dbo].[CustomerLocalPropertyType]  WITH CHECK ADD  CONSTRAINT [FK_CustomerLocalPropertyType_ValueType] FOREIGN KEY([ValueTypeId])
REFERENCES [dbo].[ValueType] ([id])
GO
ALTER TABLE [dbo].[CustomerLocalPropertyType] CHECK CONSTRAINT [FK_CustomerLocalPropertyType_ValueType]
GO
ALTER TABLE [dbo].[Dimension]  WITH CHECK ADD  CONSTRAINT [FK_Dimension_DimensionType] FOREIGN KEY([DimensionTypeId])
REFERENCES [dbo].[DimensionType] ([Id])
GO
ALTER TABLE [dbo].[Dimension] CHECK CONSTRAINT [FK_Dimension_DimensionType]
GO
ALTER TABLE [dbo].[DimensionToBusinessEntity]  WITH CHECK ADD  CONSTRAINT [FK_DimensionToBusinessEntity_Dimension] FOREIGN KEY([DimensionId])
REFERENCES [dbo].[Dimension] ([id])
GO
ALTER TABLE [dbo].[DimensionToBusinessEntity] CHECK CONSTRAINT [FK_DimensionToBusinessEntity_Dimension]
GO
ALTER TABLE [dbo].[HierarchyDetails]  WITH CHECK ADD  CONSTRAINT [FK_HierarchyDetails_HierarchyType] FOREIGN KEY([HierarchyTypeId])
REFERENCES [dbo].[HierarchyType] ([Id])
GO
ALTER TABLE [dbo].[HierarchyDetails] CHECK CONSTRAINT [FK_HierarchyDetails_HierarchyType]
GO
ALTER TABLE [dbo].[ItemGroup]  WITH CHECK ADD  CONSTRAINT [FK_ItemGroup_ItemGroupType] FOREIGN KEY([ItemGroupTypeId])
REFERENCES [dbo].[ItemGroupType] ([Id])
GO
ALTER TABLE [dbo].[ItemGroup] CHECK CONSTRAINT [FK_ItemGroup_ItemGroupType]
GO
ALTER TABLE [dbo].[ItemGroupDetails]  WITH CHECK ADD  CONSTRAINT [FK_ItemGroupDetails_ItemGroup] FOREIGN KEY([ItemGroupId])
REFERENCES [dbo].[ItemGroup] ([Id])
GO
ALTER TABLE [dbo].[ItemGroupDetails] CHECK CONSTRAINT [FK_ItemGroupDetails_ItemGroup]
GO
ALTER TABLE [dbo].[ItemPricingGroupDetails]  WITH CHECK ADD  CONSTRAINT [FK_ItemPricingGroupDetails_ItemPricingGroup] FOREIGN KEY([ItemPricingGroupId])
REFERENCES [dbo].[ItemPricingGroup] ([Id])
GO
ALTER TABLE [dbo].[ItemPricingGroupDetails] CHECK CONSTRAINT [FK_ItemPricingGroupDetails_ItemPricingGroup]
GO
ALTER TABLE [dbo].[Scenario]  WITH CHECK ADD  CONSTRAINT [FK_Scenario_Dimension] FOREIGN KEY([CustomerDimensionId])
REFERENCES [dbo].[Dimension] ([id])
GO
ALTER TABLE [dbo].[Scenario] CHECK CONSTRAINT [FK_Scenario_Dimension]
GO
ALTER TABLE [dbo].[Scenario]  WITH CHECK ADD  CONSTRAINT [FK_Scenario_ScenarioConditionType] FOREIGN KEY([ScenarioConditionTypeId])
REFERENCES [dbo].[ScenarioConditionType] ([Id])
GO
ALTER TABLE [dbo].[Scenario] CHECK CONSTRAINT [FK_Scenario_ScenarioConditionType]
GO
ALTER TABLE [dbo].[Scenario]  WITH CHECK ADD  CONSTRAINT [FK_Scenario_ScenarioStatus] FOREIGN KEY([ScenarioStatusId])
REFERENCES [dbo].[ScenarioStatus] ([Id])
GO
ALTER TABLE [dbo].[Scenario] CHECK CONSTRAINT [FK_Scenario_ScenarioStatus]
GO
ALTER TABLE [dbo].[Scenario]  WITH CHECK ADD  CONSTRAINT [FK_Scenario_ScenarioType] FOREIGN KEY([ScenarioTypeId])
REFERENCES [dbo].[ScenarioType] ([Id])
GO
ALTER TABLE [dbo].[Scenario] CHECK CONSTRAINT [FK_Scenario_ScenarioType]
GO
ALTER TABLE [dbo].[ScenarioCondition]  WITH CHECK ADD  CONSTRAINT [FK_ScenarioCondition_RebateBase] FOREIGN KEY([RebateBaseId])
REFERENCES [dbo].[RebateBase] ([id])
GO
ALTER TABLE [dbo].[ScenarioCondition] CHECK CONSTRAINT [FK_ScenarioCondition_RebateBase]
GO
ALTER TABLE [dbo].[ScenarioCondition]  WITH CHECK ADD  CONSTRAINT [FK_ScenarioCondition_RebateType] FOREIGN KEY([RebateTypeId])
REFERENCES [dbo].[RebateType] ([id])
GO
ALTER TABLE [dbo].[ScenarioCondition] CHECK CONSTRAINT [FK_ScenarioCondition_RebateType]
GO
ALTER TABLE [dbo].[ScenarioCondition]  WITH CHECK ADD  CONSTRAINT [FK_ScenarioCondition_Scenario] FOREIGN KEY([ScenarioId])
REFERENCES [dbo].[Scenario] ([Id])
GO
ALTER TABLE [dbo].[ScenarioCondition] CHECK CONSTRAINT [FK_ScenarioCondition_Scenario]
GO
ALTER TABLE [dbo].[ScenarioCondition]  WITH CHECK ADD  CONSTRAINT [FK_ScenarioCondition_ScenarioCondition] FOREIGN KEY([IsExclusionForScenarioConditionId])
REFERENCES [dbo].[ScenarioCondition] ([Id])
GO
ALTER TABLE [dbo].[ScenarioCondition] CHECK CONSTRAINT [FK_ScenarioCondition_ScenarioCondition]
GO
ALTER TABLE [dbo].[ScenarioCondition]  WITH CHECK ADD  CONSTRAINT [FK_ScenarioCondition_ScenarioConditionSequence] FOREIGN KEY([ScenarioConditionSequenceId])
REFERENCES [dbo].[ScenarioConditionSequence] ([Id])
GO
ALTER TABLE [dbo].[ScenarioCondition] CHECK CONSTRAINT [FK_ScenarioCondition_ScenarioConditionSequence]
GO
ALTER TABLE [dbo].[ScenarioConditionSequenceDetails]  WITH CHECK ADD  CONSTRAINT [FK_ScenarioConditionSequenceDetails_Dimension] FOREIGN KEY([DimensionId])
REFERENCES [dbo].[Dimension] ([id])
GO
ALTER TABLE [dbo].[ScenarioConditionSequenceDetails] CHECK CONSTRAINT [FK_ScenarioConditionSequenceDetails_Dimension]
GO
ALTER TABLE [dbo].[ScenarioConditionSequenceDetails]  WITH CHECK ADD  CONSTRAINT [FK_ScenarioConditionSequenceDetails_ScenarioConditionSequence] FOREIGN KEY([ScenarioConditionSequenceId])
REFERENCES [dbo].[ScenarioConditionSequence] ([Id])
GO
ALTER TABLE [dbo].[ScenarioConditionSequenceDetails] CHECK CONSTRAINT [FK_ScenarioConditionSequenceDetails_ScenarioConditionSequence]
GO
ALTER TABLE [dbo].[ScenarioConditionValue]  WITH CHECK ADD  CONSTRAINT [FK_ScenarioConditionValue_ScenarioCondition] FOREIGN KEY([ScenarioConditionId])
REFERENCES [dbo].[ScenarioCondition] ([Id])
GO
ALTER TABLE [dbo].[ScenarioConditionValue] CHECK CONSTRAINT [FK_ScenarioConditionValue_ScenarioCondition]
GO
ALTER TABLE [dbo].[Sequence]  WITH CHECK ADD  CONSTRAINT [FK_Sequence_Condition] FOREIGN KEY([ConditionId])
REFERENCES [dbo].[Condition] ([id])
GO
ALTER TABLE [dbo].[Sequence] CHECK CONSTRAINT [FK_Sequence_Condition]
GO
ALTER TABLE [dbo].[Sequence]  WITH CHECK ADD  CONSTRAINT [FK_Sequence_ScaleType] FOREIGN KEY([ScaleTypeId])
REFERENCES [dbo].[ScaleType] ([Id])
GO
ALTER TABLE [dbo].[Sequence] CHECK CONSTRAINT [FK_Sequence_ScaleType]
GO
ALTER TABLE [dbo].[Sequence]  WITH CHECK ADD  CONSTRAINT [FK_Sequence_SequenceType] FOREIGN KEY([SequenceTypeId])
REFERENCES [dbo].[SequenceType] ([Id])
GO
ALTER TABLE [dbo].[Sequence] CHECK CONSTRAINT [FK_Sequence_SequenceType]
GO
ALTER TABLE [dbo].[SequenceDetails]  WITH CHECK ADD  CONSTRAINT [FK_SequenceDetails_Dimension] FOREIGN KEY([DimensionId])
REFERENCES [dbo].[Dimension] ([id])
GO
ALTER TABLE [dbo].[SequenceDetails] CHECK CONSTRAINT [FK_SequenceDetails_Dimension]
GO
ALTER TABLE [dbo].[SequenceDetails]  WITH CHECK ADD  CONSTRAINT [FK_SequenceDetails_Sequence] FOREIGN KEY([SequenceId])
REFERENCES [dbo].[Sequence] ([id])
GO
ALTER TABLE [dbo].[SequenceDetails] CHECK CONSTRAINT [FK_SequenceDetails_Sequence]
GO
ALTER TABLE [dbo].[SequenceRelation]  WITH CHECK ADD  CONSTRAINT [FK_SequenceRelation_RelatedSequence] FOREIGN KEY([RelatedSequenceId])
REFERENCES [dbo].[Sequence] ([id])
GO
ALTER TABLE [dbo].[SequenceRelation] CHECK CONSTRAINT [FK_SequenceRelation_RelatedSequence]
GO
ALTER TABLE [dbo].[SequenceRelation]  WITH CHECK ADD  CONSTRAINT [FK_SequenceRelation_Sequence] FOREIGN KEY([SequenceId])
REFERENCES [dbo].[Sequence] ([id])
GO
ALTER TABLE [dbo].[SequenceRelation] CHECK CONSTRAINT [FK_SequenceRelation_Sequence]
GO
ALTER TABLE [dbo].[SequenceRelation]  WITH CHECK ADD  CONSTRAINT [FK_SequenceRelation_SequenceRelationType] FOREIGN KEY([SequenceRelationTypeId])
REFERENCES [dbo].[SequenceRelationType] ([id])
GO
ALTER TABLE [dbo].[SequenceRelation] CHECK CONSTRAINT [FK_SequenceRelation_SequenceRelationType]
GO
ALTER TABLE [dbo].[StairsCalculationFormula]  WITH CHECK ADD  CONSTRAINT [FK_StairsCalculationFormula_StairsCalculationFormula] FOREIGN KEY([ParentColumnId])
REFERENCES [dbo].[StairsCalculationFormula] ([id])
GO
ALTER TABLE [dbo].[StairsCalculationFormula] CHECK CONSTRAINT [FK_StairsCalculationFormula_StairsCalculationFormula]
GO
ALTER TABLE [dbo].[StairsCalculationFormula]  WITH CHECK ADD  CONSTRAINT [FK_StairsCalculationFormula_ValueType] FOREIGN KEY([ValueTypeId])
REFERENCES [dbo].[ValueType] ([id])
GO
ALTER TABLE [dbo].[StairsCalculationFormula] CHECK CONSTRAINT [FK_StairsCalculationFormula_ValueType]
GO
ALTER TABLE [import].[ConditionValue]  WITH CHECK ADD  CONSTRAINT [FK_ConditionValue_ImportRequest] FOREIGN KEY([ImportRequestId])
REFERENCES [import].[ImportRequest] ([Id])
GO
ALTER TABLE [import].[ConditionValue] CHECK CONSTRAINT [FK_ConditionValue_ImportRequest]
GO
ALTER TABLE [import].[ImportRequest]  WITH CHECK ADD  CONSTRAINT [FK_ImportRequest_ImportType] FOREIGN KEY([ImportTypeId])
REFERENCES [import].[ImportType] ([Id])
GO
ALTER TABLE [import].[ImportRequest] CHECK CONSTRAINT [FK_ImportRequest_ImportType]
GO
ALTER TABLE [dbo].[HierarchyDetails]  WITH CHECK ADD  CONSTRAINT [CHK_HierarchyDetails_ParentChild] CHECK  (([ParentId]<>[ChildId]))
GO
ALTER TABLE [dbo].[HierarchyDetails] CHECK CONSTRAINT [CHK_HierarchyDetails_ParentChild]
GO
ALTER TABLE [import].[ConditionValue]  WITH CHECK ADD  CONSTRAINT [CHK_ConditionValue_ImportStatusId] CHECK  (([ImportStatusId]=(0) OR [ImportStatusId]=(1) OR [ImportStatusId]=(2) OR [ImportStatusId]=(3) OR [ImportStatusId]=(4)))
GO
ALTER TABLE [import].[ConditionValue] CHECK CONSTRAINT [CHK_ConditionValue_ImportStatusId]
GO
