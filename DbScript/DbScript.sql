
GO
/****** Object:  Table [dbo].[Account]    Script Date: 2020/6/8 星期一 16:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[AccountId] [uniqueidentifier] NOT NULL,
	[AccountType] [int] NOT NULL,
	[AccountName] [varchar](50) NOT NULL,
	[AccountBank] [varchar](100) NOT NULL,
	[AccountNumber] [varchar](100) NULL,
	[AccountAddress] [varchar](200) NULL,
	[AccountRemark] [varchar](200) NULL,
	[Sort] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Attachment]    Script Date: 2020/6/8 星期一 16:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Attachment](
	[AttachmentId] [uniqueidentifier] NOT NULL,
	[Folder] [varchar](10) NOT NULL,
	[Title] [nvarchar](500) NOT NULL,
	[SizeOriginal] [bigint] NOT NULL,
	[SizeSmall] [bigint] NOT NULL,
	[SizeBig] [bigint] NOT NULL,
	[FileExt] [varchar](50) NOT NULL,
	[Downloads] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[CreateObjectTypeId] [int] NOT NULL,
	[CreateObjectId] [uniqueidentifier] NULL,
	[CreateDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AttachmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BuyOrder]    Script Date: 2020/6/8 星期一 16:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BuyOrder](
	[BuyOrderId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[BuyOrderNumber] [varchar](50) NOT NULL,
	[Title] [varchar](200) NOT NULL,
	[ArrivalsDate] [datetime] NULL,
	[ShipFeight] [decimal](18, 2) NOT NULL,
	[ShipFee] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NOT NULL,
	[CurrencyId] [uniqueidentifier] NOT NULL,
	[CurrencyName] [varchar](50) NOT NULL,
	[CurrencyText] [nchar](10) NOT NULL,
	[CurrencySymbol] [nchar](10) NOT NULL,
	[CurrencyRate] [decimal](18, 2) NOT NULL,
	[DefaultSettlement] [int] NOT NULL,
	[DefaultShip] [varchar](100) NULL,
	[DefaultAccount] [varchar](200) NULL,
	[DefaultRemark] [varchar](1000) NULL,
	[Status] [int] NOT NULL,
	[BuySupplierId] [uniqueidentifier] NULL,
	[SupplierCompany] [varchar](100) NULL,
	[SupplierName] [varchar](100) NULL,
	[SupplierTel] [varchar](100) NULL,
	[SupplierMobilePhone] [varchar](100) NULL,
	[SupplierEmail] [varchar](100) NULL,
	[SupplierQQ] [varchar](100) NULL,
	[SupplierWechat] [varchar](100) NULL,
	[SupplierAddress] [varchar](200) NULL,
	[UserNickName] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[PostCheckDate] [datetime] NULL,
	[CheckRemark] [varchar](500) NULL,
	[CheckUserName] [varchar](50) NULL,
	[CheckDate] [datetime] NULL,
	[PostPurcharseDate] [datetime] NULL,
	[PayFinishDate] [datetime] NULL,
	[PayFinishUserName] [varchar](50) NULL,
	[StockInQcUserName] [varchar](50) NULL,
	[StockInRemark] [varchar](500) NULL,
	[StockInUserName] [varchar](50) NULL,
	[StockInDate] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BuyOrderProduct]    Script Date: 2020/6/8 星期一 16:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BuyOrderProduct](
	[BuyOrderProductId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[BuyOrderId] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Qty] [int] NOT NULL,
	[InQty] [int] NOT NULL,
	[Remark] [varchar](200) NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsStockIn] [bit] NOT NULL,
	[IsNewAdd] [bit] NOT NULL,
	[InStockRemark] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BuyPay]    Script Date: 2020/6/8 星期一 16:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BuyPay](
	[BuyPayId] [uniqueidentifier] NOT NULL,
	[BuyOrderId] [uniqueidentifier] NOT NULL,
	[AccountId] [uniqueidentifier] NOT NULL,
	[AccountInfo] [varchar](300) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[CurrencyId] [uniqueidentifier] NOT NULL,
	[CurrencySymbol] [varchar](50) NOT NULL,
	[CurrencyRate] [decimal](18, 2) NOT NULL,
	[TransactionNumber] [varchar](100) NOT NULL,
	[Remark] [varchar](300) NULL,
	[CreateName] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BuySupplier]    Script Date: 2020/6/8 星期一 16:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BuySupplier](
	[BuySupplierId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[SupplierCompany] [varchar](100) NULL,
	[SupplierName] [varchar](100) NULL,
	[SupplierTel] [varchar](100) NULL,
	[SupplierMobilePhone] [varchar](100) NULL,
	[SupplierEmail] [varchar](100) NULL,
	[SupplierQQ] [varchar](100) NULL,
	[SupplierWechat] [varchar](100) NULL,
	[SupplierAddress] [varchar](200) NULL,
	[SupplierRemark] [varchar](100) NULL,
	[CreateDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 2020/6/8 星期一 16:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryParentId] [int] NOT NULL,
	[CategoryName] [varchar](200) NOT NULL,
	[Sort] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Currency]    Script Date: 2020/6/8 星期一 16:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Currency](
	[CurrencyId] [uniqueidentifier] NOT NULL,
	[CurrencyName] [varchar](50) NOT NULL,
	[CurrencyText] [varchar](50) NOT NULL,
	[CurrencySymbol] [varchar](50) NOT NULL,
	[CurrencyRate] [decimal](18, 2) NOT NULL,
	[Sort] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 2020/6/8 星期一 16:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [uniqueidentifier] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[ProductSku] [varchar](50) NOT NULL,
	[ProductName] [varchar](500) NOT NULL,
	[ProductSpecification] [varchar](500) NULL,
	[ProductRemark] [varchar](500) NULL,
	[ProductWeight] [int] NOT NULL,
	[InTransitQty] [int] NOT NULL,
	[SaleQty] [int] NOT NULL,
	[HoldQty] [int] NOT NULL,
	[OrderQty] [int] NOT NULL,
	[Price1] [decimal](18, 2) NOT NULL,
	[Price10] [decimal](18, 2) NOT NULL,
	[Price100] [decimal](18, 2) NOT NULL,
	[ImageQty] [int] NOT NULL,
	[AreaPosition] [varchar](100) NULL,
	[Status] [int] NOT NULL,
	[CreateName] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[StockInDate] [datetime] NOT NULL,
	[PurcharseAvgPrice] [decimal](18, 2) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 2020/6/8 星期一 16:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductImage](
	[ProductImageId] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[PathImage] [varchar](100) NOT NULL,
	[PathLogoImage] [varchar](100) NULL,
	[Sort] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SaleConfig]    Script Date: 2020/6/8 星期一 16:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SaleConfig](
	[SaleConfigId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[PiCompanyName] [varchar](100) NULL,
	[PiCompanyAddress] [varchar](300) NULL,
	[PiMyContact] [varchar](200) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SaleOrder]    Script Date: 2020/6/8 星期一 16:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SaleOrder](
	[SaleOrderId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[SaleOrderNumber] [varchar](50) NOT NULL,
	[CurrencyId] [uniqueidentifier] NOT NULL,
	[CurrencyName] [varchar](50) NULL,
	[CurrencyText] [varchar](50) NULL,
	[CurrencySymbol] [varchar](50) NULL,
	[CurrencyRate] [decimal](18, 2) NOT NULL,
	[Title] [varchar](200) NOT NULL,
	[ShipFeight] [decimal](18, 2) NOT NULL,
	[ShipFee] [decimal](18, 2) NOT NULL,
	[Discount] [decimal](18, 2) NOT NULL,
	[ShipDate] [datetime] NULL,
	[DefaultSettlement] [int] NOT NULL,
	[DefaultShip] [varchar](100) NULL,
	[DefaultAccount] [varchar](100) NULL,
	[DefaultRemark] [varchar](1000) NULL,
	[ToConsignee] [varchar](100) NULL,
	[ToCompanyName] [varchar](200) NULL,
	[ToTelphone] [varchar](100) NULL,
	[ToZipcode] [varchar](100) NULL,
	[ToAddress] [varchar](500) NULL,
	[ToRemark] [varchar](2000) NULL,
	[UserNickName] [varchar](50) NOT NULL,
	[Status] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[PostDate] [datetime] NULL,
	[StockStart] [datetime] NULL,
	[StockStartName] [varchar](50) NULL,
	[StockEnd] [datetime] NULL,
	[StockEndName] [varchar](50) NULL,
	[FinancePostDate] [datetime] NULL,
	[FinancePostName] [varchar](50) NULL,
	[FinanceRemark] [varchar](50) NULL,
	[StockShipDate] [datetime] NULL,
	[StockRemark] [varchar](200) NULL,
	[StockOutDate] [datetime] NULL,
	[StockOutName] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SaleOrderProduct]    Script Date: 2020/6/8 星期一 16:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SaleOrderProduct](
	[SaleOrderProductId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[SaleOrderId] [uniqueidentifier] NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Qty] [int] NOT NULL,
	[Remark] [varchar](200) NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsStockOut] [bit] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SaleReceive]    Script Date: 2020/6/8 星期一 16:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SaleReceive](
	[SaleReceiveId] [uniqueidentifier] NOT NULL,
	[SaleOrderId] [uniqueidentifier] NOT NULL,
	[AccountId] [uniqueidentifier] NOT NULL,
	[AccountInfo] [varchar](300) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[TranFee] [decimal](18, 2) NOT NULL,
	[CurrencyId] [uniqueidentifier] NOT NULL,
	[CurrencySymbol] [varchar](50) NOT NULL,
	[CurrencyRate] [decimal](18, 2) NOT NULL,
	[TransactionNumber] [varchar](100) NOT NULL,
	[Remark] [varchar](300) NULL,
	[CreateName] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SaleTrack]    Script Date: 2020/6/8 星期一 16:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SaleTrack](
	[SaleTrackId] [uniqueidentifier] NOT NULL,
	[SaleOrderId] [uniqueidentifier] NOT NULL,
	[TrackName] [varchar](100) NOT NULL,
	[TrackNumber] [varchar](100) NOT NULL,
	[Feight] [decimal](18, 2) NOT NULL,
	[TrackRemark] [varchar](500) NULL,
	[CurrencyId] [uniqueidentifier] NOT NULL,
	[CurrencyName] [varchar](50) NOT NULL,
	[CurrencyText] [varchar](50) NOT NULL,
	[CurrencySymbol] [varchar](50) NOT NULL,
	[CurrencyRate] [decimal](18, 2) NOT NULL,
	[CreateName] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Site]    Script Date: 2020/6/8 星期一 16:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Site](
	[SiteId] [uniqueidentifier] NOT NULL,
	[SiteName] [varchar](500) NULL,
	[SiteUrl] [varchar](500) NULL,
	[SiteNotifyText] [varchar](max) NULL,
	[LogoImage] [varchar](500) NULL,
	[Company] [varchar](500) NULL,
	[Telphone] [varchar](500) NULL,
	[MobilePhone] [varchar](500) NULL,
	[Wechat] [varchar](500) NULL,
	[WechatImage] [varchar](500) NULL,
	[QQ] [varchar](500) NULL,
	[QQImage] [varchar](500) NULL,
	[Email] [varchar](500) NULL,
	[Fax] [varchar](500) NULL,
	[Address] [varchar](500) NULL,
	[HomeTitle] [varchar](500) NULL,
	[HomeKeywords] [varchar](500) NULL,
	[HomeDescription] [varchar](500) NULL,
	[HomeContent] [varchar](max) NULL,
	[HomeFiles] [varchar](max) NULL,
	[HomeFocusImages] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[SiteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockIn]    Script Date: 2020/6/8 星期一 16:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockIn](
	[StockInId] [int] IDENTITY(1,1) NOT NULL,
	[BuyOrderId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserNickName] [varchar](50) NOT NULL,
	[BuyOrderProductId] [uniqueidentifier] NOT NULL,
	[BuyOrderNumber] [varchar](50) NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[InQty] [int] NOT NULL,
	[Remark] [varchar](1000) NULL,
	[InStockRemark] [varchar](500) NULL,
	[CreateDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockOut]    Script Date: 2020/6/8 星期一 16:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockOut](
	[StockOutId] [int] IDENTITY(1,1) NOT NULL,
	[SaleOrderId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserNickName] [varchar](50) NOT NULL,
	[SaleOrderProductId] [uniqueidentifier] NOT NULL,
	[SaleOrderNumber] [varchar](50) NOT NULL,
	[ProductId] [uniqueidentifier] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Qty] [int] NOT NULL,
	[Remark] [varchar](200) NULL,
	[CreateDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 2020/6/8 星期一 16:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [uniqueidentifier] NOT NULL,
	[UserRoleId] [uniqueidentifier] NOT NULL,
	[UserEmail] [varchar](50) NOT NULL,
	[UserPwd] [varchar](50) NOT NULL,
	[UserNickName] [varchar](50) NOT NULL,
	[UserChnName] [varchar](50) NOT NULL,
	[IsAdmin] [bit] NOT NULL,
	[Remark] [varchar](1000) NULL,
	[Status] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserMenu]    Script Date: 2020/6/8 星期一 16:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserMenu](
	[UserMenuId] [int] IDENTITY(1,1) NOT NULL,
	[UserMenuParentId] [int] NOT NULL,
	[UserMenuText] [nvarchar](50) NOT NULL,
	[UserMenuName] [nvarchar](50) NOT NULL,
	[UserMenuHref] [varchar](200) NULL,
	[UserMenuRemark] [nvarchar](200) NULL,
	[UserMenuSort] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_UserMenu] PRIMARY KEY CLUSTERED 
(
	[UserMenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 2020/6/8 星期一 16:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserRole](
	[UserRoleId] [uniqueidentifier] NOT NULL,
	[UserRoleName] [varchar](50) NOT NULL,
	[UserRoleSort] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRoleMenu]    Script Date: 2020/6/8 星期一 16:46:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoleMenu](
	[UserRoleMenuId] [uniqueidentifier] NOT NULL,
	[UserRoleId] [uniqueidentifier] NOT NULL,
	[UserMenuId] [int] NOT NULL
) ON [PRIMARY]

GO
INSERT [dbo].[SaleConfig] ([SaleConfigId], [UserId], [PiCompanyName], [PiCompanyAddress], [PiMyContact]) VALUES (N'e406080f-1711-4746-bb09-6449123bb70c', N'e30c1910-0c17-4289-a77a-88b708fed6ae', NULL, NULL, NULL)
INSERT [dbo].[User] ([UserId], [UserRoleId], [UserEmail], [UserPwd], [UserNickName], [UserChnName], [IsAdmin], [Remark], [Status], [CreateDate]) VALUES (N'e30c1910-0c17-4289-a77a-88b708fed6ae', N'e85c0000-d278-488a-588c-08d789127d73', N'978478090@qq.com', N'e10adc3949ba59abbe56e057f20f883e', N'colin', N'colin', 1, NULL, 1, CAST(0x0000ABD400000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[UserMenu] ON 

INSERT [dbo].[UserMenu] ([UserMenuId], [UserMenuParentId], [UserMenuText], [UserMenuName], [UserMenuHref], [UserMenuRemark], [UserMenuSort], [CreateDate]) VALUES (1, 0, N'我的工作台', N'h', N'-', N'', 1, CAST(0x0000AAF0012C394C AS DateTime))
INSERT [dbo].[UserMenu] ([UserMenuId], [UserMenuParentId], [UserMenuText], [UserMenuName], [UserMenuHref], [UserMenuRemark], [UserMenuSort], [CreateDate]) VALUES (2, 3, N'分类管理', N'adm1', N'commons/category.html', N'', 10, CAST(0x0000AAF0012C6D83 AS DateTime))
INSERT [dbo].[UserMenu] ([UserMenuId], [UserMenuParentId], [UserMenuText], [UserMenuName], [UserMenuHref], [UserMenuRemark], [UserMenuSort], [CreateDate]) VALUES (3, 1, N'系统菜单', N'adm', N'-', N'', 100, CAST(0x0000AAF0012C9AC0 AS DateTime))
INSERT [dbo].[UserMenu] ([UserMenuId], [UserMenuParentId], [UserMenuText], [UserMenuName], [UserMenuHref], [UserMenuRemark], [UserMenuSort], [CreateDate]) VALUES (4, 1, N'通用菜单', N'st', N'-', N'', 0, CAST(0x0000AAF0017583D0 AS DateTime))
INSERT [dbo].[UserMenu] ([UserMenuId], [UserMenuParentId], [UserMenuText], [UserMenuName], [UserMenuHref], [UserMenuRemark], [UserMenuSort], [CreateDate]) VALUES (5, 4, N'产品管理', N'sq', N'products/index.html', N'', 5, CAST(0x0000AAF00175DE16 AS DateTime))
INSERT [dbo].[UserMenu] ([UserMenuId], [UserMenuParentId], [UserMenuText], [UserMenuName], [UserMenuHref], [UserMenuRemark], [UserMenuSort], [CreateDate]) VALUES (6, 4, N'出库查询', N'so', N'commons/stockOut.html', N'', 20, CAST(0x0000AAF00176124C AS DateTime))
INSERT [dbo].[UserMenu] ([UserMenuId], [UserMenuParentId], [UserMenuText], [UserMenuName], [UserMenuHref], [UserMenuRemark], [UserMenuSort], [CreateDate]) VALUES (7, 4, N'入库查询', N'si', N'commons/stockIn.html', N'', 30, CAST(0x0000AAF001763A4E AS DateTime))
INSERT [dbo].[UserMenu] ([UserMenuId], [UserMenuParentId], [UserMenuText], [UserMenuName], [UserMenuHref], [UserMenuRemark], [UserMenuSort], [CreateDate]) VALUES (8, 1, N'销售部门', N'ms', N'-', N'销售员菜单', 1, CAST(0x0000AAF001768AED AS DateTime))
INSERT [dbo].[UserMenu] ([UserMenuId], [UserMenuParentId], [UserMenuText], [UserMenuName], [UserMenuHref], [UserMenuRemark], [UserMenuSort], [CreateDate]) VALUES (9, 1, N'采购部门', N'mb', N'-', N'采购员菜单', 3, CAST(0x0000AAF0017C5605 AS DateTime))
INSERT [dbo].[UserMenu] ([UserMenuId], [UserMenuParentId], [UserMenuText], [UserMenuName], [UserMenuHref], [UserMenuRemark], [UserMenuSort], [CreateDate]) VALUES (10, 1, N'财务部门', N'fw', N'-', N'财务出纳菜单', 8, CAST(0x0000AAFC0092615B AS DateTime))
INSERT [dbo].[UserMenu] ([UserMenuId], [UserMenuParentId], [UserMenuText], [UserMenuName], [UserMenuHref], [UserMenuRemark], [UserMenuSort], [CreateDate]) VALUES (11, 10, N'采购单付款', N'fw1', N'buysFinances/index.html', N'财务出纳菜单', 10, CAST(0x0000AAFC0092B4AE AS DateTime))
INSERT [dbo].[UserMenu] ([UserMenuId], [UserMenuParentId], [UserMenuText], [UserMenuName], [UserMenuHref], [UserMenuRemark], [UserMenuSort], [CreateDate]) VALUES (12, 10, N'销售单收款', N'fs1', N'salesFinance/index.html', N'财务员菜单', 10, CAST(0x0000AAFC0093D1CA AS DateTime))
INSERT [dbo].[UserMenu] ([UserMenuId], [UserMenuParentId], [UserMenuText], [UserMenuName], [UserMenuHref], [UserMenuRemark], [UserMenuSort], [CreateDate]) VALUES (13, 1, N'仓库部门', N'sp', N'-', N'仓库员入库菜单', 48, CAST(0x0000AAFC0095F017 AS DateTime))
INSERT [dbo].[UserMenu] ([UserMenuId], [UserMenuParentId], [UserMenuText], [UserMenuName], [UserMenuHref], [UserMenuRemark], [UserMenuSort], [CreateDate]) VALUES (14, 13, N'采购单入库', N'sp1', N'buysWarehouses/index.html', N'仓库员入库菜单', 10, CAST(0x0000AAFC0096C6C6 AS DateTime))
INSERT [dbo].[UserMenu] ([UserMenuId], [UserMenuParentId], [UserMenuText], [UserMenuName], [UserMenuHref], [UserMenuRemark], [UserMenuSort], [CreateDate]) VALUES (15, 13, N'销售单发货', N'sp2', N'salesWarehouses/index.html', N'', 20, CAST(0x0000AAFC0096F734 AS DateTime))
INSERT [dbo].[UserMenu] ([UserMenuId], [UserMenuParentId], [UserMenuText], [UserMenuName], [UserMenuHref], [UserMenuRemark], [UserMenuSort], [CreateDate]) VALUES (16, 3, N'账户币种', N'acc', N'sysAccountCurrency/index.html', N'', 30, CAST(0x0000AAFD010DFC77 AS DateTime))
INSERT [dbo].[UserMenu] ([UserMenuId], [UserMenuParentId], [UserMenuText], [UserMenuName], [UserMenuHref], [UserMenuRemark], [UserMenuSort], [CreateDate]) VALUES (17, 3, N'用户角色', N'user', N'sysUserRoles/index.html', N'', 40, CAST(0x0000AAFE00BD7322 AS DateTime))
INSERT [dbo].[UserMenu] ([UserMenuId], [UserMenuParentId], [UserMenuText], [UserMenuName], [UserMenuHref], [UserMenuRemark], [UserMenuSort], [CreateDate]) VALUES (19, 4, N'库存查询', N'stq', N'commons/query.html', N'', 10, CAST(0x0000AB0C01828384 AS DateTime))
INSERT [dbo].[UserMenu] ([UserMenuId], [UserMenuParentId], [UserMenuText], [UserMenuName], [UserMenuHref], [UserMenuRemark], [UserMenuSort], [CreateDate]) VALUES (20, 9, N'采购单审核', N'bc1', N'buysManages/index.html', N'', 10, CAST(0x0000AB0F00B47BBE AS DateTime))
INSERT [dbo].[UserMenu] ([UserMenuId], [UserMenuParentId], [UserMenuText], [UserMenuName], [UserMenuHref], [UserMenuRemark], [UserMenuSort], [CreateDate]) VALUES (21, 8, N'我的销售单', N'ms0', N'sales/index.html', N'', 5, CAST(0x0000AB1700B37758 AS DateTime))
INSERT [dbo].[UserMenu] ([UserMenuId], [UserMenuParentId], [UserMenuText], [UserMenuName], [UserMenuHref], [UserMenuRemark], [UserMenuSort], [CreateDate]) VALUES (22, 9, N'我的采购单', N'mb0', N'buys/index.html', N'', 5, CAST(0x0000AB1700DB5876 AS DateTime))
INSERT [dbo].[UserMenu] ([UserMenuId], [UserMenuParentId], [UserMenuText], [UserMenuName], [UserMenuHref], [UserMenuRemark], [UserMenuSort], [CreateDate]) VALUES (23, 24, N'销售统计', N'sti', N'salesStatistics/index.html', N'', 10, CAST(0x0000AB18015BC7F9 AS DateTime))
INSERT [dbo].[UserMenu] ([UserMenuId], [UserMenuParentId], [UserMenuText], [UserMenuName], [UserMenuHref], [UserMenuRemark], [UserMenuSort], [CreateDate]) VALUES (24, 1, N'统计分析', N'tj', N'-', N'', 60, CAST(0x0000AB18015BFFBC AS DateTime))
INSERT [dbo].[UserMenu] ([UserMenuId], [UserMenuParentId], [UserMenuText], [UserMenuName], [UserMenuHref], [UserMenuRemark], [UserMenuSort], [CreateDate]) VALUES (25, 24, N'采购统计', N'sti2', N'buysStatistics/index.html', N'', 20, CAST(0x0000AB1A00B15132 AS DateTime))
SET IDENTITY_INSERT [dbo].[UserMenu] OFF
INSERT [dbo].[UserRole] ([UserRoleId], [UserRoleName], [UserRoleSort], [CreateDate]) VALUES (N'e85c0000-d278-488a-588c-08d789127d73', N'管理员', 1, CAST(0x0000ABD400000000 AS DateTime))
INSERT [dbo].[UserRoleMenu] ([UserRoleMenuId], [UserRoleId], [UserMenuId]) VALUES (N'e85c0000-d278-488a-81a6-08d789127d73', N'e85c0000-d278-488a-588c-08d789127d73', 2)
INSERT [dbo].[UserRoleMenu] ([UserRoleMenuId], [UserRoleId], [UserMenuId]) VALUES (N'e85c0000-d278-488a-88f5-08d789127d73', N'e85c0000-d278-488a-588c-08d789127d73', 5)
INSERT [dbo].[UserRoleMenu] ([UserRoleMenuId], [UserRoleId], [UserMenuId]) VALUES (N'e85c0000-d278-488a-88fc-08d789127d73', N'e85c0000-d278-488a-588c-08d789127d73', 6)
INSERT [dbo].[UserRoleMenu] ([UserRoleMenuId], [UserRoleId], [UserMenuId]) VALUES (N'e85c0000-d278-488a-88ff-08d789127d73', N'e85c0000-d278-488a-588c-08d789127d73', 7)
INSERT [dbo].[UserRoleMenu] ([UserRoleMenuId], [UserRoleId], [UserMenuId]) VALUES (N'e85c0000-d278-488a-8902-08d789127d73', N'e85c0000-d278-488a-588c-08d789127d73', 11)
INSERT [dbo].[UserRoleMenu] ([UserRoleMenuId], [UserRoleId], [UserMenuId]) VALUES (N'e85c0000-d278-488a-8909-08d789127d73', N'e85c0000-d278-488a-588c-08d789127d73', 12)
INSERT [dbo].[UserRoleMenu] ([UserRoleMenuId], [UserRoleId], [UserMenuId]) VALUES (N'e85c0000-d278-488a-890d-08d789127d73', N'e85c0000-d278-488a-588c-08d789127d73', 14)
INSERT [dbo].[UserRoleMenu] ([UserRoleMenuId], [UserRoleId], [UserMenuId]) VALUES (N'e85c0000-d278-488a-8910-08d789127d73', N'e85c0000-d278-488a-588c-08d789127d73', 15)
INSERT [dbo].[UserRoleMenu] ([UserRoleMenuId], [UserRoleId], [UserMenuId]) VALUES (N'e85c0001-d278-488a-8910-08d789127d73', N'e85c0000-d278-488a-588c-08d789127d73', 20)
INSERT [dbo].[UserRoleMenu] ([UserRoleMenuId], [UserRoleId], [UserMenuId]) VALUES (N'e85c0000-d278-488a-8913-08d789127d73', N'e85c0000-d278-488a-588c-08d789127d73', 21)
INSERT [dbo].[UserRoleMenu] ([UserRoleMenuId], [UserRoleId], [UserMenuId]) VALUES (N'e85c0000-d278-488a-8917-08d789127d73', N'e85c0000-d278-488a-588c-08d789127d73', 22)
INSERT [dbo].[UserRoleMenu] ([UserRoleMenuId], [UserRoleId], [UserMenuId]) VALUES (N'e85c0000-d278-488a-891a-08d789127d73', N'e85c0000-d278-488a-588c-08d789127d73', 23)
INSERT [dbo].[UserRoleMenu] ([UserRoleMenuId], [UserRoleId], [UserMenuId]) VALUES (N'e85c0001-d278-488a-891a-08d789127d73', N'e85c0000-d278-488a-588c-08d789127d73', 25)
INSERT [dbo].[UserRoleMenu] ([UserRoleMenuId], [UserRoleId], [UserMenuId]) VALUES (N'e85c0001-d278-488a-891b-08d789127d73', N'e85c0000-d278-488a-588c-08d789127d73', 16)
INSERT [dbo].[UserRoleMenu] ([UserRoleMenuId], [UserRoleId], [UserMenuId]) VALUES (N'e85c0001-d278-488a-891c-08d789127d73', N'e85c0000-d278-488a-588c-08d789127d73', 17)
INSERT [dbo].[UserRoleMenu] ([UserRoleMenuId], [UserRoleId], [UserMenuId]) VALUES (N'e85c0001-d278-488a-891d-08d789127d73', N'e85c0000-d278-488a-588c-08d789127d73', 3)
INSERT [dbo].[UserRoleMenu] ([UserRoleMenuId], [UserRoleId], [UserMenuId]) VALUES (N'e85c0001-d278-488a-891e-08d789127d73', N'e85c0000-d278-488a-588c-08d789127d73', 19)
/****** Object:  Index [PK_Account]    Script Date: 2020/6/8 星期一 16:46:17 ******/
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [PK_Account] PRIMARY KEY NONCLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_BuyOrder]    Script Date: 2020/6/8 星期一 16:46:17 ******/
ALTER TABLE [dbo].[BuyOrder] ADD  CONSTRAINT [PK_BuyOrder] PRIMARY KEY NONCLUSTERED 
(
	[BuyOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_BuyOrder_1]    Script Date: 2020/6/8 星期一 16:46:17 ******/
ALTER TABLE [dbo].[BuyOrder] ADD  CONSTRAINT [IX_BuyOrder_1] UNIQUE NONCLUSTERED 
(
	[BuyOrderNumber] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_BuyOrderProduct]    Script Date: 2020/6/8 星期一 16:46:17 ******/
ALTER TABLE [dbo].[BuyOrderProduct] ADD  CONSTRAINT [PK_BuyOrderProduct] PRIMARY KEY NONCLUSTERED 
(
	[BuyOrderProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_BuyPay]    Script Date: 2020/6/8 星期一 16:46:17 ******/
ALTER TABLE [dbo].[BuyPay] ADD  CONSTRAINT [PK_BuyPay] PRIMARY KEY NONCLUSTERED 
(
	[BuyPayId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_BuySupplier]    Script Date: 2020/6/8 星期一 16:46:17 ******/
ALTER TABLE [dbo].[BuySupplier] ADD  CONSTRAINT [PK_BuySupplier] PRIMARY KEY NONCLUSTERED 
(
	[BuySupplierId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_ProductCategory]    Script Date: 2020/6/8 星期一 16:46:17 ******/
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [PK_ProductCategory] PRIMARY KEY NONCLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_Currency]    Script Date: 2020/6/8 星期一 16:46:17 ******/
ALTER TABLE [dbo].[Currency] ADD  CONSTRAINT [PK_Currency] PRIMARY KEY NONCLUSTERED 
(
	[CurrencyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_Product]    Script Date: 2020/6/8 星期一 16:46:17 ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [PK_Product] PRIMARY KEY NONCLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_ProductImage]    Script Date: 2020/6/8 星期一 16:46:17 ******/
ALTER TABLE [dbo].[ProductImage] ADD  CONSTRAINT [PK_ProductImage] PRIMARY KEY NONCLUSTERED 
(
	[ProductImageId] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_SaleConfig]    Script Date: 2020/6/8 星期一 16:46:17 ******/
ALTER TABLE [dbo].[SaleConfig] ADD  CONSTRAINT [PK_SaleConfig] PRIMARY KEY NONCLUSTERED 
(
	[SaleConfigId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_SaleOrder]    Script Date: 2020/6/8 星期一 16:46:17 ******/
ALTER TABLE [dbo].[SaleOrder] ADD  CONSTRAINT [PK_SaleOrder] PRIMARY KEY NONCLUSTERED 
(
	[SaleOrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_SaleOrder_1]    Script Date: 2020/6/8 星期一 16:46:17 ******/
ALTER TABLE [dbo].[SaleOrder] ADD  CONSTRAINT [IX_SaleOrder_1] UNIQUE NONCLUSTERED 
(
	[SaleOrderNumber] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_SaleOrderProduct]    Script Date: 2020/6/8 星期一 16:46:17 ******/
ALTER TABLE [dbo].[SaleOrderProduct] ADD  CONSTRAINT [PK_SaleOrderProduct] PRIMARY KEY NONCLUSTERED 
(
	[SaleOrderProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_SaleReceive]    Script Date: 2020/6/8 星期一 16:46:17 ******/
ALTER TABLE [dbo].[SaleReceive] ADD  CONSTRAINT [PK_SaleReceive] PRIMARY KEY NONCLUSTERED 
(
	[SaleReceiveId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_SaleTrack]    Script Date: 2020/6/8 星期一 16:46:17 ******/
ALTER TABLE [dbo].[SaleTrack] ADD  CONSTRAINT [PK_SaleTrack] PRIMARY KEY NONCLUSTERED 
(
	[SaleTrackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_StockIn]    Script Date: 2020/6/8 星期一 16:46:17 ******/
ALTER TABLE [dbo].[StockIn] ADD  CONSTRAINT [PK_StockIn] PRIMARY KEY NONCLUSTERED 
(
	[StockInId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_StockOut]    Script Date: 2020/6/8 星期一 16:46:17 ******/
ALTER TABLE [dbo].[StockOut] ADD  CONSTRAINT [PK_StockOut] PRIMARY KEY NONCLUSTERED 
(
	[StockOutId] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK__User__1788CC4C300424B4]    Script Date: 2020/6/8 星期一 16:46:17 ******/
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [PK__User__1788CC4C300424B4] PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserMenu]    Script Date: 2020/6/8 星期一 16:46:17 ******/
ALTER TABLE [dbo].[UserMenu] ADD  CONSTRAINT [IX_UserMenu] UNIQUE NONCLUSTERED 
(
	[UserMenuName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_UserRole]    Script Date: 2020/6/8 星期一 16:46:17 ******/
ALTER TABLE [dbo].[UserRole] ADD  CONSTRAINT [PK_UserRole] PRIMARY KEY NONCLUSTERED 
(
	[UserRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [PK_UserRoleMenu]    Script Date: 2020/6/8 星期一 16:46:17 ******/
ALTER TABLE [dbo].[UserRoleMenu] ADD  CONSTRAINT [PK_UserRoleMenu] PRIMARY KEY NONCLUSTERED 
(
	[UserRoleMenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Account_Sort]  DEFAULT ((0)) FOR [Sort]
GO
ALTER TABLE [dbo].[BuyOrderProduct] ADD  CONSTRAINT [DF_BuyOrderProduct_InQty]  DEFAULT ((0)) FOR [InQty]
GO
ALTER TABLE [dbo].[BuyOrderProduct] ADD  CONSTRAINT [DF_BuyOrderProduct_IsNewAdd]  DEFAULT ((0)) FOR [IsNewAdd]
GO
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_ProductCategory_CategoryParentId]  DEFAULT ((0)) FOR [CategoryParentId]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Weight]  DEFAULT ((0)) FOR [ProductWeight]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_InTransitQty]  DEFAULT ((0)) FOR [InTransitQty]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_OrderQty]  DEFAULT ((1)) FOR [OrderQty]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_ImageQty]  DEFAULT ((0)) FOR [ImageQty]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Area]  DEFAULT ('') FOR [AreaPosition]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_UpdateDate]  DEFAULT (getdate()) FOR [StockInDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_PurcharseAvgPrice]  DEFAULT ((0)) FOR [PurcharseAvgPrice]
GO
ALTER TABLE [dbo].[SaleOrder] ADD  CONSTRAINT [DF_SaleOrder_DefaultSettlement]  DEFAULT ((1)) FOR [DefaultSettlement]
GO
ALTER TABLE [dbo].[SaleOrder] ADD  CONSTRAINT [DF_SaleOrder_UserNickName]  DEFAULT ('-') FOR [UserNickName]
GO
ALTER TABLE [dbo].[SaleOrderProduct] ADD  CONSTRAINT [DF_SaleOrderProduct_IsStockOut]  DEFAULT ((0)) FOR [IsStockOut]
GO
ALTER TABLE [dbo].[SaleReceive] ADD  CONSTRAINT [DF_SaleReceive_TranFee]  DEFAULT ((0)) FOR [TranFee]
GO
ALTER TABLE [dbo].[SaleReceive] ADD  CONSTRAINT [DF_SaleReceive_TransactionNumber]  DEFAULT ('') FOR [TransactionNumber]
GO
ALTER TABLE [dbo].[StockOut] ADD  CONSTRAINT [DF_StockOut_UserNickName]  DEFAULT ('') FOR [UserNickName]
GO
ALTER TABLE [dbo].[StockOut] ADD  CONSTRAINT [DF_StockOut_SaleOrderNumber]  DEFAULT ('') FOR [SaleOrderNumber]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF__User__UserId__108B795B]  DEFAULT (newid()) FOR [UserId]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_UserRoleId]  DEFAULT (newid()) FOR [UserRoleId]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_UserNickName]  DEFAULT ('') FOR [UserNickName]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_IsAdmin]  DEFAULT ((0)) FOR [IsAdmin]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Status]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF__User__CreateDate__117F9D94]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[UserMenu] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户类型：3收付款账户；1收款账户；2付款账户；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'AccountType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'AccountName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户银行' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'AccountBank'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户卡号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'AccountNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开户地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'AccountAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'AccountRemark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Guid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Attachment', @level2type=N'COLUMN',@level2name=N'AttachmentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件名：201709' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Attachment', @level2type=N'COLUMN',@level2name=N'Folder'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Attachment', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'源文件大小' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Attachment', @level2type=N'COLUMN',@level2name=N'SizeOriginal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'小缩略图大小' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Attachment', @level2type=N'COLUMN',@level2name=N'SizeSmall'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'大缩略图大小' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Attachment', @level2type=N'COLUMN',@level2name=N'SizeBig'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'文件扩展名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Attachment', @level2type=N'COLUMN',@level2name=N'FileExt'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'下载量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Attachment', @level2type=N'COLUMN',@level2name=N'Downloads'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态：0上传文件（超24小时就删除）；1可用的文件；2标志为不可用文件（保留系统文件，不会删除）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Attachment', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0未知（游客）；1用户；2管理员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Attachment', @level2type=N'COLUMN',@level2name=N'CreateObjectTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人: UserId; AdminId' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Attachment', @level2type=N'COLUMN',@level2name=N'CreateObjectId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Attachment', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'BuyOrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'BuyOrderNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预计到货日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'ArrivalsDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'运费。（订单币种）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'ShipFeight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其他费用。（订单币种）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'ShipFee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'折扣费用。（订单币种）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'Discount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'币种' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'CurrencyId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'币种，如：人民币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'CurrencyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'英文：RMB/USD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'CurrencyText'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'币种符号：$' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'CurrencySymbol'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'汇率，美元6.10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'CurrencyRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结款方式：1付款后发货；2自提并付款；3收货后付款；4周付；5半月付；6月付；7季付；8半年付；9年付；10其他' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'DefaultSettlement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货方式。业务员告诉仓库发货方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'DefaultShip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商账号。业务员告诉出纳收款账号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'DefaultAccount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单备注。告诉仓库注意收货事项' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'DefaultRemark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态：1草稿采购单；2提交审核；3审核驳回；4审核通过；5采购中不用付款；6采购中等待付款；7采购中已付款；8已入库未付款；9已入库已付款；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'BuySupplierId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商公司' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'SupplierCompany'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'SupplierName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商固话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'SupplierTel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'SupplierMobilePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'SupplierEmail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商QQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'SupplierQQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商微信' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'SupplierWechat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'SupplierAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'UserNickName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'添加审核日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'PostCheckDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'CheckRemark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核人员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'CheckUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'审核时间（通过或不通过时间）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'CheckDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'提交采购' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'PostPurcharseDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'付款时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'PayFinishDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'付款操作' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'PayFinishUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'验货人员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'StockInQcUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'StockInRemark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'StockInUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrder', @level2type=N'COLUMN',@level2name=N'StockInDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrderProduct', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrderProduct', @level2type=N'COLUMN',@level2name=N'BuyOrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrderProduct', @level2type=N'COLUMN',@level2name=N'ProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'价格。（币种为采购单币种）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrderProduct', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrderProduct', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrderProduct', @level2type=N'COLUMN',@level2name=N'InQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购备注。采购员备注信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrderProduct', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrderProduct', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已入库' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrderProduct', @level2type=N'COLUMN',@level2name=N'IsStockIn'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'仓库入库添加的产品' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrderProduct', @level2type=N'COLUMN',@level2name=N'IsNewAdd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库备注。创建验货备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyOrderProduct', @level2type=N'COLUMN',@level2name=N'InStockRemark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyPay', @level2type=N'COLUMN',@level2name=N'BuyOrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyPay', @level2type=N'COLUMN',@level2name=N'AccountId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'银行+账号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyPay', @level2type=N'COLUMN',@level2name=N'AccountInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'付款金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyPay', @level2type=N'COLUMN',@level2name=N'Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'币种符号：$' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyPay', @level2type=N'COLUMN',@level2name=N'CurrencySymbol'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'汇率，美元6.10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyPay', @level2type=N'COLUMN',@level2name=N'CurrencyRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyPay', @level2type=N'COLUMN',@level2name=N'CreateName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuyPay', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuySupplier', @level2type=N'COLUMN',@level2name=N'BuySupplierId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuySupplier', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuySupplier', @level2type=N'COLUMN',@level2name=N'SupplierCompany'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商联系人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuySupplier', @level2type=N'COLUMN',@level2name=N'SupplierName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商固话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuySupplier', @level2type=N'COLUMN',@level2name=N'SupplierTel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuySupplier', @level2type=N'COLUMN',@level2name=N'SupplierMobilePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuySupplier', @level2type=N'COLUMN',@level2name=N'SupplierEmail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商QQ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuySupplier', @level2type=N'COLUMN',@level2name=N'SupplierQQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商微信' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuySupplier', @level2type=N'COLUMN',@level2name=N'SupplierWechat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuySupplier', @level2type=N'COLUMN',@level2name=N'SupplierAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'供应商备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuySupplier', @level2type=N'COLUMN',@level2name=N'SupplierRemark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BuySupplier', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属分类Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'CategoryParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分类名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'CategoryName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Category', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'币种。如：人民币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Currency', @level2type=N'COLUMN',@level2name=N'CurrencyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'英文。RMB/USD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Currency', @level2type=N'COLUMN',@level2name=N'CurrencyText'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'币种符号。$' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Currency', @level2type=N'COLUMN',@level2name=N'CurrencySymbol'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'汇率。美元6.10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Currency', @level2type=N'COLUMN',@level2name=N'CurrencyRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Currency', @level2type=N'COLUMN',@level2name=N'Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Currency', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属分类' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'CategoryId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品编码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'ProductSku'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'ProductName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品规格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'ProductSpecification'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'ProductRemark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'重量(克)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'ProductWeight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'在途数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'InTransitQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'可售数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'SaleQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'挂起数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'HoldQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'起订数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'OrderQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'售价1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'Price1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'售价10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'Price10'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'售价100' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'Price100'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图片数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'ImageQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'存仓位置' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'AreaPosition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态：1正常；2删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'CreateName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最近入库' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'StockInDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购均价' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Product', @level2type=N'COLUMN',@level2name=N'PurcharseAvgPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商品Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductImage', @level2type=N'COLUMN',@level2name=N'ProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductImage', @level2type=N'COLUMN',@level2name=N'PathImage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'logo图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductImage', @level2type=N'COLUMN',@level2name=N'PathLogoImage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductImage', @level2type=N'COLUMN',@level2name=N'Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProductImage', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleConfig', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleConfig', @level2type=N'COLUMN',@level2name=N'PiCompanyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleConfig', @level2type=N'COLUMN',@level2name=N'PiCompanyAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'联系方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleConfig', @level2type=N'COLUMN',@level2name=N'PiMyContact'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'SaleOrderNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'币种Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'CurrencyId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'币种。如：人民币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'CurrencyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'英文：RMB/USD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'CurrencyText'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'币种符号：$' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'CurrencySymbol'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'汇率。美元6.10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'CurrencyRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'运费。（订单币种）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'ShipFeight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'其他费用。（订单币种）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'ShipFee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'折扣费用。（订单币种）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'Discount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货日期。告诉仓库和客户发货日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'ShipDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结款方式：1先收款后发货；2提货结款；3送货结；4邮到结；5周结；6半月结；7月结；8季结；9半年结；10年结；11其他' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'DefaultSettlement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货方式。业务员告诉仓库发货方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'DefaultShip'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收款账号。业务员告诉出纳收款账号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'DefaultAccount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单备注。告诉仓库备货信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'DefaultRemark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'ToConsignee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货公司' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'ToCompanyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'ToTelphone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货邮编' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'ToZipcode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收货地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'ToAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'ToRemark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'UserNickName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态：1草稿订单；2提交备货未收款；3提交备货后收款；4提交备货已收款；5已备货未收款；6已备货后收款；7已备货已收款；8已发货后收款；9已发货已收款；' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'提交时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'PostDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始备货' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'StockStart'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开始备货人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'StockStartName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完成备货' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'StockEnd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'完成备货人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'StockEndName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'财务提交日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'FinancePostDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'提交操作人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'FinancePostName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收款备注。如果是后收款是添加备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'FinanceRemark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发货日期。仓库发货日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'StockShipDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备货备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'StockRemark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出库时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'StockOutDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'出库操作人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrder', @level2type=N'COLUMN',@level2name=N'StockOutName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户Id。销售员Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrderProduct', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售单Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrderProduct', @level2type=N'COLUMN',@level2name=N'SaleOrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'价格。（币种为销售单币种）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrderProduct', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrderProduct', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrderProduct', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrderProduct', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已出库' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleOrderProduct', @level2type=N'COLUMN',@level2name=N'IsStockOut'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售单Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleReceive', @level2type=N'COLUMN',@level2name=N'SaleOrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账户Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleReceive', @level2type=N'COLUMN',@level2name=N'AccountId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'银行+账号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleReceive', @level2type=N'COLUMN',@level2name=N'AccountInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收款金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleReceive', @level2type=N'COLUMN',@level2name=N'Amount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易费用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleReceive', @level2type=N'COLUMN',@level2name=N'TranFee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'币种Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleReceive', @level2type=N'COLUMN',@level2name=N'CurrencyId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'币种符号。$' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleReceive', @level2type=N'COLUMN',@level2name=N'CurrencySymbol'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'汇率。美元6.10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleReceive', @level2type=N'COLUMN',@level2name=N'CurrencyRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleReceive', @level2type=N'COLUMN',@level2name=N'TransactionNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleReceive', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'财务员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleReceive', @level2type=N'COLUMN',@level2name=N'CreateName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleReceive', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售单Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleTrack', @level2type=N'COLUMN',@level2name=N'SaleOrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleTrack', @level2type=N'COLUMN',@level2name=N'TrackName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleTrack', @level2type=N'COLUMN',@level2name=N'TrackNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'运费。（币种为录入币种）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleTrack', @level2type=N'COLUMN',@level2name=N'Feight'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'快递备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleTrack', @level2type=N'COLUMN',@level2name=N'TrackRemark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'币种Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleTrack', @level2type=N'COLUMN',@level2name=N'CurrencyId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'币种。如：人民币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleTrack', @level2type=N'COLUMN',@level2name=N'CurrencyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'英文。RMB/USD' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleTrack', @level2type=N'COLUMN',@level2name=N'CurrencyText'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'币种符号。$' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleTrack', @level2type=N'COLUMN',@level2name=N'CurrencySymbol'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'汇率。美元6.10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleTrack', @level2type=N'COLUMN',@level2name=N'CurrencyRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleTrack', @level2type=N'COLUMN',@level2name=N'CreateName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SaleTrack', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'站名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Site', @level2type=N'COLUMN',@level2name=N'SiteName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Site', @level2type=N'COLUMN',@level2name=N'SiteUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站公告' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Site', @level2type=N'COLUMN',@level2name=N'SiteNotifyText'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站logo：保存logo路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Site', @level2type=N'COLUMN',@level2name=N'LogoImage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'公司名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Site', @level2type=N'COLUMN',@level2name=N'Company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'固定电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Site', @level2type=N'COLUMN',@level2name=N'Telphone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Site', @level2type=N'COLUMN',@level2name=N'MobilePhone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Site', @level2type=N'COLUMN',@level2name=N'Wechat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信二维码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Site', @level2type=N'COLUMN',@level2name=N'WechatImage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Site', @level2type=N'COLUMN',@level2name=N'QQ'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQ二维码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Site', @level2type=N'COLUMN',@level2name=N'QQImage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Site', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'传真' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Site', @level2type=N'COLUMN',@level2name=N'Fax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Site', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'首页标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Site', @level2type=N'COLUMN',@level2name=N'HomeTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'首页关键词' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Site', @level2type=N'COLUMN',@level2name=N'HomeKeywords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'首页描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Site', @level2type=N'COLUMN',@level2name=N'HomeDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Site', @level2type=N'COLUMN',@level2name=N'HomeContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Site', @level2type=N'COLUMN',@level2name=N'HomeFiles'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'首页焦点图' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Site', @level2type=N'COLUMN',@level2name=N'HomeFocusImages'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购单Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'BuyOrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户Id。采购员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'UserNickName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购单产品Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'BuyOrderProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'BuyOrderNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'ProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购价格。已转为人民币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'InQty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'采购备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'InStockRemark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'入库时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockIn', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售单Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'SaleOrderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户Id。销售员Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'UserId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'UserNickName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售单产品Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'SaleOrderProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'销售单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'SaleOrderNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'产品Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'ProductId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'价格。已转为人民币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'Price'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'Qty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'StockOut', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'业务角色' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'UserRoleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'UserEmail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'UserPwd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'英文名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'UserNickName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'中文名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'UserChnName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统管理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'IsAdmin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'状态：1有效；2禁用；3删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属节点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserMenu', @level2type=N'COLUMN',@level2name=N'UserMenuParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserMenu', @level2type=N'COLUMN',@level2name=N'UserMenuText'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserMenu', @level2type=N'COLUMN',@level2name=N'UserMenuName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'链接' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserMenu', @level2type=N'COLUMN',@level2name=N'UserMenuHref'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserMenu', @level2type=N'COLUMN',@level2name=N'UserMenuRemark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserMenu', @level2type=N'COLUMN',@level2name=N'UserMenuSort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserMenu', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserRole', @level2type=N'COLUMN',@level2name=N'UserRoleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserRole', @level2type=N'COLUMN',@level2name=N'UserRoleSort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserRole', @level2type=N'COLUMN',@level2name=N'CreateDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserRoleMenu', @level2type=N'COLUMN',@level2name=N'UserRoleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserRoleMenu', @level2type=N'COLUMN',@level2name=N'UserMenuId'
GO
