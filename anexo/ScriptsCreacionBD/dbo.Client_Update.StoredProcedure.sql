USE [Billing]
GO
/****** Object:  StoredProcedure [dbo].[Client_Update]    Script Date: 31/03/2021 1:02:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Client_Update]
    @IdClient [int],
    @Names [nvarchar](max),
    @LastName [nvarchar](max),
    @Document [nvarchar](max),
    @RegisterDate [datetime],
    @BirthDate [datetime],
    @IdDocumentType [int]
AS
BEGIN
    UPDATE [dbo].[Client]
    SET [Names] = @Names, [LastName] = @LastName, [Document] = @Document, [RegisterDate] = @RegisterDate, [BirthDate] = @BirthDate, [IdDocumentType] = @IdDocumentType
    WHERE (([IdClient] = @IdClient) AND ([IdDocumentType] = @IdDocumentType))
END
GO
