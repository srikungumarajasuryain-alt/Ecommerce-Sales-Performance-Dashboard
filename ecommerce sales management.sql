USE ecommerce_dashboard;
SELECT COUNT(*) AS Total_Customers
FROM customers;
USE ecommerce_dashboard;

SELECT COUNT(*) AS Total_Customers
FROM customers;

SELECT COUNT(*) AS Total_Products
FROM products;

SELECT COUNT(*) AS Total_Products
FROM products;

SELECT COUNT(*) AS Total_Orders


FROM orders;
SELECT
    ROUND(SUM(Sales),2) AS Total_Revenue
FROM orders;

SELECT
    ROUND(SUM(Profit),2) AS Total_Profit
FROM orders;
SELECT
    ROUND(SUM(Cost),2) AS Total_Cost
FROM orders;

SELECT
    ROUND(AVG(Sales),2) AS Average_Order_Value
FROM orders;

SELECT
    ROUND((SUM(Profit)/SUM(Sales))*100,2) AS Profit_Margin
FROM orders;
SELECT
    MAX(Sales) AS Highest_Order
FROM orders;

SELECT
    MIN(Sales) AS Lowest_Order
FROM orders;

SELECT
    Segment,
    COUNT(*) AS Total_Customers
FROM customers
GROUP BY Segment
ORDER BY Total_Customers DESC;

SELECT
    Gender,
    COUNT(*) AS Total_Customers
FROM customers
GROUP BY Gender;
SELECT
    City,
    COUNT(*) AS Customers
FROM customers
GROUP BY City
ORDER BY Customers DESC
LIMIT 10;
SELECT
    PaymentMethod,
    COUNT(*) AS Total_Orders
FROM orders
GROUP BY PaymentMethod
ORDER BY Total_Orders DESC;
SELECT
    OrderStatus,
    COUNT(*) AS Total
FROM orders
GROUP BY OrderStatus;
SELECT
    p.ProductName,
    SUM(o.Quantity) AS Total_Quantity
FROM products p
JOIN orders o
ON p.ProductID = o.ProductID
GROUP BY p.ProductName
ORDER BY Total_Quantity DESC
LIMIT 10;
SELECT
    p.ProductName,
    ROUND(SUM(o.Sales),2) AS Revenue
FROM products p
JOIN orders o
ON p.ProductID = o.ProductID
GROUP BY p.ProductName
ORDER BY Revenue DESC
LIMIT 10;
SELECT
    c.CustomerName,
    ROUND(SUM(o.Sales),2) AS Revenue
FROM customers c
JOIN orders o
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName
ORDER BY Revenue DESC
LIMIT 10;
show databases;

USE salesmanagement;

SHOW TABLES;