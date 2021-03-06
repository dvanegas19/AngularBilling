USE [Billing]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertInvoice]    Script Date: 31/03/2021 1:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertInvoice]
    @RegistrationDate [datetime],
    @Total [decimal](18, 2),
    @Iva [float],
    @IdClient [int]
AS
BEGIN
    INSERT [dbo].[Invoice]([RegistrationDate], [Total], [Iva], [IdClient])
    VALUES (@RegistrationDate, @Total, @Iva, @IdClient)
    
    DECLARE @IdInvoice int
    SELECT @IdInvoice = [IdInvoice]
    FROM [dbo].[Invoice]
    WHERE @@ROWCOUNT > 0 AND [IdInvoice] = scope_identity()
    
    SELECT t0.[IdInvoice]
    FROM [dbo].[Invoice] AS t0
    WHERE @@ROWCOUNT > 0 AND t0.[IdInvoice] = @IdInvoice
END
GO
