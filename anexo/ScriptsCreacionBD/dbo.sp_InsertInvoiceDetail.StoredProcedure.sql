USE [Billing]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertInvoiceDetail]    Script Date: 31/03/2021 1:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertInvoiceDetail]
    @IdInvoice [int],
    @RegistrationDate [datetime],
    @Unit [float],
    @IdProduct [int]
AS
BEGIN
    INSERT [dbo].[InvoiceDetail]([IdInvoice], [RegistrationDate], [Unit], [IdProduct])
    VALUES (@IdInvoice, @RegistrationDate, @Unit, @IdProduct)
    
    DECLARE @IdDetailInvoice int
    SELECT @IdDetailInvoice = [IdDetailInvoice]
    FROM [dbo].[InvoiceDetail]
    WHERE @@ROWCOUNT > 0 AND [IdDetailInvoice] = scope_identity()
    
    SELECT t0.[IdDetailInvoice]
    FROM [dbo].[InvoiceDetail] AS t0
    WHERE @@ROWCOUNT > 0 AND t0.[IdDetailInvoice] = @IdDetailInvoice
END
GO
