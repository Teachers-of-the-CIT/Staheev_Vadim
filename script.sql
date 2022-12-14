USE [Магазин парфюмерии]
GO
/****** Object:  Table [dbo].[Destination]    Script Date: 05.11.2022 11:38:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Destination](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PostCode] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Destination] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 05.11.2022 11:38:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderDate] [date] NOT NULL,
	[DeliveryDate] [date] NOT NULL,
	[DestinationId] [int] NOT NULL,
	[FullName] [varchar](50) NULL,
	[GetCode] [varchar](50) NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 05.11.2022 11:38:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Article] [varchar](50) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Measure] [varchar](50) NOT NULL,
	[Cost] [money] NOT NULL,
	[MaxDiscount] [int] NOT NULL,
	[Producer] [varchar](50) NOT NULL,
	[Provider] [varchar](50) NOT NULL,
	[CurrentDiscount] [varchar](50) NOT NULL,
	[Count] [int] NOT NULL,
	[Description] [varchar](100) NOT NULL,
	[Image] [varchar](50) NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Article] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 05.11.2022 11:38:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductOfOrder]    Script Date: 05.11.2022 11:38:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductOfOrder](
	[OrderId] [int] NOT NULL,
	[ProductArticle] [varchar](50) NOT NULL,
	[Count] [int] NOT NULL,
 CONSTRAINT [PK_ProductOfOrder] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC,
	[ProductArticle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 05.11.2022 11:38:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Role] [varchar](50) NOT NULL,
	[FullName] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Destination] ON 

INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (1, N'344288', N' г. Ангарск, ул. Чехова, 1')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (2, N'614164', N' г.Ангарск,  ул. Степная, 30')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (3, N'394242', N' г. Ангарск, ул. Коммунистическая, 43')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (4, N'660540', N' г. Ангарск, ул. Солнечная, 25')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (5, N'125837', N' г. Ангарск, ул. Шоссейная, 40')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (6, N'125703', N' г. Ангарск, ул. Партизанская, 49')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (7, N'625283', N' г. Ангарск, ул. Победы, 46')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (8, N'614611', N' г. Ангарск, ул. Молодежная, 50')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (9, N'454311', N' г.Ангарск, ул. Новая, 19')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (10, N'660007', N' г.Ангарск, ул. Октябрьская, 19')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (11, N'603036', N' г. Ангарск, ул. Садовая, 4')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (12, N'450983', N' г.Ангарск, ул. Комсомольская, 26')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (13, N'394782', N' г. Ангарск, ул. Чехова, 3')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (14, N'603002', N' г. Ангарск, ул. Дзержинского, 28')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (15, N'450558', N' г. Ангарск, ул. Набережная, 30')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (16, N'394060', N' г.Ангарск, ул. Фрунзе, 43')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (17, N'410661', N' г. Ангарск, ул. Школьная, 50')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (18, N'625590', N' г. Ангарск, ул. Коммунистическая, 20')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (19, N'625683', N' г. Ангарск, ул. 8 Марта')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (20, N'400562', N' г. Ангарск, ул. Зеленая, 32')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (21, N'614510', N' г. Ангарск, ул. Маяковского, 47')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (22, N'410542', N' г. Ангарск, ул. Светлая, 46')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (23, N'620839', N' г. Ангарск, ул. Цветочная, 8')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (24, N'443890', N' г. Ангарск, ул. Коммунистическая, 1')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (25, N'603379', N' г. Ангарск, ул. Спортивная, 46')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (26, N'603721', N' г. Ангарск, ул. Гоголя, 41')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (27, N'410172', N' г. Ангарск, ул. Северная, 13')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (28, N'420151', N' г. Ангарск, ул. Вишневая, 32')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (29, N'125061', N' г. Ангарск, ул. Подгорная, 8')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (30, N'630370', N' г. Ангарск, ул. Шоссейная, 24')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (31, N'614753', N' г. Ангарск, ул. Полевая, 35')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (32, N'426030', N' г. Ангарск, ул. Маяковского, 44')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (33, N'450375', N' г. Ангарск ул. Клубная, 44')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (34, N'625560', N' г. Ангарск, ул. Некрасова, 12')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (35, N'630201', N' г. Ангарск, ул. Комсомольская, 17')
INSERT [dbo].[Destination] ([Id], [PostCode], [Address]) VALUES (36, N'190949', N' г. Ангарск, ул. Мичурина, 26')
SET IDENTITY_INSERT [dbo].[Destination] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([Id], [OrderDate], [DeliveryDate], [DestinationId], [FullName], [GetCode], [Status], [UserId]) VALUES (1, CAST(N'2022-05-04' AS Date), CAST(N'2022-05-10' AS Date), 24, N'Новиков Матвей Маркович', N'201', N'Новый ', NULL)
INSERT [dbo].[Order] ([Id], [OrderDate], [DeliveryDate], [DestinationId], [FullName], [GetCode], [Status], [UserId]) VALUES (2, CAST(N'2022-05-05' AS Date), CAST(N'2022-05-11' AS Date), 25, N'', N'202', N'Новый ', NULL)
INSERT [dbo].[Order] ([Id], [OrderDate], [DeliveryDate], [DestinationId], [FullName], [GetCode], [Status], [UserId]) VALUES (3, CAST(N'2022-05-06' AS Date), CAST(N'2022-05-12' AS Date), 26, N'Соловьев Пётр Никитич', N'203', N'Новый ', NULL)
INSERT [dbo].[Order] ([Id], [OrderDate], [DeliveryDate], [DestinationId], [FullName], [GetCode], [Status], [UserId]) VALUES (4, CAST(N'2022-05-07' AS Date), CAST(N'2022-05-13' AS Date), 27, N'', N'204', N'Новый ', NULL)
INSERT [dbo].[Order] ([Id], [OrderDate], [DeliveryDate], [DestinationId], [FullName], [GetCode], [Status], [UserId]) VALUES (5, CAST(N'2022-05-08' AS Date), CAST(N'2022-05-14' AS Date), 28, N'Васильева Софья Глебовна', N'205', N'Новый ', NULL)
INSERT [dbo].[Order] ([Id], [OrderDate], [DeliveryDate], [DestinationId], [FullName], [GetCode], [Status], [UserId]) VALUES (6, CAST(N'2022-05-09' AS Date), CAST(N'2022-05-15' AS Date), 29, N'', N'206', N'Новый ', NULL)
INSERT [dbo].[Order] ([Id], [OrderDate], [DeliveryDate], [DestinationId], [FullName], [GetCode], [Status], [UserId]) VALUES (7, CAST(N'2022-05-10' AS Date), CAST(N'2022-05-16' AS Date), 30, N'', N'207', N'Новый ', NULL)
INSERT [dbo].[Order] ([Id], [OrderDate], [DeliveryDate], [DestinationId], [FullName], [GetCode], [Status], [UserId]) VALUES (8, CAST(N'2022-05-11' AS Date), CAST(N'2022-05-17' AS Date), 31, N'', N'208', N'Новый ', NULL)
INSERT [dbo].[Order] ([Id], [OrderDate], [DeliveryDate], [DestinationId], [FullName], [GetCode], [Status], [UserId]) VALUES (9, CAST(N'2022-05-12' AS Date), CAST(N'2022-05-18' AS Date), 32, N'Львов Роман Павлович', N'209', N'Новый ', NULL)
INSERT [dbo].[Order] ([Id], [OrderDate], [DeliveryDate], [DestinationId], [FullName], [GetCode], [Status], [UserId]) VALUES (10, CAST(N'2022-05-13' AS Date), CAST(N'2022-05-19' AS Date), 33, N'', N'210', N'Завершен', NULL)
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'A436H7', N'Туалетная вода', N'шт.', 1000.0000, 15, N'Dilis Parfum', N'Летуаль', N'4', 12, N'Туалетная вода Dilis Parfum Aqua Cool, 100 мл', N'', 1)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'C323R4', N'Парфюмерная вода', N'шт.', 4100.0000, 25, N'TRUSSARDI', N'Летуаль', N'4', 8, N'Парфюмерная вода TRUSSARDI Donna Trussardi (2011), 50 мл', N'', 1)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'D344Y7', N'Парфюмерная вода', N'шт.', 223.0000, 10, N'Today Parfum', N'Летуаль', N'5', 16, N'Парфюмерная вода Today Parfum Prestige №6 Eclat, 17 мл', N'D344Y7.jpg', 2)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'D378D3', N'Туалетная вода', N'шт.', 1500.0000, 10, N'Dilis Parfum', N'Летуаль', N'3', 16, N'Духи Dilis Parfum Classic Collection №18, 30 мл', N'D378D3.jpg', 2)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'D526R4', N'Парфюмерная вода', N'шт.', 3600.0000, 10, N'DOLCE & GABBANA', N'Летуаль', N'3', 6, N'Парфюмерная вода DOLCE & GABBANA Dolce&Gabbana pour', N'', 2)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'D634D4', N'Туалетная вода', N'шт.', 367.0000, 15, N'Paris Line', N'Рив Гош', N'2', 14, N'Туалетная вода Paris Line Parfums Dollar Diamond, 100 мл', N'', 1)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'E245R5', N'Туалетная вода', N'шт.', 1000.0000, 15, N'Dilis Parfum', N'Рив Гош', N'5', 2, N'Туалетная вода Dilis Parfum Mila, 100 мл', N'E245R5.jpg', 2)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'E479G6', N'Туалетная вода', N'шт.', 6100.0000, 25, N'HUGO BOSS', N'Рив Гош', N'5', 3, N'Туалетная вода HUGO BOSS Boss Bottled, 100 мл', N'', 1)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'E530Y6', N'Парфюмерная вода', N'шт.', 519.0000, 15, N'Parfums Constantine', N'Летуаль', N'3', 9, N'Парфюмерная вода Parfums Constantine Mademoiselle 5, 50 мл', N'E530Y6.jpg', 2)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'E573G6', N'Духи', N'шт.', 1087.0000, 15, N'Dilis Parfum', N'Рив Гош', N'5', 13, N'Духи Dilis Parfum Classic Collection №34, 30 мл', N'', 2)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'F344S4', N'Туалетная вода', N'шт.', 546.0000, 5, N'Today Parfum', N'Рив Гош', N'2', 9, N'Туалетная вода Today Parfum Cola Cherry, 50 мл', N'', 2)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'F346G5', N'Туалетная вода', N'шт.', 450.0000, 5, N'Today Parfum', N'Рив Гош', N'3', 18, N'Туалетная вода Today Parfum G-Club Egoist, 100 мл', N'F346G5.jpg', 2)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'F893T5', N'Туалетная вода', N'шт.', 327.0000, 15, N'Paris Line', N'Рив Гош', N'2', 14, N'Туалетная вода Paris Line Parfums Cosa Nostra Platinum, 100 мл', N'F893T5.jpg', 2)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'G532R5', N'Парфюмерная вода', N'шт.', 640.0000, 10, N'Parfums Constantine', N'Летуаль', N'3', 16, N'Парфюмерная вода Parfums Constantine New York Perfume Six, 50 мл', N'', 1)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'G832G6', N'Туалетная вода', N'шт.', 368.0000, 10, N'Paris Line', N'Рив Гош', N'4', 7, N'Туалетная вода Paris Line Parfums Vodka Extreme, 100 мл', N'G832G6.jpg', 2)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'H647R5', N'Туалетная вода', N'шт.', 555.0000, 10, N'Parfums Constantine', N'Рив Гош', N'4', 6, N'Туалетная вода Parfums Constantine Gentleman №3, 100 мл', N'', 2)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'H732R5', N'Туалетная вода', N'шт.', 500.0000, 15, N'Paris Line', N'Рив Гош', N'5', 7, N'Туалетная вода Paris Line Parfums Cosa Nostra, 100 мл', N'', 2)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'J432E4', N'Туалетная вода', N'шт.', 341.0000, 5, N'Paris Line', N'Рив Гош', N'2', 4, N'Туалетная вода Paris Line Parfums Dollar, 100 мл', N'J432E4.jpg', 2)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'K535G6', N'Парфюмерная вода', N'шт.', 1200.0000, 15, N'Yves de Sistelle', N'Рив Гош', N'2', 5, N'Парфюмерная вода Yves de Sistelle Incidence pour Femme, 65 мл', N'', 2)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'K742T5', N'Туалетная вода', N'шт.', 900.0000, 15, N'Dilis Parfum', N'Летуаль', N'4', 6, N'Туалетная вода Dilis Parfum Cool&Grey, 100 мл', N'', 1)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'L533E4', N'Туалетная вода', N'шт.', 3900.0000, 15, N'HUGO BOSS', N'Рив Гош', N'4', 15, N'Туалетная вода HUGO BOSS Boss Bottled, 50 мл', N'', 1)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'O875F6', N'Парфюмерная вода', N'шт.', 600.0000, 10, N'Dilis Parfum', N'Рив Гош', N'2', 5, N'Dilis Parfum Мужской Walker Breeze', N'', 1)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'R464G6', N'Духи', N'шт.', 290.0000, 5, N'Dilis Parfum', N'Летуаль', N'2', 11, N'Духи Dilis Parfum Ночная Фиалка, 9.5 мл', N'', 2)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'R563E3', N'Туалетная вода', N'шт.', 418.0000, 5, N'Today Parfum', N'Летуаль', N'4', 9, N'Туалетная вода Today Parfum G-Club Millioner, 100 мл', N'', 1)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'S346H6', N'Туалетная вода', N'шт.', 1000.0000, 10, N'Dilis Parfum', N'Летуаль', N'4', 12, N'Туалетная вода Dilis Parfum Steelman Zone, 100 мл', N'', 1)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'S753T5', N'Парфюмерная вода', N'шт.', 5200.0000, 5, N'DOLCE & GABBANA', N'Летуаль', N'4', 3, N'Парфюмерная вода DOLCE & GABBANA Dolce Shine, 75 мл', N'', 2)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'V324R5', N'Парфюмерная вода', N'шт.', 519.0000, 5, N'Parfums Constantine', N'Летуаль', N'3', 5, N'Парфюмерная вода Parfums Constantine Mademoiselle 7, 50 мл', N'V324R5.jpg', 2)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'V472S3', N'Парфюмерная вода', N'шт.', 2640.0000, 30, N'LACOSTE', N'Рив Гош', N'4', 7, N'Парфюмерная вода LACOSTE Lacoste pour Femme, 30 мл', N'', 1)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'V493E3', N'Туалетная вода', N'шт.', 3200.0000, 10, N'DOLCE & GABBANA', N'Летуаль', N'2', 8, N'Туалетная вода DOLCE & GABBANA 3 L''Imperatrice, 50 мл', N'', 2)
INSERT [dbo].[Product] ([Article], [Name], [Measure], [Cost], [MaxDiscount], [Producer], [Provider], [CurrentDiscount], [Count], [Description], [Image], [CategoryId]) VALUES (N'А112Т4', N'Одеколон', N'шт.', 660.0000, 30, N'Dragon', N'Летуаль', N'5', 6, N'Одеколон Dragon Parfums Dragon Noir, 100 мл', N'А112Т4.jpg', 1)
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([Id], [Name]) VALUES (1, N'Мужской парфюм')
INSERT [dbo].[ProductCategory] ([Id], [Name]) VALUES (2, N'Женский парфюм')
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
INSERT [dbo].[ProductOfOrder] ([OrderId], [ProductArticle], [Count]) VALUES (1, N'А112Т4', 2)
INSERT [dbo].[ProductOfOrder] ([OrderId], [ProductArticle], [Count]) VALUES (2, N'E530Y6', 1)
INSERT [dbo].[ProductOfOrder] ([OrderId], [ProductArticle], [Count]) VALUES (3, N'J432E4', 1)
INSERT [dbo].[ProductOfOrder] ([OrderId], [ProductArticle], [Count]) VALUES (4, N'E245R5', 1)
INSERT [dbo].[ProductOfOrder] ([OrderId], [ProductArticle], [Count]) VALUES (5, N'H732R5', 3)
INSERT [dbo].[ProductOfOrder] ([OrderId], [ProductArticle], [Count]) VALUES (6, N'K535G6', 3)
INSERT [dbo].[ProductOfOrder] ([OrderId], [ProductArticle], [Count]) VALUES (7, N'G532R5', 5)
INSERT [dbo].[ProductOfOrder] ([OrderId], [ProductArticle], [Count]) VALUES (8, N'D526R4', 5)
INSERT [dbo].[ProductOfOrder] ([OrderId], [ProductArticle], [Count]) VALUES (9, N'V472S3', 3)
INSERT [dbo].[ProductOfOrder] ([OrderId], [ProductArticle], [Count]) VALUES (10, N'O875F6', 4)
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Role], [FullName], [Email], [Password]) VALUES (1, N'Администратор', N'Федоров Глеб Михайлович', N'o@outlook.com', N'2L6KZG')
INSERT [dbo].[User] ([Id], [Role], [FullName], [Email], [Password]) VALUES (2, N'Администратор', N'Семенова Софья Дмитриевна', N'hr6zdl@yandex.ru', N'uzWC67')
INSERT [dbo].[User] ([Id], [Role], [FullName], [Email], [Password]) VALUES (3, N'Администратор', N'Васильев Егор Германович', N'kaft93x@outlook.com', N'8ntwUp')
INSERT [dbo].[User] ([Id], [Role], [FullName], [Email], [Password]) VALUES (4, N'Менеджер', N'Смирнова Ирина Александровна', N'dcu@yandex.ru', N'YOyhfR')
INSERT [dbo].[User] ([Id], [Role], [FullName], [Email], [Password]) VALUES (5, N'Менеджер', N'Петров Андрей Владимирович', N'19dn@outlook.com', N'RSbvHv')
INSERT [dbo].[User] ([Id], [Role], [FullName], [Email], [Password]) VALUES (6, N'Менеджер', N'Егоров Максим Андреевич', N'pa5h@mail.ru', N'rwVDh9')
INSERT [dbo].[User] ([Id], [Role], [FullName], [Email], [Password]) VALUES (7, N'Клиент', N'Никитин Артур Алексеевич', N'281av0@gmail.com', N'LdNyos')
INSERT [dbo].[User] ([Id], [Role], [FullName], [Email], [Password]) VALUES (8, N'Клиент', N'Киселев Максим Сергеевич', N'8edmfh@outlook.com', N'gynQMT')
INSERT [dbo].[User] ([Id], [Role], [FullName], [Email], [Password]) VALUES (9, N'Клиент', N'Борисов Тимур Егорович', N'sfn13i@mail.ru', N'AtnDjr')
INSERT [dbo].[User] ([Id], [Role], [FullName], [Email], [Password]) VALUES (10, N'Клиент', N'Климов Арсений Тимурович', N'g0orc3x1@outlook.com', N'JlFRCZ')
INSERT [dbo].[User] ([Id], [Role], [FullName], [Email], [Password]) VALUES (11, N'Клиент', N'asd', N'asd', N'asd')
SET IDENTITY_INSERT [dbo].[User] OFF
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Destination] FOREIGN KEY([DestinationId])
REFERENCES [dbo].[Destination] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Destination]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[ProductCategory] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
GO
ALTER TABLE [dbo].[ProductOfOrder]  WITH CHECK ADD  CONSTRAINT [FK_ProductOfOrder_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[ProductOfOrder] CHECK CONSTRAINT [FK_ProductOfOrder_Order]
GO
ALTER TABLE [dbo].[ProductOfOrder]  WITH CHECK ADD  CONSTRAINT [FK_ProductOfOrder_Product] FOREIGN KEY([ProductArticle])
REFERENCES [dbo].[Product] ([Article])
GO
ALTER TABLE [dbo].[ProductOfOrder] CHECK CONSTRAINT [FK_ProductOfOrder_Product]
GO
