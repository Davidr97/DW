USE [MSEdb]
GO
/****** Object:  Table [dbo].[Code_Industry]    Script Date: 12/10/2018 6:19:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Code_Industry](
	[Code] [nvarchar](20) NOT NULL,
	[Industry] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MSE_Active]    Script Date: 12/10/2018 6:19:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MSE_Active](
	[Code] [nvarchar](20) NOT NULL,
	[TransactionDate] [date] NOT NULL,
	[LastPrice] [decimal](18, 2) NULL,
	[MaxPrice] [decimal](18, 2) NULL,
	[MinPrice] [decimal](18, 2) NULL,
	[AvgPrice] [decimal](18, 2) NULL,
	[Turnover] [decimal](18, 2) NULL,
	[Quantity] [int] NULL,
	[TotalTurnover] [decimal](18, 2) NULL,
	[TotalTurnover_incBlocks] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[TransactionDate] DESC,
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MSE_BulkUnsert]    Script Date: 12/10/2018 6:19:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MSE_BulkUnsert](
	[Code] [varchar](50) NULL,
	[TransactionDate] [varchar](50) NULL,
	[LastPrice] [varchar](50) NULL,
	[MaxPrice] [varchar](50) NULL,
	[MinPrice] [varchar](50) NULL,
	[AvgPrice] [varchar](50) NULL,
	[Turnover] [varchar](50) NULL,
	[Quantity] [varchar](50) NULL,
	[TotalTurnover] [varchar](50) NULL,
	[TotalTurnover_incBlocks] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MSE_Full]    Script Date: 12/10/2018 6:19:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MSE_Full](
	[Code] [nvarchar](20) NOT NULL,
	[TransactionDate] [date] NOT NULL,
	[LastPrice] [decimal](18, 2) NULL,
	[MaxPrice] [decimal](18, 2) NULL,
	[MinPrice] [decimal](18, 2) NULL,
	[AvgPrice] [decimal](18, 2) NULL,
	[Turnover] [decimal](18, 2) NULL,
	[Quantity] [int] NULL,
	[TotalTurnover] [decimal](18, 2) NULL,
	[TotalTurnover_incBlocks] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[TransactionDate] DESC,
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mse_historic_data]    Script Date: 12/10/2018 6:19:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mse_historic_data](
	[Code] [varchar](50) NULL,
	[TransactionDate] [varchar](50) NULL,
	[LastPrice] [varchar](50) NULL,
	[MinPrice] [varchar](50) NULL,
	[MaxPrice] [varchar](50) NULL,
	[AvgPrice] [varchar](50) NULL,
	[Turnover] [varchar](50) NULL,
	[Quantity] [varchar](50) NULL,
	[TotalTurnover] [varchar](50) NULL,
	[TotalTurnover_incBlocks] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MSE_pivot]    Script Date: 12/10/2018 6:19:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MSE_pivot](
	[datum] [date] NOT NULL,
	[ALK_avg_price] [float] NULL,
	[ALK_qty] [float] NULL,
	[REPL_avg_price] [float] NULL,
	[REPL_qty] [float] NULL,
	[MPT_avg_price] [float] NULL,
	[MPT_qty] [float] NULL,
	[KMB_avg_price] [float] NULL,
	[KMB_qty] [float] NULL,
	[SBT_avg_price] [float] NULL,
	[SBT_qty] [float] NULL,
	[STB_avg_price] [float] NULL,
	[STB_qty] [float] NULL,
	[STBP_avg_price] [float] NULL,
	[STBP_qty] [float] NULL,
	[TTK_avg_price] [float] NULL,
	[TTK_qty] [float] NULL,
	[TNB_avg_price] [float] NULL,
	[TNB_qty] [float] NULL,
	[UNI_avg_price] [float] NULL,
	[UNI_qty] [float] NULL,
	[STIL_avg_price] [float] NULL,
	[STIL_qty] [float] NULL,
	[RZUS_avg_price] [float] NULL,
	[RZUS_qty] [float] NULL,
	[GRNT_avg_price] [float] NULL,
	[GRNT_qty] [float] NULL,
	[BESK_avg_price] [float] NULL,
	[BESK_qty] [float] NULL,
	[TPLF_avg_price] [float] NULL,
	[TPLF_qty] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[datum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
