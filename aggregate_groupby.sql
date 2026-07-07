SELECT COUNT(*) FROM Employees;

SELECT AVG(salary) AS avg_salary
FROM Employees;

SELECT department, COUNT(*) AS total_employees
FROM Employees
GROUP BY department;

SELECT department, MAX(salary) AS highest_salary
FROM Employees
GROUP BY department;

SELECT department, COUNT(*)
FROM Employees
GROUP BY department
HAVING COUNT(*) > 1;
