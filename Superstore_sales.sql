--- Queries Used for Project

SELECT TOP (1000) [Row_ID]
      ,[Order_ID]
      ,[Order_Date]
      ,[Ship_Date]
      ,[Ship_Mode]
      ,[Customer_ID]
      ,[Customer_Name]
      ,[Segment]
      ,[Country]
      ,[City]
      ,[State]
      ,[Postal_Code]
      ,[Region]
      ,[Product_ID]
      ,[Category]
      ,[Sub_Category]
      ,[Product_Name]
      ,[Sales]
  FROM [MyProject].[dbo].[Superstore_sales]

  ---Total Sales Revenue
  SELECT SUM(Sales) AS TotalSales FROM Superstore_sales;


  ---Total Customer
  SELECT COUNT(Customer_ID) AS TotalCustomers FROM Superstore_sales;


  ---Average Order Size
    SELECT 
  AVG(Sales) AS AverageOrderSize
FROM 
  Superstore_sales;



  ---Sales Month by Month
  SELECT 
  YEAR(Order_Date) AS OrderYear, MONTH(Order_Date) AS OrderMonth,
  SUM(Sales) AS MonthlySales FROM Superstore_sales
  GROUP BY 
  YEAR(Order_Date), MONTH(Order_Date)
  ORDER BY
  OrderYear, OrderMonth;


  ---Sales Year by Year
  SELECT
  YEAR(Order_Date) AS OrderYear,
  SUM(Sales) AS Annualsales
  FROM Superstore_sales
  GROUP BY
  YEAR(Order_date)
  ORDER BY
  OrderYear;


  ---Sales by Category
  SELECT
  Category,
  SUM(Sales) AS TotalSales
  FROM Superstore_sales
  GROUP BY
  Category
  ORDER BY	
  TotalSales DESC;


  ---Sales by Sub-Category
  SELECT
  Sub_Category,
  SUM(Sales) AS TotalSales
  FROM Superstore_sales
  GROUP BY
  Sub_Category
  ORDER BY	
  TotalSales DESC;


  ---Top 10 Customers by Sales
  SELECT TOP 10
  Customer_Name,
  SUM(Sales) AS TotalSpend
  FROM
  Superstore_sales
  GROUP BY
  Customer_Name
  ORDER BY
  TotalSpend DESC;


---SaleS by Customer Segment
  SELECT 
  Segment,
  SUM(Sales) AS TotalSales
FROM 
  Superstore_sales
GROUP BY 
  Segment
ORDER BY 
  TotalSales DESC;




---Geographical Analysis
---Sales by Region
  SELECT TOP 10
  Region,
  SUM(Sales) AS TotalSales
FROM 
  Superstore_sales
GROUP BY 
  Region
ORDER BY 
  TotalSales DESC;


 ---Sales by State
  SELECT TOP 10
  State,
  SUM(Sales) AS TotalSales
FROM 
  Superstore_sales
GROUP BY 
  State
ORDER BY 
  TotalSales DESC;



  ---Sales by City
  SELECT TOP 10
  City,
  SUM(Sales) AS TotalSales
FROM 
  Superstore_sales
GROUP BY 
  City
ORDER BY 
  TotalSales DESC;



  ---Impact of Shipping Mode
  SELECT 
  Ship_Mode,
  SUM(Sales) AS TotalSales,
  AVG(DATEDIFF(day, Order_Date, Ship_Date)) AS AverageDeliveryTime
FROM 
  Superstore_sales
GROUP BY 
  Ship_Mode
ORDER BY 
  TotalSales DESC;



  ---Product Analysis
---Top Sellers by Total Sales
SELECT TOP 10
  Product_ID,
  SUM(Sales) AS TotalSales
FROM 
  Superstore_sales
GROUP BY 
  Product_ID
ORDER BY 
  TotalSales DESC;



  --- Seasonality and Trends

---Sales Trends Over Time

SELECT 
  YEAR(Order_Date) AS OrderYear,
  MONTH(Order_Date) AS OrderMonth,
  SUM(Sales) AS MonthlySales
FROM 
  Superstore_sales
GROUP BY 
  YEAR(Order_Date), MONTH(Order_Date)
ORDER BY 
  OrderYear, OrderMonth;








