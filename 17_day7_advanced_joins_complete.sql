-- DAY 7 - ADVANCED JOINs (Evening Session)
-- Date: August 26, 2026
-- Professional JOIN techniques for real-world problems

-- ==================== SETUP ====================
CREATE TABLE employees (
  emp_id INT,
  emp_name VARCHAR(50),
  manager_id INT,
  salary INT,
  dept_id INT
);

INSERT INTO employees VALUES
(1, 'Alice', NULL, 100000, 10),
(2, 'Bob', 1, 80000, 10),
(3, 'Charlie', 1, 75000, 20),
(4, 'David', 2, 60000, 10),
(5, 'Eve', 3, 70000, 20);

CREATE TABLE departments (
  dept_id INT,
  dept_name VARCHAR(50)
);

INSERT INTO departments VALUES
(10, 'Sales'),
(20, 'IT'),
(30, 'HR');

-- ==================== ADVANCED JOINs ====================

-- Self JOIN: Employee with Manager names
SELECT 
  e.emp_name AS employee,
  m.emp_name AS manager
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.emp_id;

-- Self JOIN: 3-Level Hierarchy
SELECT 
  e1.emp_name AS employee,
  e2.emp_name AS direct_manager,
  e3.emp_name AS manager_manager
FROM employees e1
LEFT JOIN employees e2 ON e1.manager_id = e2.emp_id
LEFT JOIN employees e3 ON e2.manager_id = e3.emp_id;

-- CROSS JOIN: All combinations
SELECT 
  e.emp_name,
  d.dept_name
FROM employees e
CROSS JOIN departments d;

-- Multiple JOINs: Complete Employee Info
SELECT 
  e.emp_name AS employee,
  m.emp_name AS manager,
  d.dept_name AS department,
  e.salary
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.emp_id
LEFT JOIN departments d ON e.dept_id = d.dept_id
ORDER BY e.salary DESC;

-- JOIN with Aggregates: Department Summary
SELECT 
  d.dept_name,
  COUNT(e.emp_id) AS emp_count,
  AVG(e.salary) AS avg_salary,
  MAX(e.salary) AS highest_salary
FROM departments d
LEFT JOIN employees e ON d.dept_id = e.dept_id
GROUP BY d.dept_name
ORDER BY emp_count DESC;

-- Self JOIN: Find Peers (Same Department)
SELECT DISTINCT
  e1.emp_name AS employee1,
  e2.emp_name AS employee2
FROM employees e1
JOIN employees e2 ON e1.dept_id = e2.dept_id
WHERE e1.emp_id < e2.emp_id
ORDER BY employee1;

-- Performance: JOIN vs Subquery
-- Method 1: JOIN (faster)
SELECT e.emp_name, d.dept_name
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id;

-- Method 2: Subquery (slower)
SELECT e.emp_name, 
  (SELECT dept_name FROM departments WHERE dept_id = e.dept_id) AS dept_name
FROM employees e;

-- ==================== SUMMARY ====================
-- Advanced JOINs Mastered:
-- ✅ Self JOINs - Table joins itself
-- ✅ Multiple JOINs - Chain multiple tables
-- ✅ CROSS JOINs - Cartesian product
-- ✅ Natural JOINs - Automatic ON clause
-- ✅ JOINs with aggregates - Professional reports
-- ✅ Performance comparison
-- ✅ Real-world organizational hierarchies
