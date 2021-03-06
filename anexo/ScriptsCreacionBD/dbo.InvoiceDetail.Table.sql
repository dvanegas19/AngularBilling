USE [Billing]
GO
/****** Object:  Table [dbo].[InvoiceDetail]    Script Date: 31/03/2021 1:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceDetail](
	[IdDetailInvoice] [int] IDENTITY(1,1) NOT NULL,
	[IdInvoice] [int] NOT NULL,
	[RegistrationDate] [datetime] NOT NULL,
	[Unit] [float] NOT NULL,
	[IdProduct] [int] NOT NULL,
 CONSTRAINT [PK_dbo.InvoiceDetail] PRIMARY KEY CLUSTERED 
(
	[IdDetailInvoice] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[InvoiceDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InvoiceDetail_dbo.Invoice_IdInvoice] FOREIGN KEY([IdInvoice])
REFERENCES [dbo].[Invoice] ([IdInvoice])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InvoiceDetail] CHECK CONSTRAINT [FK_dbo.InvoiceDetail_dbo.Invoice_IdInvoice]
GO
ALTER TABLE [dbo].[InvoiceDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.InvoiceDetail_dbo.Product_IdProduct] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[InvoiceDetail] CHECK CONSTRAINT [FK_dbo.InvoiceDetail_dbo.Product_IdProduct]
GO
