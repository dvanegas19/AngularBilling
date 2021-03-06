USE [Billing]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 31/03/2021 1:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[IdInvoice] [int] IDENTITY(1,1) NOT NULL,
	[RegistrationDate] [datetime] NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
	[Iva] [float] NOT NULL,
	[IdClient] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Invoice] PRIMARY KEY CLUSTERED 
(
	[IdInvoice] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Invoice] ON 

INSERT [dbo].[Invoice] ([IdInvoice], [RegistrationDate], [Total], [Iva], [IdClient]) VALUES (1, CAST(N'2021-03-31T00:11:13.410' AS DateTime), CAST(2500000.00 AS Decimal(18, 2)), 475000, 1)
SET IDENTITY_INSERT [dbo].[Invoice] OFF
ALTER TABLE [dbo].[Invoice]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Invoice_dbo.Client_IdClient] FOREIGN KEY([IdClient])
REFERENCES [dbo].[Client] ([IdClient])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Invoice] CHECK CONSTRAINT [FK_dbo.Invoice_dbo.Client_IdClient]
GO
