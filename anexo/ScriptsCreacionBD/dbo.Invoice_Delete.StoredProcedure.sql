USE [Billing]
GO
/****** Object:  StoredProcedure [dbo].[Invoice_Delete]    Script Date: 31/03/2021 1:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Invoice_Delete]
    @IdInvoice [int],
    @IdClient [int]
AS
BEGIN
    DELETE [dbo].[Invoice]
    WHERE (([IdInvoice] = @IdInvoice) AND ([IdClient] = @IdClient))
END
GO
