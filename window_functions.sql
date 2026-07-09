-- using rank()
SELECT name,
       salary,
       RANK() OVER (ORDER BY salary DESC) AS rnk
FROM Employees;

-- using dense rank()
SELECT name,
       salary,
       DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
FROM Employees;

-- CTE with window function
WITH emp_table AS (
    SELECT name,
           salary,
           DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
    FROM Employees
)
SELECT name, salary
FROM emp_table
WHERE rnk <= 3;
