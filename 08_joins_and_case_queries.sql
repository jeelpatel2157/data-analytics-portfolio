-- JOINS and CASE STATEMENTS - Day 4
-- Date: August 26, 2026
-- Topics: LEFT JOIN, RIGHT JOIN, FULL OUTER JOIN, CASE Statements

-- Setup
CREATE TABLE employees (
  emp_id INT,
  emp_name VARCHAR(50),
  dept_id INT
);

CREATE TABLE departments (
  dept_id INT,
  dept_name VARCHAR(50)
);

INSERT INTO employees VALUES
(1, 'Alice', 10),
(2, 'Bob', 20),
(3, 'Charlie', 10),
(4, 'David', 30),
(5, 'Eve', NULL);

INSERT INTO departments VALUES
(10, 'Sales'),
(20, 'IT'),
(30, 'HR'),
(40, 'Finance');

-- LEFT JOIN: All employees + matching departments
SELECT e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.dept_id = d.dept_id;

-- RIGHT JOIN: All departments + matching employees
SELECT d.dept_name, e.emp_name
FROM employees e
RIGHT JOIN departments d
ON e.dept_id = d.dept_id;

-- FULL OUTER JOIN (using UNION): All rows from both tables
SELECT e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id
UNION
SELECT e.emp_name, d.dept_name
FROM employees e
RIGHT JOIN departments d ON e.dept_id = d.dept_id;

-- CASE 1: Simple department categorization
SELECT emp_name, dept_id,
  CASE
    WHEN dept_id = 10 THEN 'Sales'
    WHEN dept_id = 20 THEN 'IT'
    WHEN dept_id = 30 THEN 'HR'
    ELSE 'Unknown'
  END AS dept_category
FROM employees;

-- CASE 2: Employee level by ID
SELECT emp_name, emp_id,
  CASE
    WHEN emp_id < 3 THEN 'Junior'
    WHEN emp_id < 5 THEN 'Senior'
    ELSE 'Lead'
  END AS level
FROM employees;

-- CASE 3: Role assignment by name
SELECT emp_name, emp_id,
  CASE emp_name
    WHEN 'Alice' THEN 'Manager'
    WHEN 'Bob' THEN 'Developer'
    WHEN 'Charlie' THEN 'Developer'
    WHEN 'David' THEN 'Lead'
    ELSE 'Unassigned'
  END AS role
FROM employees;

-- CASE 4: CASE with GROUP BY and COUNT
SELECT 
  CASE
    WHEN emp_id <= 2 THEN 'Group A'
    WHEN emp_id <= 4 THEN 'Group B'
    ELSE 'Group C'
  END AS emp_group,
  COUNT(*) AS count
FROM employees
GROUP BY CASE
    WHEN emp_id <= 2 THEN 'Group A'
    WHEN emp_id <= 4 THEN 'Group B'
    ELSE 'Group C'
  END;

-- CASE 5: Multiple conditions in CASE
SELECT emp_name, emp_id, dept_id,
  CASE
    WHEN dept_id IS NULL THEN 'Unassigned'
    WHEN dept_id = 10 AND emp_id > 2 THEN 'Senior Sales'
    WHEN dept_id = 10 THEN 'Junior Sales'
    WHEN dept_id = 20 THEN 'IT Team'
    ELSE 'Other'
  END AS category
FROM employees;
