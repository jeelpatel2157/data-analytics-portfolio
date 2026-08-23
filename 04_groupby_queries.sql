-- ================================================
-- GROUP BY COMPLETE PRACTICE
-- Date: August 23, 2026
-- Dataset: Employees Table (8 employees)
-- Concepts: GROUP BY, HAVING, COUNT, AVG, 
--           SUM, MAX, MIN, ORDER BY
-- ================================================

-- TABLE SETUP
CREATE TABLE employees (
  emp_id INT,
  emp_name VARCHAR(50),
  department VARCHAR(50),
  salary INT,
  city VARCHAR(50)
);

INSERT INTO employees VALUES
(1, 'Alice', 'Sales', 50000, 'Mumbai'),
(2, 'Bob', 'IT', 60000, 'Delhi'),
(3, 'Charlie', 'Sales', 45000, 'Mumbai'),
(4, 'David', 'IT', 70000, 'Bangalore'),
(5, 'Eve', 'HR', 55000, 'Delhi'),
(6, 'Frank', 'HR', 48000, 'Mumbai'),
(7, 'Grace', 'IT', 65000, 'Delhi'),
(8, 'Henry', 'Sales', 52000, 'Bangalore');

-- QUERY 1: Count employees per department
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

-- QUERY 2: Average salary per department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

-- QUERY 3: Total salary per city
SELECT city, SUM(salary) AS total_salary
FROM employees
GROUP BY city;

-- QUERY 4: Max salary per department (highest first)
SELECT department, MAX(salary) AS max_salary
FROM employees
GROUP BY department
ORDER BY max_salary DESC;

-- QUERY 5: Count employees per city
SELECT city, COUNT(*) AS count_cityemployees
FROM employees
GROUP BY city;

-- QUERY 6: Average salary per city (highest first)
SELECT city, AVG(salary) AS avg_salary
FROM employees
GROUP BY city
ORDER BY avg_salary DESC;

-- QUERY 7: Minimum salary per department
SELECT department, MIN(salary) AS min_salary
FROM employees
GROUP BY department;

-- QUERY 8: Count employees per department per city
SELECT department, city, COUNT(*) AS total
FROM employees
GROUP BY department, city
ORDER BY department;

-- QUERY 9: Total salary per department (highest first)
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department
ORDER BY total_salary DESC;

-- QUERY 10: HAVING - Departments where MAX > 60000
SELECT department, MAX(salary)
FROM employees
GROUP BY department
HAVING MAX(salary) > 60000;
