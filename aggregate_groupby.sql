-- count all rows in employees table
SELECT COUNT(*) FROM Employees;

-- calculate average salary
SELECT AVG(salary) AS avg_salary
FROM Employees;

-- count employees for each department
SELECT department, COUNT(*) AS total_employees
FROM Employees
GROUP BY department;

-- max salary for each department
SELECT department, MAX(salary) AS highest_salary
FROM Employees
GROUP BY department;

-- Select department which is having more than one employee
SELECT department, COUNT(*)
FROM Employees
GROUP BY department
HAVING COUNT(*) > 1;
