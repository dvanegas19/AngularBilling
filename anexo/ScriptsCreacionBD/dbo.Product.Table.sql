USE [Billing]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 31/03/2021 1:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[IdProduct] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Unit] [float] NOT NULL,
	[IVA] [float] NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.Product] PRIMARY KEY CLUSTERED 
(
	[IdProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([IdProduct], [Description], [Price], [Unit], [IVA], [Activo]) VALUES (1, N'Televisor', CAST(1000000.00 AS Decimal(18, 2)), 10, 19, 1)
INSERT [dbo].[Product] ([IdProduct], [Description], [Price], [Unit], [IVA], [Activo]) VALUES (2, N'Nevera', CAST(1500000.00 AS Decimal(18, 2)), 15, 19, 1)
INSERT [dbo].[Product] ([IdProduct], [Description], [Price], [Unit], [IVA], [Activo]) VALUES (3, N'Lavadora', CAST(800000.00 AS Decimal(18, 2)), 10, 19, 1)
INSERT [dbo].[Product] ([IdProduct], [Description], [Price], [Unit], [IVA], [Activo]) VALUES (4, N'Estufa', CAST(600000.00 AS Decimal(18, 2)), 8, 19, 1)
INSERT [dbo].[Product] ([IdProduct], [Description], [Price], [Unit], [IVA], [Activo]) VALUES (5, N'Equipo De Sonido', CAST(1200000.00 AS Decimal(18, 2)), 10, 19, 1)
SET IDENTITY_INSERT [dbo].[Product] OFF
