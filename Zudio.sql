SELECT * FROM Zudio_sales_data;


------KPI-------

----1-----
SELECT SUM(Price) AS Total_revenue
FROM Zudio_sales_data;

----2----
SELECT SUM(Quantity) AS Total_quantity
FROM Zudio_sales_data;

----3------
SELECT 
    COUNT(*) AS Total_Orders
FROM Zudio_sales_data;

----4----------
SELECT 
    SUM(Price) * 1.0 / COUNT(*) AS Avg_Order_Value
FROM Zudio_sales_data;

---5----
SELECT 
    SUM(Quantity) * 1.0 / COUNT(*) AS Avg_Quantity_per_Order
FROM Zudio_sales_data;

---PIVOT TABLES AND PIVOT CHARTS QUERIES----

-----1----
SELECT FORMAT(Order_Date, 'yyyy-MM') AS Month,
	   SUM(Price) AS Total_Sales
FROM Zudio_sales_data
GROUP BY FORMAT(Order_Date, 'yyyy-MM')
ORDER BY Month;

-----2----
SELECT 
    Category,
    SUM(Quantity) AS Total_Qty_Sold,
    SUM(Price) AS Total_Sales
FROM Zudio_sales_data
GROUP BY Category
ORDER BY Total_Sales DESC;

-------3---------
SELECT TOP 5
    Clothing_Type,
    SUM(Quantity) AS Total_Quantity
FROM Zudio_sales_data
GROUP BY Clothing_Type
ORDER BY Total_Quantity DESC;

-----4-----------
SELECT 
    State,
    SUM(Price) AS Total_Sales
FROM Zudio_sales_data
GROUP BY State
ORDER BY Total_Sales DESC;

------5----------
SELECT 
    Clothing_Type,
    SUM(Price) AS Total_Sales
FROM Zudio_sales_data
GROUP BY Clothing_Type
ORDER BY Total_Sales DESC;

------6----------
SELECT 
    AVG(Price) AS Avg_Billing_Amount
FROM Zudio_sales_data;

-------7--------
SELECT 
    Clothing_Type,
    SUM(Sales_Profit) AS Profit
FROM Zudio_sales_data
GROUP BY Clothing_Type
ORDER BY Profit DESC;

--------8-------
SELECT 
    Store_Type,
    SUM(Price) AS Total_Sales
FROM Zudio_sales_data
GROUP BY Store_Type;
