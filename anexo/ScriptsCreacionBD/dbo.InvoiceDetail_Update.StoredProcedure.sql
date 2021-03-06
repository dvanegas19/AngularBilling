USE [Billing]
GO
/****** Object:  StoredProcedure [dbo].[InvoiceDetail_Update]    Script Date: 31/03/2021 1:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InvoiceDetail_Update]
    @IdDetailInvoice [int],
    @IdInvoice [int],
    @RegistrationDate [datetime],
    @Unit [float],
    @IdProduct [int]
AS
BEGIN
    UPDATE [dbo].[InvoiceDetail]
    SET [IdInvoice] = @IdInvoice, [RegistrationDate] = @RegistrationDate, [Unit] = @Unit, [IdProduct] = @IdProduct
    WHERE (([IdDetailInvoice] = @IdDetailInvoice) AND ([IdProduct] = @IdProduct))
END
GO
