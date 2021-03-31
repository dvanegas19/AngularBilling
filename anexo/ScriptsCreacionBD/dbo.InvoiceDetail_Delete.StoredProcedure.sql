USE [Billing]
GO
/****** Object:  StoredProcedure [dbo].[InvoiceDetail_Delete]    Script Date: 31/03/2021 1:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InvoiceDetail_Delete]
    @IdDetailInvoice [int],
    @IdProduct [int]
AS
BEGIN
    DELETE [dbo].[InvoiceDetail]
    WHERE (([IdDetailInvoice] = @IdDetailInvoice) AND ([IdProduct] = @IdProduct))
END
GO
