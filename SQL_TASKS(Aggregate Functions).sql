/*Count the total number of customers.*/
SELECT COUNT(*) AS Total_customers FROM Customers_Data

/*Find the average age of customers.*/
SELECT AVG(Age) AS Avg_age FROM Customers_Data

/*Find the maximum order amount.*/
SELECT MAX(Amount) AS Max_order_amount FROM Orders_Data

/*Find the minimum order amount.*/
SELECT MIN(Amount) AS Min_order_amount FROM Orders_Data

/*Find the total amount of all orders.*/
SELECT SUM(Amount) AS Total_Amount FROM Orders_Data

/*Count how many customers belong to each country.*/
SELECT Country, COUNT(*) AS Customer_count FROM Customers_Data GROUP BY Country

/*Find the total order amount for each customer*/
SELECT Customer_id,SUM(Amount) AS Total_order_amount FROM Orders_Data GROUP BY Customer_id