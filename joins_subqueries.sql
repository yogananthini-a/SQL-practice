SELECT Employees.name,
       Departments.department
FROM Employees
INNER JOIN Departments
ON Employees.dept_id = Departments.dept_id;

SELECT Employees.name,
       Departments.department
FROM Employees
LEFT JOIN Departments
ON Employees.dept_id = Departments.dept_id;

SELECT name
FROM Employees
WHERE salary = (
    SELECT MAX(salary)
    FROM Employees
);

SELECT name
FROM Employees
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
);
