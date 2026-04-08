SELECT *
FROM Superstore;



SELECT
Order_Date, Region, Category, Sub_Category, Sales, Quantity, Discount, Profit
FROM Superstore;


SELECT SUM(Sales) AS TotalRevenue
FROM Superstore;

SELECT SUM(TRY_CAST(Profit AS FLOAT)) AS TotalProfit
FROM Superstore;


SELECT 
    SUM(TRY_CAST(Profit AS FLOAT)) * 1.0 / SUM(Sales) AS ProfitMargin
FROM Superstore;



SELECT 
    YEAR(Order_Date) AS Year,
    SUM(Sales) AS TotalSales
FROM Superstore
GROUP BY YEAR(Order_Date)
ORDER BY Year;


SELECT TOP 10 
    Product_Name,
    SUM(Sales) AS TotalSales
FROM Superstore
GROUP BY Product_Name
ORDER BY TotalSales DESC;


SELECT 
    Category,
    SUM(Sales) AS TotalSales,
    SUM(TRY_CAST(Profit AS FLOAT)) AS TotalProfit
FROM Superstore
GROUP BY Category
ORDER BY TotalSales DESC;


SELECT 
    Region,
    SUM(Sales) AS TotalSales,
    SUM(TRY_CAST(Profit AS FLOAT)) AS TotalProfit
FROM Superstore
GROUP BY Region
ORDER BY TotalSales DESC;


SELECT 
    Discount,
    AVG(TRY_CAST(Profit AS FLOAT)) AS AvgProfit
FROM Superstore
GROUP BY Discount
ORDER BY Discount;




