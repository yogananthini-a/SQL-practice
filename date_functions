-- 1. Display Order ID, Order Date, Year, Month, Day

SELECT order_id,
       order_date,
       YEAR(order_date) AS Year,
       MONTH(order_date) AS Month,
       DAY(order_date) AS Day
FROM Orders;

-- 2. Display the number of days since each order

SELECT order_id,
       order_date,
       DATEDIFF(CURRENT_DATE, order_date) AS Days_Since_Order
FROM Orders;

-- 3. Display Expected Delivery Date (7 days after order)

SELECT order_id,
       order_date,
       DATE_ADD(order_date, INTERVAL 7 DAY) AS Expected_Delivery_Date
FROM Orders;

-- 4. Display Reminder Date (3 days before order)

SELECT order_id,
       order_date,
       DATE_SUB(order_date, INTERVAL 3 DAY) AS Reminder_Date
FROM Orders;

-- 5. Display orders placed in the year 2025

SELECT *
FROM Orders
WHERE YEAR(order_date) = 2025;

-- 6. Display orders placed in July 2025

SELECT *
FROM Orders
WHERE YEAR(order_date) = 2025
  AND MONTH(order_date) = 7;

-- 7. Display orders placed in the last 30 days

SELECT *
FROM Orders
WHERE order_date >= DATE_SUB(CURRENT_DATE, INTERVAL 30 DAY);

-- 8. Display total orders placed in each month

SELECT MONTH(order_date) AS Month,
       COUNT(*) AS Total_Orders
FROM Orders
GROUP BY MONTH(order_date);

-- 9. Display total sales for each year

SELECT YEAR(order_date) AS Year,
       SUM(amount) AS Total_Sales
FROM Orders
GROUP BY YEAR(order_date);

-- 10. Display total sales by Year and Month

SELECT YEAR(order_date) AS Year,
       MONTH(order_date) AS Month,
       SUM(amount) AS Total_Sales
FROM Orders
GROUP BY YEAR(order_date),
         MONTH(order_date)
ORDER BY Year ASC,
         Month ASC;

-- 11. Extract Year using EXTRACT()

SELECT EXTRACT(YEAR FROM order_date) AS Year
FROM Orders;

-- 12. Extract Month using EXTRACT()

SELECT EXTRACT(MONTH FROM order_date) AS Month
FROM Orders;

-- 13. Extract Day using EXTRACT()

SELECT EXTRACT(DAY FROM order_date) AS Day
FROM Orders;

-- 14. Display Current Date

SELECT CURRENT_DATE;

-- 15. Display Current Timestamp

SELECT CURRENT_TIMESTAMP;
