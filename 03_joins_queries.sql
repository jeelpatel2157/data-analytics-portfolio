-- SQL JOINS - Combining Multiple Tables
-- Date: Aug 22, 2026
-- Dataset: Employees + Departments

CREATE TABLE employees (
  emp_id INT,
  emp_name VARCHAR(50),
  dept_id INT
);

CREATE TABLE departments (
  dept_id INT,
  dept_name VARCHAR(50),
  budget INT
);

INSERT INTO employees VALUES
(1, 'Alice', 10),
(2, 'Bob', 20),
(3, 'Charlie', 10),
(4, 'David', 30),
(5, 'Eve', 20);

INSERT INTO departments VALUES
(10, 'Sales', 100000),
(20, 'IT', 150000),
(30, 'HR', 80000);

-- Problem 1: INNER JOIN - Show employee names with department names
SELECT 
  e.emp_name,
  d.dept_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id;

-- Problem 2: INNER JOIN - Show employee name, department, and budget
SELECT 
  e.emp_name,
  d.dept_name,
  d.budget
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id;

-- Problem 3: JOIN with WHERE - Show only Sales department employees
SELECT 
  e.emp_name,
  d.dept_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id
WHERE d.dept_name = 'Sales';

-- Problem 4: JOIN with ORDER BY - Show employees ordered by budget (highest first)
SELECT 
  e.emp_name,
  d.dept_name,
  d.budget
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id
ORDER BY d.budget DESC;

-- Problem 5: JOIN with WHERE and ORDER BY - Employees in depts with budget > 100000
SELECT 
  e.emp_name,
  d.dept_name,
  d.budget
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id
WHERE d.budget > 100000
ORDER BY e.emp_name;
