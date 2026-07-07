SELECT * FROM Orders;

SELECT *
FROM Orders
WHERE amount > 1000;

SELECT YEAR(order_date), SUM(amount) AS Total_Sales
FROM Orders
GROUP BY YEAR(order_date);
