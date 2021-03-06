USE [Billing]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 31/03/2021 1:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[IdClient] [int] IDENTITY(1,1) NOT NULL,
	[Names] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Document] [nvarchar](max) NULL,
	[RegisterDate] [datetime] NOT NULL,
	[BirthDate] [datetime] NOT NULL,
	[IdDocumentType] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Client] PRIMARY KEY CLUSTERED 
(
	[IdClient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([IdClient], [Names], [LastName], [Document], [RegisterDate], [BirthDate], [IdDocumentType]) VALUES (1, N'David Rodrigo', N'Vanegas', N'1032416211', CAST(N'2021-03-27T10:43:21.867' AS DateTime), CAST(N'1980-01-01T00:00:00.000' AS DateTime), 4)
INSERT [dbo].[Client] ([IdClient], [Names], [LastName], [Document], [RegisterDate], [BirthDate], [IdDocumentType]) VALUES (2, N'Carlos', N'Contreras', N'1032416221', CAST(N'2021-03-27T10:43:21.867' AS DateTime), CAST(N'1981-01-01T00:00:00.000' AS DateTime), 5)
INSERT [dbo].[Client] ([IdClient], [Names], [LastName], [Document], [RegisterDate], [BirthDate], [IdDocumentType]) VALUES (3, N'Paola', N'Castro', N'1032416231', CAST(N'2021-03-27T10:43:21.867' AS DateTime), CAST(N'1982-01-01T00:00:00.000' AS DateTime), 6)
INSERT [dbo].[Client] ([IdClient], [Names], [LastName], [Document], [RegisterDate], [BirthDate], [IdDocumentType]) VALUES (4, N'Edwin', N'Rivera', N'1032416214', CAST(N'2021-03-27T10:43:21.867' AS DateTime), CAST(N'1983-01-01T00:00:00.000' AS DateTime), 7)
INSERT [dbo].[Client] ([IdClient], [Names], [LastName], [Document], [RegisterDate], [BirthDate], [IdDocumentType]) VALUES (5, N'Andres', N'Mora', N'1032416230', CAST(N'2021-03-27T10:43:21.867' AS DateTime), CAST(N'1984-01-01T00:00:00.000' AS DateTime), 8)
INSERT [dbo].[Client] ([IdClient], [Names], [LastName], [Document], [RegisterDate], [BirthDate], [IdDocumentType]) VALUES (6, N'David ', N'Vanegas', N'103241632', CAST(N'2021-01-03T00:00:00.000' AS DateTime), CAST(N'1988-07-14T00:00:00.000' AS DateTime), 9)
INSERT [dbo].[Client] ([IdClient], [Names], [LastName], [Document], [RegisterDate], [BirthDate], [IdDocumentType]) VALUES (1002, N'ultimo', N'usuario', N'27878789', CAST(N'2021-03-30T16:36:32.600' AS DateTime), CAST(N'2021-03-30T05:00:00.000' AS DateTime), 1003)
SET IDENTITY_INSERT [dbo].[Client] OFF
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Client_dbo.DocumentType_IdDocumentType] FOREIGN KEY([IdDocumentType])
REFERENCES [dbo].[DocumentType] ([IdDocument])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_dbo.Client_dbo.DocumentType_IdDocumentType]
GO
