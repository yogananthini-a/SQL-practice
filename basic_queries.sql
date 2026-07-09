-- select all rows on orders table
SELECT * FROM Orders;

-- return rows which contains amount greater than 1000
SELECT *
FROM Orders
WHERE amount > 1000;

-- calculate the total amount for each year
SELECT YEAR(order_date), SUM(amount) AS Total_Sales
FROM Orders
GROUP BY YEAR(order_date);
