-- SUBQUERIES Practice
-- Date: August 23, 2026
-- Concept: Query inside another query
-- Rule: Inner query runs FIRST, outer query uses result

-- Query 1: Employees earning more than average salary
SELECT emp_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- Query 2: Employees earning less than average salary
SELECT emp_name, salary
FROM employees
WHERE salary < (SELECT AVG(salary) FROM employees);

-- Query 3: Employee with highest salary
SELECT emp_name, salary
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

-- Query 4: Employee with lowest salary
SELECT emp_name, salary
FROM employees
WHERE salary = (SELECT MIN(salary) FROM employees);

-- Query 5: Employees earning more than ALL Sales employees
SELECT emp_name, salary
FROM employees
WHERE salary > (
  SELECT MAX(salary)
  FROM employees
  WHERE department = 'Sales'
);

-- Query 6: Departments with above average salary
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > (
  SELECT AVG(salary)
  FROM employees
);

-- Query 7: Employees from city with most employees
SELECT emp_name, city
FROM employees
WHERE city = (
  SELECT city
  FROM employees
  GROUP BY city
  ORDER BY COUNT(*) DESC
  LIMIT 1
);

-- Query 8: Employees earning more than their dept average
SELECT e.emp_name, e.department, e.salary
FROM employees e
WHERE e.salary > (
  SELECT AVG(salary)
  FROM employees
  WHERE department = e.department
);

-- Query 9: Employees NOT in IT department
SELECT emp_name, department
FROM employees
WHERE emp_name NOT IN (
  SELECT emp_name
  FROM employees
  WHERE department = 'IT'
);

-- Query 10: Above average salary AND from Delhi
SELECT emp_name, city, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees)
AND city = 'Delhi';
