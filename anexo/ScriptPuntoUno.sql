-- 1. Obtener la lista de precios de todos los productos

SELECT [IdProduct], [Description], [Price] FROM [dbo].[Product] ORDER BY DESCRIPTION

-- 2. Obtener la lista de productos cuya existencia en el inventario haya llegado al mínimo permitido (5 unidades)


SELECT [IdProduct], [Description], [Price], [Unit], [IVA], [Activo] FROM [dbo].[Product] WHERE UNIT < 6 

-- 3. 

SELECT invoice.RegistrationDate, client.Document, client.Names, client.LastName  FROM 
[dbo].[Client] client INNER JOIN [dbo].[Invoice] invoice ON client.IdClient = invoice.IdClient
WHERE 
invoice.RegistrationDate BETWEEN '20000201' AND '20000525'
and DATEDIFF(yy,GETDATE(), client.BirthDate) < 36


-- 4.
SELECT   product.[IdProduct], product.Description, sum(PRICE) AS Total FROM [dbo].[InvoiceDetail] invoice INNER JOIN  [dbo].[Product] product
ON invoice.IdProduct = product.IdProduct where YEAR([RegistrationDate])='2000'
GROUP BY  product.[IdProduct], product.Description

-- 5. 