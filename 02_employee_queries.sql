-- 10 SQL Practice Problems - Employees Table
-- Date: Aug 22, 2026
-- Concepts: SELECT, WHERE, COUNT, AVG, MAX, MIN, ORDER BY

CREATE TABLE employees (
  id INT,
  name VARCHAR(50),
  salary INT,
  department VARCHAR(50)
);

INSERT INTO employees VALUES
(1, 'Alice', 50000, 'Sales'),
(2, 'Bob', 60000, 'IT'),
(3, 'Charlie', 45000, 'Sales'),
(4, 'David', 70000, 'IT'),
(5, 'Eve', 55000, 'HR');

-- Problem 1: Show all employees
SELECT * FROM employees;

-- Problem 2: Show only names and salaries
SELECT name, salary FROM employees;

-- Problem 3: Show employees with salary > 50000
SELECT name, salary FROM employees WHERE salary > 50000;

-- Problem 4: Count employees in IT department
SELECT COUNT(*) FROM employees WHERE department = 'IT';

-- Problem 5: Calculate average salary
SELECT AVG(salary) FROM employees;

-- Problem 6: Show employees with lowest salary
SELECT name, salary FROM employees WHERE salary < 50000;

-- Problem 7: Show all IT department employees
SELECT name, department FROM employees WHERE department = 'IT';

-- Problem 8: Find highest and lowest salary
SELECT MAX(salary), MIN(salary) FROM employees;

-- Problem 9: Show employees ordered by salary (highest first)
SELECT name, salary FROM employees ORDER BY salary DESC;

-- Problem 10: Show IT employees ordered by salary
SELECT name, salary FROM employees WHERE department = 'IT' ORDER BY salary DESC;
