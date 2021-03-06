USE [Billing]
GO
/****** Object:  Table [dbo].[DocumentType]    Script Date: 31/03/2021 1:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentType](
	[IdDocument] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.DocumentType] PRIMARY KEY CLUSTERED 
(
	[IdDocument] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[DocumentType] ON 

INSERT [dbo].[DocumentType] ([IdDocument], [Description]) VALUES (1, N'Cedula Ciudadania')
INSERT [dbo].[DocumentType] ([IdDocument], [Description]) VALUES (2, N'Cedula Extrangeria')
INSERT [dbo].[DocumentType] ([IdDocument], [Description]) VALUES (3, N'Pasaporte')
INSERT [dbo].[DocumentType] ([IdDocument], [Description]) VALUES (4, NULL)
INSERT [dbo].[DocumentType] ([IdDocument], [Description]) VALUES (5, NULL)
INSERT [dbo].[DocumentType] ([IdDocument], [Description]) VALUES (6, NULL)
INSERT [dbo].[DocumentType] ([IdDocument], [Description]) VALUES (7, NULL)
INSERT [dbo].[DocumentType] ([IdDocument], [Description]) VALUES (8, NULL)
INSERT [dbo].[DocumentType] ([IdDocument], [Description]) VALUES (9, N'Cedula')
INSERT [dbo].[DocumentType] ([IdDocument], [Description]) VALUES (1003, NULL)
SET IDENTITY_INSERT [dbo].[DocumentType] OFF
