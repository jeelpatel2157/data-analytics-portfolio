-- DAY 6 - Date, String, Aggregate Functions
-- Date: August 26, 2026

-- ===== DATE FUNCTIONS =====
SELECT NOW(), CURDATE(), CURTIME();

SELECT emp_name, hire_date,
  DATEDIFF(CURDATE(), hire_date) AS days_employed
FROM employees;

SELECT emp_name, hire_date,
  YEAR(hire_date), MONTH(hire_date), DAY(hire_date)
FROM employees;

SELECT emp_name,
  DATE_ADD(hire_date, INTERVAL 1 YEAR) AS anniversary
FROM employees;

SELECT emp_name,
  DATE_FORMAT(hire_date, '%M %d, %Y') AS formatted_date
FROM employees;

SELECT emp_name,
  TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) AS age
FROM employees;

-- ===== STRING FUNCTIONS =====
SELECT CONCAT(emp_name, ' - ', email) AS full_info;

SELECT emp_name, LENGTH(emp_name) AS name_length;

SELECT SUBSTRING(emp_name, 1, 4) AS first_four;

SELECT UPPER(email), LOWER(email);

SELECT REPLACE(phone, '-', '') AS clean_phone;

SELECT INSTR(email, '@') AS at_position;

-- ===== AGGREGATE FUNCTIONS ADVANCED =====
SELECT emp_name,
  GROUP_CONCAT(product) AS products_sold
FROM sales GROUP BY emp_name;

SELECT 
  COUNT(CASE WHEN amount > 60000 THEN 1 END) AS high_sales;

SELECT 
  SUM(CASE WHEN region = 'North' THEN amount ELSE 0 END) AS north_total;

SELECT emp_name,
  COUNT(*) AS total_sales,
  SUM(amount) AS total_amount,
  AVG(amount) AS avg_sale,
  GROUP_CONCAT(DISTINCT product) AS products
FROM sales
GROUP BY emp_name
HAVING SUM(amount) > 100000
ORDER BY total_amount DESC;
