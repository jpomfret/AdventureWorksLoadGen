-- READ
SELECT p.Name AS ProductName, sum((OrderQty * UnitPrice) * (1.0 - UnitPriceDiscount)) as TotalRevenue
FROM Production.Product AS p
INNER JOIN Sales.SalesOrderDetailEnlarged AS sod
ON p.ProductID = sod.ProductID
group by p.Name
ORDER BY ProductName ASC;