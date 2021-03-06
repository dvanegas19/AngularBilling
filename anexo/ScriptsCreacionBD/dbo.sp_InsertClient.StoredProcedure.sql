USE [Billing]
GO
/****** Object:  StoredProcedure [dbo].[sp_InsertClient]    Script Date: 31/03/2021 1:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_InsertClient]
    @Names [nvarchar](max),
    @LastName [nvarchar](max),
    @Document [nvarchar](max),
    @RegisterDate [datetime],
    @BirthDate [datetime],
    @IdDocument [int]
AS
BEGIN
    INSERT [dbo].[Client]([Names], [LastName], [Document], [RegisterDate], [BirthDate], [IdDocumentType])
    VALUES (@Names, @LastName, @Document, @RegisterDate, @BirthDate, @IdDocument)
    
    DECLARE @IdClient int
    SELECT @IdClient = [IdClient]
    FROM [dbo].[Client]
    WHERE @@ROWCOUNT > 0 AND [IdClient] = scope_identity()
    
    SELECT t0.[IdClient] AS IdDetailInvoice
    FROM [dbo].[Client] AS t0
    WHERE @@ROWCOUNT > 0 AND t0.[IdClient] = @IdClient
END
GO
