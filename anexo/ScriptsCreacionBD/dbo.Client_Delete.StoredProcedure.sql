USE [Billing]
GO
/****** Object:  StoredProcedure [dbo].[Client_Delete]    Script Date: 31/03/2021 1:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Client_Delete]
    @IdClient [int],
    @IdDocumentType [int]
AS
BEGIN
    DELETE [dbo].[Client]
    WHERE (([IdClient] = @IdClient) AND ([IdDocumentType] = @IdDocumentType))
END
GO
