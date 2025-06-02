sql

SELECT OrderID, CustomerName, LTRIM(RTRIM(value)) AS Product
FROM ProductDetail
CROSS APPLY STRING_SPLIT(Products, ',');

-- Orders: OrderID -> CustomerName
CREATE TABLE Orders AS
SELECT DISTINCT OrderID, CustomerName
FROM OriginalTable;

-- OrderDetails: OrderID + Product
CREATE TABLE OrderDetails AS
SELECT OrderID, Product
FROM OriginalTable;
