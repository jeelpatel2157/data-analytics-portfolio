-- STRING FUNCTIONS - Day 5 (Part 2)
-- Date: August 26, 2026
-- Professional text manipulation & data cleaning

-- ==================== SETUP ====================
CREATE TABLE employees (
  emp_id INT,
  emp_name VARCHAR(50),
  email VARCHAR(100),
  phone VARCHAR(20)
);

INSERT INTO employees VALUES
(1, 'John Doe', 'john.doe@gmail.com', '123-456-7890'),
(2, 'Alice Smith', 'alice.smith@gmail.com', '987-654-3210'),
(3, 'Bob Johnson', 'bob.johnson@gmail.com', '555-123-4567'),
(4, 'Charlie Brown', 'charlie.brown@gmail.com', '555-987-6543'),
(5, 'Eve Wilson', 'eve.wilson@gmail.com', '555-555-5555');

-- ==================== STRING FUNCTIONS ====================

-- Problem 1: CONCAT - Join strings
SELECT emp_id, 
  CONCAT(emp_name, ' - ', email) AS full_info
FROM employees;

-- Problem 2: LENGTH - Count characters
SELECT emp_name, LENGTH(emp_name) AS name_length
FROM employees
ORDER BY name_length DESC;

-- Problem 3: SUBSTRING - Extract text parts
SELECT emp_name,
  SUBSTRING(emp_name, 1, 4) AS first_four_chars,
  SUBSTRING(emp_name, 6) AS last_name
FROM employees;

-- Problem 4: UPPER & LOWER - Change case
SELECT emp_name,
  UPPER(emp_name) AS uppercase,
  LOWER(emp_name) AS lowercase,
  LOWER(email) AS clean_email
FROM employees;

-- Problem 5: TRIM - Remove spaces
SELECT emp_name,
  CONCAT('|', emp_name, '|') AS with_pipes,
  TRIM(emp_name) AS trimmed,
  CONCAT('|', TRIM(emp_name), '|') AS trimmed_pipes
FROM employees;

-- Problem 6: REPLACE - Swap text
SELECT email,
  REPLACE(email, '@gmail.com', '@company.com') AS company_email,
  REPLACE(email, '.', '_') AS underscore_email
FROM employees;

-- Problem 7: INSTR - Find position
SELECT email,
  INSTR(email, '@') AS at_position,
  SUBSTRING(email, 1, INSTR(email, '@') - 1) AS username
FROM employees;

-- Problem 8: Clean phone numbers (practical use case!)
SELECT phone,
  REPLACE(REPLACE(phone, '-', ''), ' ', '') AS clean_phone
FROM employees;

-- Problem 9: Extract email domain
SELECT email,
  SUBSTRING(email, INSTR(email, '@') + 1) AS domain,
  SUBSTRING(email, INSTR(email, '@') + 1, INSTR(email, '.') - INSTR(email, '@') - 1) AS domain_name
FROM employees;

-- Problem 10: Format names professionally
SELECT emp_name,
  CONCAT(UPPER(LEFT(emp_name, 1)), LOWER(SUBSTRING(emp_name, 2))) AS proper_case
FROM employees;

-- ==================== SUMMARY ====================
-- String Functions Mastered:
-- ✅ CONCAT - Join multiple strings
-- ✅ LENGTH - Count characters
-- ✅ SUBSTRING - Extract portions
-- ✅ UPPER/LOWER - Case conversion
-- ✅ TRIM - Remove whitespace
-- ✅ REPLACE - Text substitution
-- ✅ INSTR - Find character position
-- ✅ Professional data cleaning techniques
-- ✅ Real-world applications
