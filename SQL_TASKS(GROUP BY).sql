/*Find the number of customers in each country.*/
SELECT Country,COUNT(*) AS customer_count 
FROM Customers_Data
GROUP BY Country

SELECT * FROM Customers_Data

/*Find the total amount spent by each customer*/
SELECT Customer_id,SUM(Amount) AS total_spent 
FROM Orders_Data
GROUP BY Customer_id

SELECT * FROM Orders_Data

/*Find the average order amount for each customer.*/
SELECT Customer_id,AVG(Amount) AS average_order_amount 
FROM Orders_Data
GROUP BY Customer_id

/*Find how many orders each customer has placed.*/
SELECT Customer_id,COUNT(Order_id) AS TotaL_orders 
FROM Orders_Data
GROUP BY Customer_id

/*Find countries having more than one customer.*/
SELECT Country,COUNT(*) AS Total_customers 
FROM Customers_Data
GROUP BY Country 
HAVING COUNT(*)>1

/*Find customers who have placed more than one order.*/
SELECT Customer_id,COUNT(Order_id) AS Total_orders 
FROM Orders_Data
GROUP BY Customer_id 
HAVING COUNT(Order_id)>1