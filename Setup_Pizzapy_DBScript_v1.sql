USE [PizzapyDB]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 11/19/2019 21:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [bigint] IDENTITY(900000,1) NOT NULL,
	[FirstNm] [varchar](256) NOT NULL,
	[LastNm] [varchar](256) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[Active] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 11/19/2019 21:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmpId] [int] IDENTITY(808909,1) NOT NULL,
	[FirstNm] [varchar](50) NOT NULL,
	[LastNm] [varchar](50) NOT NULL,
	[Doj] [date] NOT NULL,
	[Active] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Extras]    Script Date: 11/19/2019 21:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Extras](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](256) NOT NULL,
	[Active] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 11/19/2019 21:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [bigint] IDENTITY(400000,1) NOT NULL,
	[OrderDt] [datetime] NOT NULL,
	[OrderBy] [int] NOT NULL,
	[OrderSrc] [int] NOT NULL,
	[OrderDst] [int] NOT NULL,
	[StoreId] [int] NOT NULL,
	[CrustId] [int] NOT NULL,
	[ToppingId] [int] NOT NULL,
	[SizeId] [int] NOT NULL,
	[Extras] [bit] NOT NULL,
	[Qty] [int] NOT NULL,
	[EmployeeId] [int] NULL,
	[CreatedOn] [datetime] NOT NULL,
	[UpdatedOn] [datetime] NOT NULL,
	[ModBy] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDst]    Script Date: 11/19/2019 21:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDst](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Active] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderExtra]    Script Date: 11/19/2019 21:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderExtra](
	[OrderId] [bigint] NOT NULL,
	[ExtraId] [int] NOT NULL,
	[Qty] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderSrc]    Script Date: 11/19/2019 21:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderSrc](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Active] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PizzaCrust]    Script Date: 11/19/2019 21:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PizzaCrust](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Active] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PizzaSize]    Script Date: 11/19/2019 21:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PizzaSize](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Active] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PizzaTopping]    Script Date: 11/19/2019 21:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PizzaTopping](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](256) NULL,
	[Active] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 11/19/2019 21:42:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[Id] [int] IDENTITY(3000,1) NOT NULL,
	[Name] [varchar](256) NOT NULL,
	[Franchise] [varchar](2) NOT NULL,
	[Zipcode] [varchar](10) NOT NULL,
	[Since] [datetime] NOT NULL,
	[Phone] [varchar](50) NULL,
	[Active] [bit] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900002, N'James', N'Butt', N'504-621-8927', CAST(N'2019-11-19T13:10:32.717' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900003, N'Josephine', N'Darakjy', N'810-292-9388', CAST(N'2019-11-19T13:10:32.743' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900004, N'Art', N'Venere', N'856-636-8749', CAST(N'2019-11-19T13:10:32.757' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900005, N'Lenna', N'Paprocki', N'907-385-4412', CAST(N'2019-11-19T13:10:32.773' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900006, N'Donette', N'Foller', N'513-570-1893', CAST(N'2019-11-19T13:10:32.790' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900007, N'Simona', N'Morasca', N'419-503-2484', CAST(N'2019-11-19T13:10:32.803' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900008, N'Mitsue', N'Tollner', N'773-573-6914', CAST(N'2019-11-19T13:10:32.817' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900009, N'Leota', N'Dilliard', N'408-752-3500', CAST(N'2019-11-19T13:10:32.833' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900010, N'Sage', N'Wieser', N'605-414-2147', CAST(N'2019-11-19T13:10:32.850' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900011, N'Kris', N'Marrier', N'410-655-8723', CAST(N'2019-11-19T13:10:32.863' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900012, N'Minna', N'Amigon', N'215-874-1229', CAST(N'2019-11-19T13:10:32.883' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900013, N'Abel', N'Maclead', N'631-335-3414', CAST(N'2019-11-19T13:10:32.897' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900014, N'Kiley', N'Caldarera', N'310-498-5651', CAST(N'2019-11-19T13:10:32.913' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900015, N'Graciela', N'Ruta', N'440-780-8425', CAST(N'2019-11-19T13:10:32.930' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900016, N'Cammy', N'Albares', N'956-537-6195', CAST(N'2019-11-19T13:10:32.943' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900017, N'Mattie', N'Poquette', N'602-277-4385', CAST(N'2019-11-19T13:10:32.957' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900018, N'Meaghan', N'Garufi', N'931-313-9635', CAST(N'2019-11-19T13:10:32.970' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900019, N'Gladys', N'Rim', N'414-661-9598', CAST(N'2019-11-19T13:10:32.983' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900020, N'Yuki', N'Whobrey', N'313-288-7937', CAST(N'2019-11-19T13:10:32.997' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900021, N'Fletcher', N'Flosi', N'815-828-2147', CAST(N'2019-11-19T13:10:33.010' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900022, N'Bette', N'Nicka', N'610-545-3615', CAST(N'2019-11-19T13:10:33.027' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900023, N'Veronika', N'Inouye', N'408-540-1785', CAST(N'2019-11-19T13:10:33.040' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900024, N'Willard', N'Kolmetz', N'972-303-9197', CAST(N'2019-11-19T13:10:33.053' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900025, N'Maryann', N'Royster', N'518-966-7987', CAST(N'2019-11-19T13:10:33.070' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900026, N'Alisha', N'Slusarski', N'732-658-3154', CAST(N'2019-11-19T13:10:33.080' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900027, N'Allene', N'Iturbide', N'715-662-6764', CAST(N'2019-11-19T13:10:33.093' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900028, N'Chanel', N'Caudy', N'913-388-2079', CAST(N'2019-11-19T13:10:33.110' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900029, N'Ezekiel', N'Chui', N'410-669-1642', CAST(N'2019-11-19T13:10:33.123' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900030, N'Willow', N'Kusko', N'212-582-4976', CAST(N'2019-11-19T13:10:33.137' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900031, N'Bernardo', N'Figeroa', N'936-336-3951', CAST(N'2019-11-19T13:10:33.150' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900032, N'Ammie', N'Corrio', N'614-801-9788', CAST(N'2019-11-19T13:10:33.167' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900033, N'Francine', N'Vocelka', N'505-977-3911', CAST(N'2019-11-19T13:10:33.180' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900034, N'Ernie', N'Stenseth', N'201-709-6245', CAST(N'2019-11-19T13:10:33.193' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900035, N'Albina', N'Glick', N'732-924-7882', CAST(N'2019-11-19T13:10:33.207' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900036, N'Alishia', N'Sergi', N'212-860-1579', CAST(N'2019-11-19T13:10:33.220' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900037, N'Solange', N'Shinko', N'504-979-9175', CAST(N'2019-11-19T13:10:33.233' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900038, N'Jose', N'Stockham', N'212-675-8570', CAST(N'2019-11-19T13:10:33.250' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900039, N'Rozella', N'Ostrosky', N'805-832-6163', CAST(N'2019-11-19T13:10:33.263' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900040, N'Valentine', N'Gillian', N'210-812-9597', CAST(N'2019-11-19T13:10:33.277' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900041, N'Kati', N'Rulapaugh', N'785-463-7829', CAST(N'2019-11-19T13:10:33.290' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900042, N'Youlanda', N'Schemmer', N'541-548-8197', CAST(N'2019-11-19T13:10:33.307' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900043, N'Dyan', N'Oldroyd', N'913-413-4604', CAST(N'2019-11-19T13:10:33.320' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900044, N'Roxane', N'Campain', N'907-231-4722', CAST(N'2019-11-19T13:10:33.333' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900045, N'Lavera', N'Perin', N'305-606-7291', CAST(N'2019-11-19T13:10:33.347' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900046, N'Erick', N'Ferencz', N'907-741-1044', CAST(N'2019-11-19T13:10:33.360' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900047, N'Fatima', N'Saylors', N'952-768-2416', CAST(N'2019-11-19T13:10:33.370' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900048, N'Jina', N'Briddick', N'617-399-5124', CAST(N'2019-11-19T13:10:33.387' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900049, N'Kanisha', N'Waycott', N'323-453-2780', CAST(N'2019-11-19T13:10:33.400' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900050, N'Emerson', N'Bowley', N'608-336-7444', CAST(N'2019-11-19T13:10:33.410' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900051, N'Blair', N'Malet', N'215-907-9111', CAST(N'2019-11-19T13:10:33.423' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900052, N'Brock', N'Bolognia', N'212-402-9216', CAST(N'2019-11-19T13:10:33.440' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900053, N'Lorrie', N'Nestle', N'931-875-6644', CAST(N'2019-11-19T13:10:33.453' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900054, N'Sabra', N'Uyetake', N'803-925-5213', CAST(N'2019-11-19T13:10:33.467' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900055, N'Marjory', N'Mastella', N'610-814-5533', CAST(N'2019-11-19T13:10:33.480' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900056, N'Karl', N'Klonowski', N'908-877-6135', CAST(N'2019-11-19T13:10:33.493' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900057, N'Tonette', N'Wenner', N'516-968-6051', CAST(N'2019-11-19T13:10:33.510' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900058, N'Amber', N'Monarrez', N'215-934-8655', CAST(N'2019-11-19T13:10:33.520' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900059, N'Shenika', N'Seewald', N'818-423-4007', CAST(N'2019-11-19T13:10:33.533' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900060, N'Delmy', N'Ahle', N'401-458-2547', CAST(N'2019-11-19T13:10:33.547' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900061, N'Deeanna', N'Juhas', N'215-211-9589', CAST(N'2019-11-19T13:10:33.560' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900062, N'Blondell', N'Pugh', N'401-960-8259', CAST(N'2019-11-19T13:10:33.573' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900063, N'Jamal', N'Vanausdal', N'732-234-1546', CAST(N'2019-11-19T13:10:33.587' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900064, N'Cecily', N'Hollack', N'512-486-3817', CAST(N'2019-11-19T13:10:33.600' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900065, N'Carmelina', N'Lindall', N'303-724-7371', CAST(N'2019-11-19T13:10:33.613' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900066, N'Maurine', N'Yglesias', N'414-748-1374', CAST(N'2019-11-19T13:10:33.627' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900067, N'Tawna', N'Buvens', N'212-674-9610', CAST(N'2019-11-19T13:10:33.640' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900068, N'Penney', N'Weight', N'907-797-9628', CAST(N'2019-11-19T13:10:33.653' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900069, N'Elly', N'Morocco', N'814-393-5571', CAST(N'2019-11-19T13:10:33.667' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900070, N'Ilene', N'Eroman', N'410-914-9018', CAST(N'2019-11-19T13:10:33.680' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900071, N'Vallie', N'Mondella', N'208-862-5339', CAST(N'2019-11-19T13:10:33.693' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900072, N'Kallie', N'Blackwood', N'415-315-2761', CAST(N'2019-11-19T13:10:33.710' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900073, N'Johnetta', N'Abdallah', N'919-225-9345', CAST(N'2019-11-19T13:10:33.720' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900074, N'Bobbye', N'Rhym', N'650-528-5783', CAST(N'2019-11-19T13:10:33.737' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900075, N'Micaela', N'Rhymes', N'925-647-3298', CAST(N'2019-11-19T13:10:33.750' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900076, N'Tamar', N'Hoogland', N'740-343-8575', CAST(N'2019-11-19T13:10:33.763' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900077, N'Moon', N'Parlato', N'585-866-8313', CAST(N'2019-11-19T13:10:33.777' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900078, N'Laurel', N'Reitler', N'410-520-4832', CAST(N'2019-11-19T13:10:33.790' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900079, N'Delisa', N'Crupi', N'973-354-2040', CAST(N'2019-11-19T13:10:33.803' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900080, N'Viva', N'Toelkes', N'773-446-5569', CAST(N'2019-11-19T13:10:33.817' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900081, N'Elza', N'Lipke', N'973-927-3447', CAST(N'2019-11-19T13:10:33.833' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900082, N'Devorah', N'Chickering', N'505-975-8559', CAST(N'2019-11-19T13:10:33.847' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900083, N'Timothy', N'Mulqueen', N'718-332-6527', CAST(N'2019-11-19T13:10:33.860' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900084, N'Arlette', N'Honeywell', N'904-775-4480', CAST(N'2019-11-19T13:10:33.873' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900085, N'Dominque', N'Dickerson', N'510-993-3758', CAST(N'2019-11-19T13:10:33.887' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900086, N'Lettie', N'Isenhower', N'216-657-7668', CAST(N'2019-11-19T13:10:33.900' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900087, N'Myra', N'Munns', N'817-914-7518', CAST(N'2019-11-19T13:10:33.917' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900088, N'Stephaine', N'Barfield', N'310-774-7643', CAST(N'2019-11-19T13:10:33.930' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900089, N'Lai', N'Gato', N'847-728-7286', CAST(N'2019-11-19T13:10:33.943' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900090, N'Stephen', N'Emigh', N'330-537-5358', CAST(N'2019-11-19T13:10:33.957' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900091, N'Tyra', N'Shields', N'215-255-1641', CAST(N'2019-11-19T13:10:33.970' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900092, N'Tammara', N'Wardrip', N'650-803-1936', CAST(N'2019-11-19T13:10:33.983' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900093, N'Cory', N'Gibes', N'626-572-1096', CAST(N'2019-11-19T13:10:33.997' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900094, N'Danica', N'Bruschke', N'254-782-8569', CAST(N'2019-11-19T13:10:34.010' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900095, N'Wilda', N'Giguere', N'907-870-5536', CAST(N'2019-11-19T13:10:34.020' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900096, N'Elvera', N'Benimadho', N'408-703-8505', CAST(N'2019-11-19T13:10:34.037' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900097, N'Carma', N'Vanheusen', N'510-503-7169', CAST(N'2019-11-19T13:10:34.050' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900098, N'Malinda', N'Hochard', N'317-722-5066', CAST(N'2019-11-19T13:10:34.060' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900099, N'Natalie', N'Fern', N'307-704-8713', CAST(N'2019-11-19T13:10:34.077' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900100, N'Lisha', N'Centini', N'703-235-3937', CAST(N'2019-11-19T13:10:34.090' AS DateTime), 1)
GO
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900101, N'Arlene', N'Klusman', N'504-710-5840', CAST(N'2019-11-19T13:10:34.100' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900102, N'Alease', N'Buemi', N'303-301-4946', CAST(N'2019-11-19T13:10:34.113' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900103, N'Louisa', N'Cronauer', N'510-828-7047', CAST(N'2019-11-19T13:10:34.130' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900104, N'Angella', N'Cetta', N'808-892-7943', CAST(N'2019-11-19T13:10:34.140' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900105, N'Cyndy', N'Goldammer', N'952-334-9408', CAST(N'2019-11-19T13:10:34.153' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900106, N'Rosio', N'Cork', N'336-243-5659', CAST(N'2019-11-19T13:10:34.167' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900107, N'Celeste', N'Korando', N'516-509-2347', CAST(N'2019-11-19T13:10:34.180' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900108, N'Twana', N'Felger', N'503-939-3153', CAST(N'2019-11-19T13:10:34.193' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900109, N'Estrella', N'Samu', N'608-976-7199', CAST(N'2019-11-19T13:10:34.207' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900110, N'Donte', N'Kines', N'508-429-8576', CAST(N'2019-11-19T13:10:34.220' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900111, N'Tiffiny', N'Steffensmeier', N'305-385-9695', CAST(N'2019-11-19T13:10:34.233' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900112, N'Edna', N'Miceli', N'814-460-2655', CAST(N'2019-11-19T13:10:34.247' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900113, N'Sue', N'Kownacki', N'972-666-3413', CAST(N'2019-11-19T13:10:34.260' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900114, N'Jesusa', N'Shin', N'931-273-8709', CAST(N'2019-11-19T13:10:34.273' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900115, N'Rolland', N'Francescon', N'973-649-2922', CAST(N'2019-11-19T13:10:34.287' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900116, N'Pamella', N'Schmierer', N'305-420-8970', CAST(N'2019-11-19T13:10:34.300' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900117, N'Glory', N'Kulzer', N'410-224-9462', CAST(N'2019-11-19T13:10:34.313' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900118, N'Shawna', N'Palaspas', N'805-275-3566', CAST(N'2019-11-19T13:10:34.327' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900119, N'Brandon', N'Callaro', N'808-215-6832', CAST(N'2019-11-19T13:10:34.340' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900120, N'Scarlet', N'Cartan', N'229-735-3378', CAST(N'2019-11-19T13:10:34.353' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900121, N'Oretha', N'Menter', N'617-418-5043', CAST(N'2019-11-19T13:10:34.367' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900122, N'Ty', N'Smith', N'201-672-1553', CAST(N'2019-11-19T13:10:34.380' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900123, N'Xuan', N'Rochin', N'650-933-5072', CAST(N'2019-11-19T13:10:34.393' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900124, N'Lindsey', N'Dilello', N'909-639-9887', CAST(N'2019-11-19T13:10:34.407' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900125, N'Devora', N'Perez', N'510-955-3016', CAST(N'2019-11-19T13:10:34.420' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900126, N'Herman', N'Demesa', N'518-497-2940', CAST(N'2019-11-19T13:10:34.433' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900127, N'Rory', N'Papasergi', N'570-867-7489', CAST(N'2019-11-19T13:10:34.447' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900128, N'Talia', N'Riopelle', N'973-245-2133', CAST(N'2019-11-19T13:10:34.460' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900129, N'Van', N'Shire', N'908-409-2890', CAST(N'2019-11-19T13:10:34.473' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900130, N'Lucina', N'Lary', N'321-749-4981', CAST(N'2019-11-19T13:10:34.487' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900131, N'Bok', N'Isaacs', N'718-809-3762', CAST(N'2019-11-19T13:10:34.500' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900132, N'Rolande', N'Spickerman', N'808-315-3077', CAST(N'2019-11-19T13:10:34.513' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900133, N'Howard', N'Paulas', N'303-623-4241', CAST(N'2019-11-19T13:10:34.527' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900134, N'Kimbery', N'Madarang', N'973-310-1634', CAST(N'2019-11-19T13:10:34.540' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900135, N'Thurman', N'Manno', N'609-524-3586', CAST(N'2019-11-19T13:10:34.553' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900136, N'Becky', N'Mirafuentes', N'908-877-8409', CAST(N'2019-11-19T13:10:34.567' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900137, N'Beatriz', N'Corrington', N'508-584-4279', CAST(N'2019-11-19T13:10:34.580' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900138, N'Marti', N'Maybury', N'773-775-4522', CAST(N'2019-11-19T13:10:34.597' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900139, N'Nieves', N'Gotter', N'503-527-5274', CAST(N'2019-11-19T13:10:34.610' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900140, N'Leatha', N'Hagele', N'214-339-1809', CAST(N'2019-11-19T13:10:34.623' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900141, N'Valentin', N'Klimek', N'312-303-5453', CAST(N'2019-11-19T13:10:34.633' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900142, N'Melissa', N'Wiklund', N'419-939-3613', CAST(N'2019-11-19T13:10:34.650' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900143, N'Sheridan', N'Zane', N'951-645-3605', CAST(N'2019-11-19T13:10:34.663' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900144, N'Bulah', N'Padilla', N'254-463-4368', CAST(N'2019-11-19T13:10:34.677' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900145, N'Audra', N'Kohnert', N'615-406-7854', CAST(N'2019-11-19T13:10:34.690' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900146, N'Daren', N'Weirather', N'414-959-2540', CAST(N'2019-11-19T13:10:34.700' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900147, N'Fernanda', N'Jillson', N'410-387-5260', CAST(N'2019-11-19T13:10:34.717' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900148, N'Gearldine', N'Gellinger', N'972-934-6914', CAST(N'2019-11-19T13:10:34.730' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900149, N'Chau', N'Kitzman', N'310-560-8022', CAST(N'2019-11-19T13:10:34.743' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900150, N'Theola', N'Frey', N'516-948-5768', CAST(N'2019-11-19T13:10:34.760' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900151, N'Cheryl', N'Haroldson', N'609-518-7697', CAST(N'2019-11-19T13:10:34.773' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900152, N'Laticia', N'Merced', N'513-508-7371', CAST(N'2019-11-19T13:10:34.787' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900153, N'Carissa', N'Batman', N'541-326-4074', CAST(N'2019-11-19T13:10:34.800' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900154, N'Lezlie', N'Craghead', N'919-533-3762', CAST(N'2019-11-19T13:10:34.810' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900155, N'Ozell', N'Shealy', N'212-332-8435', CAST(N'2019-11-19T13:10:34.827' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900156, N'Arminda', N'Parvis', N'602-906-9419', CAST(N'2019-11-19T13:10:34.840' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900157, N'Reita', N'Leto', N'317-234-1135', CAST(N'2019-11-19T13:10:34.853' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900158, N'Yolando', N'Luczki', N'315-304-4759', CAST(N'2019-11-19T13:10:34.870' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900159, N'Lizette', N'Stem', N'856-487-5412', CAST(N'2019-11-19T13:10:34.880' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900160, N'Gregoria', N'Pawlowicz', N'516-212-1915', CAST(N'2019-11-19T13:10:34.893' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900161, N'Carin', N'Deleo', N'501-308-1040', CAST(N'2019-11-19T13:10:34.910' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900162, N'Chantell', N'Maynerich', N'651-591-2583', CAST(N'2019-11-19T13:10:34.920' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900163, N'Dierdre', N'Yum', N'215-325-3042', CAST(N'2019-11-19T13:10:34.933' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900164, N'Larae', N'Gudroe', N'985-890-7262', CAST(N'2019-11-19T13:10:34.950' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900165, N'Latrice', N'Tolfree', N'631-957-7624', CAST(N'2019-11-19T13:10:34.963' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900166, N'Kerry', N'Theodorov', N'916-591-3277', CAST(N'2019-11-19T13:10:34.977' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900167, N'Dorthy', N'Hidvegi', N'208-649-2373', CAST(N'2019-11-19T13:10:34.990' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900168, N'Fannie', N'Lungren', N'512-587-5746', CAST(N'2019-11-19T13:10:35.003' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900169, N'Evangelina', N'Radde', N'215-964-3284', CAST(N'2019-11-19T13:10:35.017' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900170, N'Novella', N'Degroot', N'808-477-4775', CAST(N'2019-11-19T13:10:35.030' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900171, N'Clay', N'Hoa', N'775-501-8109', CAST(N'2019-11-19T13:10:35.047' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900172, N'Jennifer', N'Fallick', N'847-979-9545', CAST(N'2019-11-19T13:10:35.060' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900173, N'Irma', N'Wolfgramm', N'973-545-7355', CAST(N'2019-11-19T13:10:35.073' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900174, N'Eun', N'Coody', N'864-256-3620', CAST(N'2019-11-19T13:10:35.090' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900175, N'Sylvia', N'Cousey', N'410-209-9545', CAST(N'2019-11-19T13:10:35.100' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900176, N'Nana', N'Wrinkles', N'914-855-2115', CAST(N'2019-11-19T13:10:35.113' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900177, N'Layla', N'Springe', N'212-260-3151', CAST(N'2019-11-19T13:10:35.130' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900178, N'Joesph', N'Degonia', N'510-677-9785', CAST(N'2019-11-19T13:10:35.140' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900179, N'Annabelle', N'Boord', N'978-697-6263', CAST(N'2019-11-19T13:10:35.153' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900180, N'Stephaine', N'Vinning', N'415-767-6596', CAST(N'2019-11-19T13:10:35.170' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900181, N'Nelida', N'Sawchuk', N'201-971-1638', CAST(N'2019-11-19T13:10:35.183' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900182, N'Marguerita', N'Hiatt', N'925-634-7158', CAST(N'2019-11-19T13:10:35.197' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900183, N'Carmela', N'Cookey', N'773-494-4195', CAST(N'2019-11-19T13:10:35.210' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900184, N'Junita', N'Brideau', N'973-943-3423', CAST(N'2019-11-19T13:10:35.223' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900185, N'Claribel', N'Varriano', N'419-544-4900', CAST(N'2019-11-19T13:10:35.237' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900186, N'Benton', N'Skursky', N'310-579-2907', CAST(N'2019-11-19T13:10:35.250' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900187, N'Hillary', N'Skulski', N'352-242-2570', CAST(N'2019-11-19T13:10:35.263' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900188, N'Merilyn', N'Bayless', N'408-758-5015', CAST(N'2019-11-19T13:10:35.277' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900189, N'Teri', N'Ennaco', N'570-889-5187', CAST(N'2019-11-19T13:10:35.290' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900190, N'Merlyn', N'Lawler', N'201-588-7810', CAST(N'2019-11-19T13:10:35.307' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900191, N'Georgene', N'Montezuma', N'925-615-5185', CAST(N'2019-11-19T13:10:35.320' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900192, N'Jettie', N'Mconnell', N'908-802-3564', CAST(N'2019-11-19T13:10:35.347' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900193, N'Lemuel', N'Latzke', N'631-748-6479', CAST(N'2019-11-19T13:10:35.363' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900194, N'Melodie', N'Knipp', N'805-690-1682', CAST(N'2019-11-19T13:10:35.377' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900195, N'Candida', N'Corbley', N'908-275-8357', CAST(N'2019-11-19T13:10:35.390' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900196, N'Karan', N'Karpin', N'503-940-8327', CAST(N'2019-11-19T13:10:35.407' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900197, N'Andra', N'Scheyer', N'503-516-2189', CAST(N'2019-11-19T13:10:35.420' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900198, N'Felicidad', N'Poullion', N'856-305-9731', CAST(N'2019-11-19T13:10:35.433' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900199, N'Belen', N'Strassner', N'770-507-8791', CAST(N'2019-11-19T13:10:35.447' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900200, N'Gracia', N'Melnyk', N'904-235-3633', CAST(N'2019-11-19T13:10:35.460' AS DateTime), 1)
GO
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900201, N'Jolanda', N'Hanafan', N'207-458-9196', CAST(N'2019-11-19T13:10:35.470' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900202, N'Barrett', N'Toyama', N'817-765-5781', CAST(N'2019-11-19T13:10:35.483' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900203, N'Helga', N'Fredicks', N'716-752-4114', CAST(N'2019-11-19T13:10:35.500' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900204, N'Ashlyn', N'Pinilla', N'305-670-9628', CAST(N'2019-11-19T13:10:35.513' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900205, N'Fausto', N'Agramonte', N'212-313-1783', CAST(N'2019-11-19T13:10:35.527' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900206, N'Ronny', N'Caiafa', N'215-605-7570', CAST(N'2019-11-19T13:10:35.540' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900207, N'Marge', N'Limmel', N'850-430-1663', CAST(N'2019-11-19T13:10:35.553' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900208, N'Norah', N'Waymire', N'415-306-7897', CAST(N'2019-11-19T13:10:35.567' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900209, N'Aliza', N'Baltimore', N'408-504-3552', CAST(N'2019-11-19T13:10:35.580' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900210, N'Mozell', N'Pelkowski', N'650-947-1215', CAST(N'2019-11-19T13:10:35.593' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900211, N'Viola', N'Bitsuie', N'818-864-4875', CAST(N'2019-11-19T13:10:35.607' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900212, N'Franklyn', N'Emard', N'215-558-8189', CAST(N'2019-11-19T13:10:35.620' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900213, N'Willodean', N'Konopacki', N'337-253-8384', CAST(N'2019-11-19T13:10:35.633' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900214, N'Beckie', N'Silvestrini', N'313-533-4884', CAST(N'2019-11-19T13:10:35.647' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900215, N'Rebecka', N'Gesick', N'512-213-8574', CAST(N'2019-11-19T13:10:35.660' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900216, N'Frederica', N'Blunk', N'214-428-2285', CAST(N'2019-11-19T13:10:35.673' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900217, N'Glen', N'Bartolet', N'206-697-5796', CAST(N'2019-11-19T13:10:35.690' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900218, N'Freeman', N'Gochal', N'610-476-3501', CAST(N'2019-11-19T13:10:35.700' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900219, N'Vincent', N'Meinerding', N'215-372-1718', CAST(N'2019-11-19T13:10:35.717' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900220, N'Rima', N'Bevelacqua', N'310-858-5079', CAST(N'2019-11-19T13:10:35.730' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900221, N'Glendora', N'Sarbacher', N'707-653-8214', CAST(N'2019-11-19T13:10:35.743' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900222, N'Avery', N'Steier', N'407-808-9439', CAST(N'2019-11-19T13:10:35.757' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900223, N'Cristy', N'Lother', N'760-971-4322', CAST(N'2019-11-19T13:10:35.770' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900224, N'Nicolette', N'Brossart', N'508-837-9230', CAST(N'2019-11-19T13:10:35.783' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900225, N'Tracey', N'Modzelewski', N'936-264-9294', CAST(N'2019-11-19T13:10:35.797' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900226, N'Virgina', N'Tegarden', N'414-214-8697', CAST(N'2019-11-19T13:10:35.810' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900227, N'Tiera', N'Frankel', N'626-636-4117', CAST(N'2019-11-19T13:10:35.823' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900228, N'Alaine', N'Bergesen', N'914-300-9193', CAST(N'2019-11-19T13:10:35.837' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900229, N'Earleen', N'Mai', N'214-289-1973', CAST(N'2019-11-19T13:10:35.850' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900230, N'Leonida', N'Gobern', N'228-235-5615', CAST(N'2019-11-19T13:10:35.863' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900231, N'Ressie', N'Auffrey', N'305-604-8981', CAST(N'2019-11-19T13:10:35.877' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900232, N'Justine', N'Mugnolo', N'212-304-9225', CAST(N'2019-11-19T13:10:35.890' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900233, N'Eladia', N'Saulter', N'201-474-4924', CAST(N'2019-11-19T13:10:35.903' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900234, N'Chaya', N'Malvin', N'734-928-5182', CAST(N'2019-11-19T13:10:35.917' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900235, N'Gwenn', N'Suffield', N'631-258-6558', CAST(N'2019-11-19T13:10:35.930' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900236, N'Salena', N'Karpel', N'330-791-8557', CAST(N'2019-11-19T13:10:35.943' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900237, N'Yoko', N'Fishburne', N'203-506-4706', CAST(N'2019-11-19T13:10:35.957' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900238, N'Taryn', N'Moyd', N'703-322-4041', CAST(N'2019-11-19T13:10:35.970' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900239, N'Katina', N'Polidori', N'978-626-2978', CAST(N'2019-11-19T13:10:35.983' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900240, N'Rickie', N'Plumer', N'419-693-1334', CAST(N'2019-11-19T13:10:35.997' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900241, N'Alex', N'Loader', N'253-660-7821', CAST(N'2019-11-19T13:10:36.010' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900242, N'Lashon', N'Vizarro', N'916-741-7884', CAST(N'2019-11-19T13:10:36.023' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900243, N'Lauran', N'Burnard', N'307-342-7795', CAST(N'2019-11-19T13:10:36.033' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900244, N'Ceola', N'Setter', N'207-627-7565', CAST(N'2019-11-19T13:10:36.047' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900245, N'My', N'Rantanen', N'215-491-5633', CAST(N'2019-11-19T13:10:36.063' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900246, N'Lorrine', N'Worlds', N'813-769-2939', CAST(N'2019-11-19T13:10:36.077' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900247, N'Peggie', N'Sturiale', N'619-608-1763', CAST(N'2019-11-19T13:10:36.090' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900248, N'Marvel', N'Raymo', N'979-718-8968', CAST(N'2019-11-19T13:10:36.103' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900249, N'Daron', N'Dinos', N'847-233-3075', CAST(N'2019-11-19T13:10:36.117' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900250, N'An', N'Fritz', N'609-228-5265', CAST(N'2019-11-19T13:10:36.130' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900251, N'Portia', N'Stimmel', N'908-722-7128', CAST(N'2019-11-19T13:10:36.140' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900252, N'Rhea', N'Aredondo', N'718-560-9537', CAST(N'2019-11-19T13:10:36.157' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900253, N'Benedict', N'Sama', N'314-787-1588', CAST(N'2019-11-19T13:10:36.170' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900254, N'Alyce', N'Arias', N'209-317-1801', CAST(N'2019-11-19T13:10:36.180' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900255, N'Heike', N'Berganza', N'973-936-5095', CAST(N'2019-11-19T13:10:36.193' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900256, N'Carey', N'Dopico', N'317-578-2453', CAST(N'2019-11-19T13:10:36.210' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900257, N'Dottie', N'Hellickson', N'206-540-6076', CAST(N'2019-11-19T13:10:36.223' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900258, N'Deandrea', N'Hughey', N'336-822-7652', CAST(N'2019-11-19T13:10:36.237' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900259, N'Kimberlie', N'Duenas', N'785-629-8542', CAST(N'2019-11-19T13:10:36.250' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900260, N'Martina', N'Staback', N'407-471-6908', CAST(N'2019-11-19T13:10:36.263' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900261, N'Skye', N'Fillingim', N'612-508-2655', CAST(N'2019-11-19T13:10:36.277' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900262, N'Jade', N'Farrar', N'803-352-5387', CAST(N'2019-11-19T13:10:36.290' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900263, N'Charlene', N'Hamilton', N'707-300-1771', CAST(N'2019-11-19T13:10:36.303' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900264, N'Geoffrey', N'Acey', N'847-222-1734', CAST(N'2019-11-19T13:10:36.317' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900265, N'Stevie', N'Westerbeck', N'949-867-4077', CAST(N'2019-11-19T13:10:36.330' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900266, N'Pamella', N'Fortino', N'303-404-2210', CAST(N'2019-11-19T13:10:36.343' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900267, N'Harrison', N'Haufler', N'203-801-6193', CAST(N'2019-11-19T13:10:36.357' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900268, N'Johnna', N'Engelberg', N'425-986-7573', CAST(N'2019-11-19T13:10:36.370' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900269, N'Buddy', N'Cloney', N'440-989-5826', CAST(N'2019-11-19T13:10:36.383' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900270, N'Dalene', N'Riden', N'603-315-6839', CAST(N'2019-11-19T13:10:36.393' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900271, N'Jerry', N'Zurcher', N'321-518-5938', CAST(N'2019-11-19T13:10:36.410' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900272, N'Haydee', N'Denooyer', N'212-792-8658', CAST(N'2019-11-19T13:10:36.420' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900273, N'Joseph', N'Cryer', N'714-584-2237', CAST(N'2019-11-19T13:10:36.433' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900274, N'Deonna', N'Kippley', N'248-913-4677', CAST(N'2019-11-19T13:10:36.450' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900275, N'Raymon', N'Calvaresi', N'317-825-4724', CAST(N'2019-11-19T13:10:36.460' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900276, N'Alecia', N'Bubash', N'940-276-7922', CAST(N'2019-11-19T13:10:36.473' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900277, N'Ma', N'Layous', N'203-721-3388', CAST(N'2019-11-19T13:10:36.487' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900278, N'Detra', N'Coyier', N'410-739-9277', CAST(N'2019-11-19T13:10:36.503' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900279, N'Terrilyn', N'Rodeigues', N'504-463-4384', CAST(N'2019-11-19T13:10:36.517' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900280, N'Salome', N'Lacovara', N'804-550-5097', CAST(N'2019-11-19T13:10:36.527' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900281, N'Garry', N'Keetch', N'215-979-8776', CAST(N'2019-11-19T13:10:36.540' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900282, N'Matthew', N'Neither', N'952-651-7597', CAST(N'2019-11-19T13:10:36.553' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900283, N'Theodora', N'Restrepo', N'305-936-8226', CAST(N'2019-11-19T13:10:36.567' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900284, N'Noah', N'Kalafatis', N'414-263-5287', CAST(N'2019-11-19T13:10:36.580' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900285, N'Carmen', N'Sweigard', N'732-941-2621', CAST(N'2019-11-19T13:10:36.593' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900286, N'Lavonda', N'Hengel', N'701-898-2154', CAST(N'2019-11-19T13:10:36.607' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900287, N'Junita', N'Stoltzman', N'775-638-9963', CAST(N'2019-11-19T13:10:36.620' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900288, N'Herminia', N'Nicolozakes', N'602-954-5141', CAST(N'2019-11-19T13:10:36.633' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900289, N'Casie', N'Good', N'615-390-2251', CAST(N'2019-11-19T13:10:36.647' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900290, N'Reena', N'Maisto', N'410-351-1863', CAST(N'2019-11-19T13:10:36.660' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900291, N'Mirta', N'Mallett', N'212-870-1286', CAST(N'2019-11-19T13:10:36.673' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900292, N'Cathrine', N'Pontoriero', N'806-703-1435', CAST(N'2019-11-19T13:10:36.687' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900293, N'Filiberto', N'Tawil', N'323-765-2528', CAST(N'2019-11-19T13:10:36.700' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900294, N'Raul', N'Upthegrove', N'619-509-5282', CAST(N'2019-11-19T13:10:36.713' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900295, N'Sarah', N'Candlish', N'770-732-1194', CAST(N'2019-11-19T13:10:36.727' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900296, N'Lucy', N'Treston', N'508-769-5250', CAST(N'2019-11-19T13:10:36.740' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900297, N'Judy', N'Aquas', N'269-756-7222', CAST(N'2019-11-19T13:10:36.753' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900298, N'Yvonne', N'Tjepkema', N'973-714-1721', CAST(N'2019-11-19T13:10:36.767' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900299, N'Kayleigh', N'Lace', N'337-740-9323', CAST(N'2019-11-19T13:10:36.780' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900300, N'Felix', N'Hirpara', N'717-491-5643', CAST(N'2019-11-19T13:10:36.793' AS DateTime), 1)
GO
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900301, N'Tresa', N'Sweely', N'314-359-9566', CAST(N'2019-11-19T13:10:36.807' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900302, N'Kristeen', N'Turinetti', N'817-213-8851', CAST(N'2019-11-19T13:10:36.820' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900303, N'Jenelle', N'Regusters', N'813-932-8715', CAST(N'2019-11-19T13:10:36.830' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900304, N'Renea', N'Monterrubio', N'770-679-4752', CAST(N'2019-11-19T13:10:36.843' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900305, N'Olive', N'Matuszak', N'760-938-6069', CAST(N'2019-11-19T13:10:36.857' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900306, N'Ligia', N'Reiber', N'517-906-1108', CAST(N'2019-11-19T13:10:36.870' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900307, N'Christiane', N'Eschberger', N'602-390-4944', CAST(N'2019-11-19T13:10:36.887' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900308, N'Goldie', N'Schirpke', N'207-295-7569', CAST(N'2019-11-19T13:10:36.897' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900309, N'Loreta', N'Timenez', N'301-696-6420', CAST(N'2019-11-19T13:10:36.910' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900310, N'Fabiola', N'Hauenstein', N'717-809-3119', CAST(N'2019-11-19T13:10:36.923' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900311, N'Amie', N'Perigo', N'972-419-7946', CAST(N'2019-11-19T13:10:36.940' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900312, N'Raina', N'Brachle', N'406-318-1515', CAST(N'2019-11-19T13:10:36.950' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900313, N'Erinn', N'Canlas', N'973-767-3008', CAST(N'2019-11-19T13:10:36.963' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900314, N'Cherry', N'Lietz', N'248-980-6904', CAST(N'2019-11-19T13:10:36.977' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900315, N'Kattie', N'Vonasek', N'216-923-3715', CAST(N'2019-11-19T13:10:36.990' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900316, N'Lilli', N'Scriven', N'325-631-1560', CAST(N'2019-11-19T13:10:37.003' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900317, N'Whitley', N'Tomasulo', N'817-526-4408', CAST(N'2019-11-19T13:10:37.017' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900318, N'Barbra', N'Adkin', N'718-201-3751', CAST(N'2019-11-19T13:10:37.030' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900319, N'Hermila', N'Thyberg', N'401-893-4882', CAST(N'2019-11-19T13:10:37.043' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900320, N'Jesusita', N'Flister', N'717-885-9118', CAST(N'2019-11-19T13:10:37.057' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900321, N'Caitlin', N'Julia', N'401-948-4982', CAST(N'2019-11-19T13:10:37.070' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900322, N'Roosevelt', N'Hoffis', N'305-622-4739', CAST(N'2019-11-19T13:10:37.083' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900323, N'Helaine', N'Halter', N'201-832-4168', CAST(N'2019-11-19T13:10:37.100' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900324, N'Lorean', N'Martabano', N'210-856-4979', CAST(N'2019-11-19T13:10:37.110' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900325, N'France', N'Buzick', N'718-478-8504', CAST(N'2019-11-19T13:10:37.123' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900326, N'Justine', N'Ferrario', N'909-993-3242', CAST(N'2019-11-19T13:10:37.140' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900327, N'Adelina', N'Nabours', N'216-230-4892', CAST(N'2019-11-19T13:10:37.153' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900328, N'Derick', N'Dhamer', N'212-304-4515', CAST(N'2019-11-19T13:10:37.167' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900329, N'Jerry', N'Dallen', N'804-762-9576', CAST(N'2019-11-19T13:10:37.180' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900330, N'Leota', N'Ragel', N'706-221-4243', CAST(N'2019-11-19T13:10:37.193' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900331, N'Jutta', N'Amyot', N'337-515-1438', CAST(N'2019-11-19T13:10:37.210' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900332, N'Aja', N'Gehrett', N'973-544-2677', CAST(N'2019-11-19T13:10:37.223' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900333, N'Kirk', N'Herritt', N'607-407-3716', CAST(N'2019-11-19T13:10:37.240' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900334, N'Leonora', N'Mauson', N'973-412-2995', CAST(N'2019-11-19T13:10:37.253' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900335, N'Winfred', N'Brucato', N'208-252-4552', CAST(N'2019-11-19T13:10:37.267' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900336, N'Tarra', N'Nachor', N'415-411-1775', CAST(N'2019-11-19T13:10:37.280' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900337, N'Corinne', N'Loder', N'508-942-4186', CAST(N'2019-11-19T13:10:37.297' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900338, N'Dulce', N'Labreche', N'248-357-8718', CAST(N'2019-11-19T13:10:37.310' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900339, N'Kate', N'Keneipp', N'920-353-6377', CAST(N'2019-11-19T13:10:37.323' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900340, N'Kaitlyn', N'Ogg', N'410-665-4903', CAST(N'2019-11-19T13:10:37.337' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900341, N'Sherita', N'Saras', N'719-669-1664', CAST(N'2019-11-19T13:10:37.350' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900342, N'Lashawnda', N'Stuer', N'419-588-8719', CAST(N'2019-11-19T13:10:37.363' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900343, N'Ernest', N'Syrop', N'301-998-9644', CAST(N'2019-11-19T13:10:37.377' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900344, N'Nobuko', N'Halsey', N'508-855-9887', CAST(N'2019-11-19T13:10:37.390' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900345, N'Lavonna', N'Wolny', N'703-483-1970', CAST(N'2019-11-19T13:10:37.403' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900346, N'Lashaunda', N'Lizama', N'410-678-2473', CAST(N'2019-11-19T13:10:37.420' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900347, N'Mariann', N'Bilden', N'512-223-4791', CAST(N'2019-11-19T13:10:37.433' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900348, N'Helene', N'Rodenberger', N'623-461-8551', CAST(N'2019-11-19T13:10:37.447' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900349, N'Roselle', N'Estell', N'419-571-5920', CAST(N'2019-11-19T13:10:37.463' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900350, N'Samira', N'Heintzman', N'206-311-4137', CAST(N'2019-11-19T13:10:37.477' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900351, N'Margart', N'Meisel', N'513-617-2362', CAST(N'2019-11-19T13:10:37.490' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900352, N'Kristofer', N'Bennick', N'812-368-1511', CAST(N'2019-11-19T13:10:37.503' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900353, N'Weldon', N'Acuff', N'847-353-2156', CAST(N'2019-11-19T13:10:37.520' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900354, N'Shalon', N'Shadrick', N'718-232-2337', CAST(N'2019-11-19T13:10:37.533' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900355, N'Denise', N'Patak', N'407-446-4358', CAST(N'2019-11-19T13:10:37.547' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900356, N'Louvenia', N'Beech', N'310-820-2117', CAST(N'2019-11-19T13:10:37.560' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900357, N'Audry', N'Yaw', N'813-797-4816', CAST(N'2019-11-19T13:10:37.577' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900358, N'Kristel', N'Ehmann', N'915-452-1290', CAST(N'2019-11-19T13:10:37.590' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900359, N'Vincenza', N'Zepp', N'619-603-5125', CAST(N'2019-11-19T13:10:37.603' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900360, N'Elouise', N'Gwalthney', N'301-841-5012', CAST(N'2019-11-19T13:10:37.620' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900361, N'Venita', N'Maillard', N'714-523-6653', CAST(N'2019-11-19T13:10:37.630' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900362, N'Kasandra', N'Semidey', N'314-732-9131', CAST(N'2019-11-19T13:10:37.647' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900363, N'Xochitl', N'Discipio', N'512-233-1831', CAST(N'2019-11-19T13:10:37.660' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900364, N'Maile', N'Linahan', N'336-670-2640', CAST(N'2019-11-19T13:10:37.673' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900365, N'Krissy', N'Rauser', N'631-443-4710', CAST(N'2019-11-19T13:10:37.687' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900366, N'Pete', N'Dubaldi', N'201-825-2514', CAST(N'2019-11-19T13:10:37.703' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900367, N'Linn', N'Paa', N'901-412-4381', CAST(N'2019-11-19T13:10:37.717' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900368, N'Paris', N'Wide', N'404-505-4445', CAST(N'2019-11-19T13:10:37.730' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900369, N'Wynell', N'Dorshorst', N'650-473-1262', CAST(N'2019-11-19T13:10:37.743' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900370, N'Quentin', N'Birkner', N'952-702-7993', CAST(N'2019-11-19T13:10:37.760' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900371, N'Regenia', N'Kannady', N'480-726-1280', CAST(N'2019-11-19T13:10:37.770' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900372, N'Sheron', N'Louissant', N'718-976-8610', CAST(N'2019-11-19T13:10:37.787' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900373, N'Izetta', N'Funnell', N'770-844-3447', CAST(N'2019-11-19T13:10:37.800' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900374, N'Rodolfo', N'Butzen', N'507-210-3510', CAST(N'2019-11-19T13:10:37.813' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900375, N'Zona', N'Colla', N'203-461-1949', CAST(N'2019-11-19T13:10:37.827' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900376, N'Serina', N'Zagen', N'260-273-3725', CAST(N'2019-11-19T13:10:37.843' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900377, N'Paz', N'Sahagun', N'601-927-8287', CAST(N'2019-11-19T13:10:37.857' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900378, N'Markus', N'Lukasik', N'586-970-7380', CAST(N'2019-11-19T13:10:37.870' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900379, N'Jaclyn', N'Bachman', N'719-853-3600', CAST(N'2019-11-19T13:10:37.883' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900380, N'Cyril', N'Daufeldt', N'212-745-8484', CAST(N'2019-11-19T13:10:37.897' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900381, N'Gayla', N'Schnitzler', N'510-686-3407', CAST(N'2019-11-19T13:10:37.910' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900382, N'Erick', N'Nievas', N'773-704-9903', CAST(N'2019-11-19T13:10:37.927' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900383, N'Jennie', N'Drymon', N'570-218-4831', CAST(N'2019-11-19T13:10:37.940' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900384, N'Mitsue', N'Scipione', N'530-986-9272', CAST(N'2019-11-19T13:10:37.953' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900385, N'Ciara', N'Ventura', N'845-823-8877', CAST(N'2019-11-19T13:10:37.970' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900386, N'Galen', N'Cantres', N'216-600-6111', CAST(N'2019-11-19T13:10:37.983' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900387, N'Truman', N'Feichtner', N'973-852-2736', CAST(N'2019-11-19T13:10:37.997' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900388, N'Gail', N'Kitty', N'907-435-9166', CAST(N'2019-11-19T13:10:38.010' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900389, N'Dalene', N'Schoeneck', N'215-268-1275', CAST(N'2019-11-19T13:10:38.023' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900390, N'Gertude', N'Witten', N'513-977-7043', CAST(N'2019-11-19T13:10:38.037' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900391, N'Lizbeth', N'Kohl', N'310-699-1222', CAST(N'2019-11-19T13:10:38.050' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900392, N'Glenn', N'Berray', N'515-370-7348', CAST(N'2019-11-19T13:10:38.067' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900393, N'Lashandra', N'Klang', N'610-809-1818', CAST(N'2019-11-19T13:10:38.080' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900394, N'Lenna', N'Newville', N'919-623-2524', CAST(N'2019-11-19T13:10:38.093' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900395, N'Laurel', N'Pagliuca', N'509-695-5199', CAST(N'2019-11-19T13:10:38.110' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900396, N'Mireya', N'Frerking', N'914-868-5965', CAST(N'2019-11-19T13:10:38.123' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900397, N'Annelle', N'Tagala', N'410-757-1035', CAST(N'2019-11-19T13:10:38.137' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900398, N'Dean', N'Ketelsen', N'516-847-4418', CAST(N'2019-11-19T13:10:38.150' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900399, N'Levi', N'Munis', N'508-456-4907', CAST(N'2019-11-19T13:10:38.163' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900400, N'Sylvie', N'Ryser', N'918-644-9555', CAST(N'2019-11-19T13:10:38.177' AS DateTime), 1)
GO
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900401, N'Sharee', N'Maile', N'231-467-9978', CAST(N'2019-11-19T13:10:38.193' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900402, N'Cordelia', N'Storment', N'337-566-6001', CAST(N'2019-11-19T13:10:38.207' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900403, N'Mollie', N'Mcdoniel', N'419-975-3182', CAST(N'2019-11-19T13:10:38.220' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900404, N'Brett', N'Mccullan', N'619-461-9984', CAST(N'2019-11-19T13:10:38.233' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900405, N'Teddy', N'Pedrozo', N'203-892-3863', CAST(N'2019-11-19T13:10:38.250' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900406, N'Tasia', N'Andreason', N'201-920-9002', CAST(N'2019-11-19T13:10:38.260' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900407, N'Hubert', N'Walthall', N'330-903-1345', CAST(N'2019-11-19T13:10:38.277' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900408, N'Arthur', N'Farrow', N'201-238-5688', CAST(N'2019-11-19T13:10:38.290' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900409, N'Vilma', N'Berlanga', N'616-737-3085', CAST(N'2019-11-19T13:10:38.303' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900410, N'Billye', N'Miro', N'601-567-5386', CAST(N'2019-11-19T13:10:38.320' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900411, N'Glenna', N'Slayton', N'901-640-9178', CAST(N'2019-11-19T13:10:38.333' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900412, N'Mitzie', N'Hudnall', N'303-402-1940', CAST(N'2019-11-19T13:10:38.347' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900413, N'Bernardine', N'Rodefer', N'901-901-4726', CAST(N'2019-11-19T13:10:38.360' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900414, N'Staci', N'Schmaltz', N'626-866-2339', CAST(N'2019-11-19T13:10:38.377' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900415, N'Nichelle', N'Meteer', N'773-225-9985', CAST(N'2019-11-19T13:10:38.390' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900416, N'Janine', N'Rhoden', N'718-228-5894', CAST(N'2019-11-19T13:10:38.403' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900417, N'Ettie', N'Hoopengardner', N'509-755-5393', CAST(N'2019-11-19T13:10:38.420' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900418, N'Eden', N'Jayson', N'410-890-7866', CAST(N'2019-11-19T13:10:38.433' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900419, N'Lynelle', N'Auber', N'973-860-8610', CAST(N'2019-11-19T13:10:38.447' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900420, N'Merissa', N'Tomblin', N'562-579-6900', CAST(N'2019-11-19T13:10:38.460' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900421, N'Golda', N'Kaniecki', N'732-628-9909', CAST(N'2019-11-19T13:10:38.473' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900422, N'Catarina', N'Gleich', N'973-210-3994', CAST(N'2019-11-19T13:10:38.490' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900423, N'Virgie', N'Kiel', N'303-776-7548', CAST(N'2019-11-19T13:10:38.500' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900424, N'Jolene', N'Ostolaza', N'757-682-7116', CAST(N'2019-11-19T13:10:38.517' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900425, N'Keneth', N'Borgman', N'602-919-4211', CAST(N'2019-11-19T13:10:38.530' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900426, N'Rikki', N'Nayar', N'305-968-9487', CAST(N'2019-11-19T13:10:38.543' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900427, N'Elke', N'Sengbusch', N'602-896-2993', CAST(N'2019-11-19T13:10:38.560' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900428, N'Hoa', N'Sarao', N'386-526-7800', CAST(N'2019-11-19T13:10:38.573' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900429, N'Trinidad', N'Mcrae', N'415-331-9634', CAST(N'2019-11-19T13:10:38.587' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900430, N'Mari', N'Lueckenbach', N'858-793-9684', CAST(N'2019-11-19T13:10:38.600' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900431, N'Selma', N'Husser', N'201-991-8369', CAST(N'2019-11-19T13:10:38.613' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900432, N'Antione', N'Onofrio', N'909-430-7765', CAST(N'2019-11-19T13:10:38.627' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900433, N'Luisa', N'Jurney', N'617-365-2134', CAST(N'2019-11-19T13:10:38.640' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900434, N'Clorinda', N'Heimann', N'760-291-5497', CAST(N'2019-11-19T13:10:38.657' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900435, N'Dick', N'Wenzinger', N'310-510-9713', CAST(N'2019-11-19T13:10:38.670' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900436, N'Ahmed', N'Angalich', N'717-528-8996', CAST(N'2019-11-19T13:10:38.683' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900437, N'Iluminada', N'Ohms', N'480-293-2882', CAST(N'2019-11-19T13:10:38.700' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900438, N'Joanna', N'Leinenbach', N'561-470-4574', CAST(N'2019-11-19T13:10:38.713' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900439, N'Caprice', N'Suell', N'615-246-1824', CAST(N'2019-11-19T13:10:38.727' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900440, N'Stephane', N'Myricks', N'859-717-7638', CAST(N'2019-11-19T13:10:38.740' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900441, N'Quentin', N'Swayze', N'734-561-6170', CAST(N'2019-11-19T13:10:38.753' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900442, N'Annmarie', N'Castros', N'936-751-7961', CAST(N'2019-11-19T13:10:38.767' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900443, N'Shonda', N'Greenbush', N'973-482-2430', CAST(N'2019-11-19T13:10:38.780' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900444, N'Cecil', N'Lapage', N'201-693-3967', CAST(N'2019-11-19T13:10:38.797' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900445, N'Jeanice', N'Claucherty', N'305-988-4162', CAST(N'2019-11-19T13:10:38.810' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900446, N'Josphine', N'Villanueva', N'931-553-9774', CAST(N'2019-11-19T13:10:38.823' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900447, N'Daniel', N'Perruzza', N'714-771-3880', CAST(N'2019-11-19T13:10:38.840' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900448, N'Cassi', N'Wildfong', N'847-633-3216', CAST(N'2019-11-19T13:10:38.853' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900449, N'Britt', N'Galam', N'215-888-3304', CAST(N'2019-11-19T13:10:38.867' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900450, N'Adell', N'Lipkin', N'973-654-1561', CAST(N'2019-11-19T13:10:38.883' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900451, N'Jacqueline', N'Rowling', N'814-865-8113', CAST(N'2019-11-19T13:10:38.897' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900452, N'Lonny', N'Weglarz', N'801-293-9853', CAST(N'2019-11-19T13:10:38.910' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900453, N'Lonna', N'Diestel', N'910-922-3672', CAST(N'2019-11-19T13:10:38.927' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900454, N'Cristal', N'Samara', N'213-975-8026', CAST(N'2019-11-19T13:10:38.940' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900455, N'Kenneth', N'Grenet', N'517-499-2322', CAST(N'2019-11-19T13:10:38.953' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900456, N'Elli', N'Mclaird', N'315-818-2638', CAST(N'2019-11-19T13:10:38.970' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900457, N'Alline', N'Jeanty', N'574-656-2800', CAST(N'2019-11-19T13:10:38.983' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900458, N'Sharika', N'Eanes', N'407-312-1691', CAST(N'2019-11-19T13:10:38.997' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900459, N'Nu', N'Mcnease', N'973-751-9003', CAST(N'2019-11-19T13:10:39.010' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900460, N'Daniela', N'Comnick', N'609-200-8577', CAST(N'2019-11-19T13:10:39.027' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900461, N'Cecilia', N'Colaizzo', N'608-382-4541', CAST(N'2019-11-19T13:10:39.040' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900462, N'Leslie', N'Threets', N'914-861-9748', CAST(N'2019-11-19T13:10:39.053' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900463, N'Nan', N'Koppinger', N'336-370-5333', CAST(N'2019-11-19T13:10:39.067' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900464, N'Izetta', N'Dewar', N'410-473-1708', CAST(N'2019-11-19T13:10:39.080' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900465, N'Tegan', N'Arceo', N'732-730-2692', CAST(N'2019-11-19T13:10:39.097' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900466, N'Ruthann', N'Keener', N'830-258-2769', CAST(N'2019-11-19T13:10:39.110' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900467, N'Joni', N'Breland', N'847-519-5906', CAST(N'2019-11-19T13:10:39.123' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900468, N'Vi', N'Rentfro', N'732-605-4781', CAST(N'2019-11-19T13:10:39.137' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900469, N'Colette', N'Kardas', N'402-896-5943', CAST(N'2019-11-19T13:10:39.150' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900470, N'Malcolm', N'Tromblay', N'703-221-5602', CAST(N'2019-11-19T13:10:39.167' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900471, N'Ryan', N'Harnos', N'972-558-1665', CAST(N'2019-11-19T13:10:39.180' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900472, N'Jess', N'Chaffins', N'212-510-4633', CAST(N'2019-11-19T13:10:39.193' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900473, N'Sharen', N'Bourbon', N'516-816-1541', CAST(N'2019-11-19T13:10:39.210' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900474, N'Nickolas', N'Juvera', N'352-598-8301', CAST(N'2019-11-19T13:10:39.220' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900475, N'Gary', N'Nunlee', N'317-542-6023', CAST(N'2019-11-19T13:10:39.237' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900476, N'Diane', N'Devreese', N'816-557-9673', CAST(N'2019-11-19T13:10:39.250' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900477, N'Roslyn', N'Chavous', N'601-234-9632', CAST(N'2019-11-19T13:10:39.263' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900478, N'Glory', N'Schieler', N'325-869-2649', CAST(N'2019-11-19T13:10:39.280' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900479, N'Rasheeda', N'Sayaphon', N'408-805-4309', CAST(N'2019-11-19T13:10:39.290' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900480, N'Alpha', N'Palaia', N'856-312-2629', CAST(N'2019-11-19T13:10:39.307' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900481, N'Refugia', N'Jacobos', N'510-974-8671', CAST(N'2019-11-19T13:10:39.320' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900482, N'Shawnda', N'Yori', N'407-538-5106', CAST(N'2019-11-19T13:10:39.333' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900483, N'Mona', N'Delasancha', N'307-403-1488', CAST(N'2019-11-19T13:10:39.350' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900484, N'Gilma', N'Liukko', N'516-393-9967', CAST(N'2019-11-19T13:10:39.360' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900485, N'Janey', N'Gabisi', N'608-967-7194', CAST(N'2019-11-19T13:10:39.377' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900486, N'Lili', N'Paskin', N'201-431-2989', CAST(N'2019-11-19T13:10:39.390' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900487, N'Loren', N'Asar', N'570-648-3035', CAST(N'2019-11-19T13:10:39.403' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900488, N'Dorothy', N'Chesterfield', N'858-617-7834', CAST(N'2019-11-19T13:10:39.420' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900489, N'Gail', N'Similton', N'760-616-5388', CAST(N'2019-11-19T13:10:39.433' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900490, N'Catalina', N'Tillotson', N'609-373-3332', CAST(N'2019-11-19T13:10:39.450' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900491, N'Lawrence', N'Lorens', N'401-465-6432', CAST(N'2019-11-19T13:10:39.463' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900492, N'Carlee', N'Boulter', N'785-347-1805', CAST(N'2019-11-19T13:10:39.477' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900493, N'Thaddeus', N'Ankeny', N'916-920-3571', CAST(N'2019-11-19T13:10:39.490' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900494, N'Jovita', N'Oles', N'386-248-4118', CAST(N'2019-11-19T13:10:39.503' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900495, N'Alesia', N'Hixenbaugh', N'202-646-7516', CAST(N'2019-11-19T13:10:39.520' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900496, N'Lai', N'Harabedian', N'415-423-3294', CAST(N'2019-11-19T13:10:39.533' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900497, N'Brittni', N'Gillaspie', N'208-709-1235', CAST(N'2019-11-19T13:10:39.547' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900498, N'Raylene', N'Kampa', N'574-499-1454', CAST(N'2019-11-19T13:10:39.560' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900499, N'Flo', N'Bookamer', N'308-726-2182', CAST(N'2019-11-19T13:10:39.577' AS DateTime), 1)
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900500, N'Jani', N'Biddy', N'206-711-6498', CAST(N'2019-11-19T13:10:39.590' AS DateTime), 1)
GO
INSERT [dbo].[Customer] ([Id], [FirstNm], [LastNm], [Phone], [CreatedOn], [Active]) VALUES (900501, N'Chauncey', N'Motley', N'407-413-4842', CAST(N'2019-11-19T13:10:39.603' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmpId], [FirstNm], [LastNm], [Doj], [Active]) VALUES (808909, N'Amanda', N'John', CAST(N'2019-01-02' AS Date), 1)
INSERT [dbo].[Employee] ([EmpId], [FirstNm], [LastNm], [Doj], [Active]) VALUES (808910, N'Anne', N'Davis', CAST(N'2018-02-02' AS Date), 1)
INSERT [dbo].[Employee] ([EmpId], [FirstNm], [LastNm], [Doj], [Active]) VALUES (808911, N'Mark', N'Ellis', CAST(N'2017-03-03' AS Date), 1)
INSERT [dbo].[Employee] ([EmpId], [FirstNm], [LastNm], [Doj], [Active]) VALUES (808912, N'Julian', N'Berry', CAST(N'2019-04-04' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Employee] OFF
SET IDENTITY_INSERT [dbo].[Extras] ON 

INSERT [dbo].[Extras] ([Id], [Name], [Active]) VALUES (1, N'Wings', 1)
INSERT [dbo].[Extras] ([Id], [Name], [Active]) VALUES (2, N'Bread', 1)
INSERT [dbo].[Extras] ([Id], [Name], [Active]) VALUES (3, N'2 Litre Soda', 1)
SET IDENTITY_INSERT [dbo].[Extras] OFF
SET IDENTITY_INSERT [dbo].[OrderDst] ON 

INSERT [dbo].[OrderDst] ([Id], [Name], [Active]) VALUES (1, N'Takeout', 1)
INSERT [dbo].[OrderDst] ([Id], [Name], [Active]) VALUES (2, N'Dine In', 1)
INSERT [dbo].[OrderDst] ([Id], [Name], [Active]) VALUES (3, N'Delivery', 1)
SET IDENTITY_INSERT [dbo].[OrderDst] OFF
SET IDENTITY_INSERT [dbo].[OrderSrc] ON 

INSERT [dbo].[OrderSrc] ([Id], [Name], [Active]) VALUES (2, N'Mobile App', 1)
INSERT [dbo].[OrderSrc] ([Id], [Name], [Active]) VALUES (3, N'Website', 1)
INSERT [dbo].[OrderSrc] ([Id], [Name], [Active]) VALUES (4, N'Phone', 1)
INSERT [dbo].[OrderSrc] ([Id], [Name], [Active]) VALUES (5, N'In-house', 1)
SET IDENTITY_INSERT [dbo].[OrderSrc] OFF
SET IDENTITY_INSERT [dbo].[PizzaCrust] ON 

INSERT [dbo].[PizzaCrust] ([Id], [Name], [Active]) VALUES (1, N'Thin', 1)
INSERT [dbo].[PizzaCrust] ([Id], [Name], [Active]) VALUES (2, N'Thick', 1)
INSERT [dbo].[PizzaCrust] ([Id], [Name], [Active]) VALUES (3, N'Deep', 1)
INSERT [dbo].[PizzaCrust] ([Id], [Name], [Active]) VALUES (4, N'Cheese', 1)
INSERT [dbo].[PizzaCrust] ([Id], [Name], [Active]) VALUES (5, N'Stuffed', 1)
SET IDENTITY_INSERT [dbo].[PizzaCrust] OFF
SET IDENTITY_INSERT [dbo].[PizzaSize] ON 

INSERT [dbo].[PizzaSize] ([Id], [Name], [Active]) VALUES (1, N'Small', 1)
INSERT [dbo].[PizzaSize] ([Id], [Name], [Active]) VALUES (2, N'Medium', 1)
INSERT [dbo].[PizzaSize] ([Id], [Name], [Active]) VALUES (3, N'Large', 1)
INSERT [dbo].[PizzaSize] ([Id], [Name], [Active]) VALUES (4, N'Party', 1)
SET IDENTITY_INSERT [dbo].[PizzaSize] OFF
SET IDENTITY_INSERT [dbo].[PizzaTopping] ON 

INSERT [dbo].[PizzaTopping] ([Id], [Name], [Active]) VALUES (1, N'Cheese', 1)
INSERT [dbo].[PizzaTopping] ([Id], [Name], [Active]) VALUES (2, N'Pepperoni', 1)
INSERT [dbo].[PizzaTopping] ([Id], [Name], [Active]) VALUES (3, N'Mushrooms', 1)
INSERT [dbo].[PizzaTopping] ([Id], [Name], [Active]) VALUES (4, N'Onions', 1)
INSERT [dbo].[PizzaTopping] ([Id], [Name], [Active]) VALUES (5, N'Sausage', 1)
INSERT [dbo].[PizzaTopping] ([Id], [Name], [Active]) VALUES (6, N'Bacon', 1)
INSERT [dbo].[PizzaTopping] ([Id], [Name], [Active]) VALUES (7, N'Pineapple', 1)
INSERT [dbo].[PizzaTopping] ([Id], [Name], [Active]) VALUES (8, N'Black olives', 1)
INSERT [dbo].[PizzaTopping] ([Id], [Name], [Active]) VALUES (9, N'Spinach', 1)
INSERT [dbo].[PizzaTopping] ([Id], [Name], [Active]) VALUES (10, N'Green peppers', 1)
SET IDENTITY_INSERT [dbo].[PizzaTopping] OFF
SET IDENTITY_INSERT [dbo].[Store] ON 

INSERT [dbo].[Store] ([Id], [Name], [Franchise], [Zipcode], [Since], [Phone], [Active]) VALUES (3000, N'Mayfield Pizza', N'Y', N'44124', CAST(N'2015-11-19T00:00:00.000' AS DateTime), N'9098087077', 1)
INSERT [dbo].[Store] ([Id], [Name], [Franchise], [Zipcode], [Since], [Phone], [Active]) VALUES (3001, N'Aurora Pizza', N'Y', N'44202', CAST(N'2007-05-17T00:00:00.000' AS DateTime), N'1234567890', 1)
SET IDENTITY_INSERT [dbo].[Store] OFF
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Employee] ADD  CONSTRAINT [DF_Employee_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Extras] ADD  CONSTRAINT [DF_Extras_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_OrderDt]  DEFAULT (getdate()) FOR [OrderDt]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_Extras]  DEFAULT ((0)) FOR [Extras]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_UpdatedOn]  DEFAULT (getdate()) FOR [UpdatedOn]
GO
ALTER TABLE [dbo].[Order] ADD  CONSTRAINT [DF_Order_ModBy]  DEFAULT ((1)) FOR [ModBy]
GO
ALTER TABLE [dbo].[OrderDst] ADD  CONSTRAINT [DF_OrderDestination_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[OrderExtra] ADD  CONSTRAINT [DF_OrderExtra_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[PizzaCrust] ADD  CONSTRAINT [DF_Crust_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[PizzaSize] ADD  CONSTRAINT [DF_Size_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[PizzaTopping] ADD  CONSTRAINT [DF_Topping_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Store] ADD  CONSTRAINT [DF_Store_Franchise]  DEFAULT ('Y') FOR [Franchise]
GO
ALTER TABLE [dbo].[Store] ADD  CONSTRAINT [DF_Store_Active]  DEFAULT ((1)) FOR [Active]
GO
