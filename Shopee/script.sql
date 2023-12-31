USE [Shopee]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 3/4/2023 9:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NULL,
	[image] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/4/2023 9:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NULL,
	[image] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 3/4/2023 9:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[subject_name] [nvarchar](255) NULL,
	[note] [nvarchar](355) NULL,
	[user_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order_Details]    Script Date: 3/4/2023 9:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Details](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[product_id] [int] NULL,
	[price] [decimal](18, 0) NULL,
	[quantity] [int] NULL,
	[total_money] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/4/2023 9:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[order_date] [datetime] NULL,
	[total_money] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/4/2023 9:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NULL,
	[title] [nvarchar](255) NULL,
	[price] [decimal](18, 0) NULL,
	[quantity] [int] NULL,
	[discount] [int] NULL,
	[description] [nvarchar](2000) NULL,
	[status] [int] NULL,
	[brand_id] [int] NULL,
	[image] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/4/2023 9:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/4/2023 9:45:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](255) NULL,
	[password] [nvarchar](255) NULL,
	[nickname] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[phone_number] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
	[role_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (1, N'Apple', N'image/brand/apple.png')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (2, N'Samsung', N'image/brand/samsung.png')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (3, N'Asus', N'image/brand/asus.png')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (4, N'Dell', N'image/brand/dell.png')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (5, N'Oppo', N'image/brand/oppo.jpg')
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [name], [image]) VALUES (1, N'Laptop', N'image\category\laptop.jpg')
INSERT [dbo].[Category] ([id], [name], [image]) VALUES (2, N'Smartphone', N'image\category\smartphone.png')
INSERT [dbo].[Category] ([id], [name], [image]) VALUES (3, N'Smartwatch', N'image\category\smartwatch.jpeg')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Order_Details] ON 

INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [quantity], [total_money]) VALUES (1, 1, 25, CAST(1000 AS Decimal(18, 0)), 3, CAST(2000 AS Decimal(18, 0)))
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [quantity], [total_money]) VALUES (2, 1, 22, CAST(100 AS Decimal(18, 0)), 2, CAST(200 AS Decimal(18, 0)))
INSERT [dbo].[Order_Details] ([id], [order_id], [product_id], [price], [quantity], [total_money]) VALUES (3, 2, 23, CAST(190 AS Decimal(18, 0)), 2, CAST(380 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Order_Details] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [user_id], [order_date], [total_money]) VALUES (1, 40, CAST(N'2023-03-01T00:00:00.000' AS DateTime), CAST(3200 AS Decimal(18, 0)))
INSERT [dbo].[Orders] ([id], [user_id], [order_date], [total_money]) VALUES (2, 40, CAST(N'2023-03-02T00:00:00.000' AS DateTime), CAST(400 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [category_id], [title], [price], [quantity], [discount], [description], [status], [brand_id], [image]) VALUES (22, 2, N'Ipad9', CAST(100 AS Decimal(18, 0)), 988, 0, N'Đây là ipad cực đẹp', 1, 1, N'image/Product/apple_ipad_9.png')
INSERT [dbo].[Product] ([id], [category_id], [title], [price], [quantity], [discount], [description], [status], [brand_id], [image]) VALUES (23, 1, N'Asus15', CAST(200 AS Decimal(18, 0)), 971, 5, N'Asus siêu mạnh', 1, 3, N'image/Product/asusg15.png')
INSERT [dbo].[Product] ([id], [category_id], [title], [price], [quantity], [discount], [description], [status], [brand_id], [image]) VALUES (24, 1, N'Dell_vostro', CAST(200 AS Decimal(18, 0)), 994, 0, N'Đây là Dell Authentic', 1, 4, N'image/Product/dell_vostro.png')
INSERT [dbo].[Product] ([id], [category_id], [title], [price], [quantity], [discount], [description], [status], [brand_id], [image]) VALUES (25, 2, N'Iphone14', CAST(1000 AS Decimal(18, 0)), 997, 0, N'Iphone 14 chĩnh hãng xịn xò', 1, 1, N'image/Product/iphone_14.png')
INSERT [dbo].[Product] ([id], [category_id], [title], [price], [quantity], [discount], [description], [status], [brand_id], [image]) VALUES (26, 1, N'Mac Air', CAST(2000 AS Decimal(18, 0)), 998, 15, N'Mac Air xách tay', 1, 1, N'image/Product/mac_air.png')
INSERT [dbo].[Product] ([id], [category_id], [title], [price], [quantity], [discount], [description], [status], [brand_id], [image]) VALUES (27, 2, N'Samsung Zflip', CAST(1000 AS Decimal(18, 0)), 997, 10, N'Samsung gập mở thích lắm', 1, 2, N'image/Product/samsung_galaxy.jpg')
INSERT [dbo].[Product] ([id], [category_id], [title], [price], [quantity], [discount], [description], [status], [brand_id], [image]) VALUES (28, 2, N'Samsung A23', CAST(400 AS Decimal(18, 0)), 996, 10, N'Máy mới xịn xò', 1, 2, N'image/Product/samsung_a23.jpg')
INSERT [dbo].[Product] ([id], [category_id], [title], [price], [quantity], [discount], [description], [status], [brand_id], [image]) VALUES (29, 1, N'Asus m515', CAST(1000 AS Decimal(18, 0)), 1000, 0, N'Asus hàng đầu Châu Á', 1, 3, N'image/Product/asus_m515.jpg')
INSERT [dbo].[Product] ([id], [category_id], [title], [price], [quantity], [discount], [description], [status], [brand_id], [image]) VALUES (30, 2, N'Oppo Ren8T', CAST(600 AS Decimal(18, 0)), 999, 2, N'Oppo hàng đầu Việt Nam', 1, 5, N'image/Product/oppo_reno8t.jpg')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[Role] ([id], [name]) VALUES (1, N'admin')
INSERT [dbo].[Role] ([id], [name]) VALUES (2, N'users')
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [username], [password], [nickname], [email], [phone_number], [address], [role_id]) VALUES (36, N'admin', N'123', N'admin', N'admin@gmail.com', N'0123456789', N'Hà Nội', 1)
INSERT [dbo].[Users] ([id], [username], [password], [nickname], [email], [phone_number], [address], [role_id]) VALUES (37, N'user', N'123', N'user', N'user@gmail.com', N'0123456778', N'Ha Noi', 2)
INSERT [dbo].[Users] ([id], [username], [password], [nickname], [email], [phone_number], [address], [role_id]) VALUES (38, N'mai', N'123', N'mai', N'mai@gmal.com', N'0385796764', N'Ha Noi', 2)
INSERT [dbo].[Users] ([id], [username], [password], [nickname], [email], [phone_number], [address], [role_id]) VALUES (39, N'tung', N'123', N'tung', N'tung@gmail.com', N'0123446778', N'Ha Noi', 2)
INSERT [dbo].[Users] ([id], [username], [password], [nickname], [email], [phone_number], [address], [role_id]) VALUES (40, N'khang', N'123', N'khang', N'khang@gmail.com', N'0867115704', N'Ha Noi', 2)
INSERT [dbo].[Users] ([id], [username], [password], [nickname], [email], [phone_number], [address], [role_id]) VALUES (42, N'khang123', N'123', N'khang123', N'khang123@gmail.com', N'0123456789', N'Hà Nội', 2)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[Order_Details]  WITH CHECK ADD FOREIGN KEY([product_id])
REFERENCES [dbo].[Product] ([id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[Users] ([id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([brand_id])
REFERENCES [dbo].[Brands] ([id])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[Category] ([id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[Role] ([id])
GO
