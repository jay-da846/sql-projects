use companydb;
SELECT * 
FROM employees;
SELECT * 
FROM employees
WHERE salary > 50000;
SELECT * 
FROM employees
WHERE department = 'IT';
SELECT * 
FROM employees
WHERE emp_name LIKE 'R%';
SELECT * 
FROM employees
ORDER BY salary DESC;
DESCRIBE employees;
SELECT * 
FROM employees
ORDER BY Salary ASC;
SELECT * 
FROM employees
ORDER BY Salary DESC;
SELECT DISTINCT Department
FROM employees;
SELECT Department
FROM employees
GROUP BY Department;
SELECT Department, COUNT(*) AS DeptCount
FROM employees
GROUP BY Department;
SELECT Department, COUNT(*) AS DeptCount
FROM employees
GROUP BY Department;
SELECT * 
FROM employees
WHERE Salary >= 40000 AND Salary <= 60000;
SELECT * 
FROM employees
WHERE Salary BETWEEN 30000 AND 70000;
SELECT * 
FROM employees
WHERE Department IN ('IT', 'HR', 'Finance');
SELECT * 
FROM employees
WHERE EmpName LIKE '%n';
SELECT * 
FROM employees
WHERE EmpName LIKE '__a%';
SELECT * 
FROM employees
WHERE LOWER(EmpName) LIKE '%r%';
SELECT *
FROM employees
ORDER BY salary ASC;
SELECT *
FROM employees
ORDER BY salary DESC;
SELECT DISTINCT department
FROM employees;
SELECT emp_name AS Employee_Name
FROM employees;