-- HAVING Clause Practice
-- Date: August 23, 2026
-- Concept: Filter GROUPS after GROUP BY
-- Key Rule: WHERE filters rows, HAVING filters groups

-- Query 1: Departments where AVG salary > 55000
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 55000;

-- Query 2: Departments with more than 2 employees
SELECT department, COUNT(*) AS total
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;

-- Query 3: Cities where total salary > 150000
SELECT city, SUM(salary) AS total_salary
FROM employees
GROUP BY city
HAVING SUM(salary) > 150000;

-- Query 4: Departments where MAX salary > 60000
SELECT department, MAX(salary) AS max_salary
FROM employees
GROUP BY department
HAVING MAX(salary) > 60000;

-- Query 5: Departments where MIN salary < 50000
SELECT department, MIN(salary) AS min_salary
FROM employees
GROUP BY department
HAVING MIN(salary) < 50000;

-- Query 6: Cities with more than 2 employees ordered
SELECT city, COUNT(*) AS total
FROM employees
GROUP BY city
HAVING COUNT(*) > 2
ORDER BY total DESC;

-- Query 7: Departments where AVG salary BETWEEN 45000 AND 60000
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) BETWEEN 45000 AND 60000;

-- Query 8: CHALLENGE - Multiple HAVING conditions
SELECT 
  department,
  SUM(salary) AS total_salary,
  MAX(salary) AS max_salary
FROM employees
GROUP BY department
HAVING SUM(salary) > 100000
AND MAX(salary) > 60000;
