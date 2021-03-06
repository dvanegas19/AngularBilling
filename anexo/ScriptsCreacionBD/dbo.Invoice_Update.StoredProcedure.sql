USE [Billing]
GO
/****** Object:  StoredProcedure [dbo].[Invoice_Update]    Script Date: 31/03/2021 1:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Invoice_Update]
    @IdInvoice [int],
    @RegistrationDate [datetime],
    @Total [decimal](18, 2),
    @Iva [float],
    @IdClient [int]
AS
BEGIN
    UPDATE [dbo].[Invoice]
    SET [RegistrationDate] = @RegistrationDate, [Total] = @Total, [Iva] = @Iva, [IdClient] = @IdClient
    WHERE (([IdInvoice] = @IdInvoice) AND ([IdClient] = @IdClient))
END
GO
