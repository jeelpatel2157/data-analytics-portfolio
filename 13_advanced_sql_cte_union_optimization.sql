-- ADVANCED SQL - Day 5
-- Date: August 26, 2026
-- Topics: CTEs, UNION, Query Optimization, Indexes

-- ==================== SETUP ====================
CREATE TABLE sales (
  sale_id INT,
  emp_name VARCHAR(50),
  amount INT,
  sale_date DATE
);

INSERT INTO sales VALUES
(1, 'Alice', 50000, '2026-01-15'),
(2, 'Bob', 60000, '2026-01-20'),
(3, 'Alice', 45000, '2026-02-10'),
(4, 'Charlie', 70000, '2026-02-15'),
(5, 'Bob', 55000, '2026-03-05'),
(6, 'Alice', 65000, '2026-03-20'),
(7, 'Charlie', 48000, '2026-04-10'),
(8, 'Bob', 72000, '2026-04-15');

-- ==================== CTEs ====================
-- CTE 1: Basic CTE
WITH emp_totals AS (
  SELECT emp_name, SUM(amount) AS total_sales
  FROM sales
  GROUP BY emp_name
)
SELECT * FROM emp_totals
ORDER BY total_sales DESC;

-- CTE 2: CTE with WHERE
WITH emp_totals AS (
  SELECT emp_name, SUM(amount) AS total_sales
  FROM sales
  GROUP BY emp_name
)
SELECT * FROM emp_totals
WHERE total_sales > 150000;

-- CTE 3: Multiple CTEs
WITH emp_totals AS (
  SELECT emp_name, SUM(amount) AS total_sales
  FROM sales
  GROUP BY emp_name
),
emp_avg AS (
  SELECT emp_name, AVG(amount) AS avg_sale
  FROM sales
  GROUP BY emp_name
)
SELECT t.emp_name, t.total_sales, a.avg_sale
FROM emp_totals t
JOIN emp_avg a ON t.emp_name = a.emp_name
ORDER BY t.total_sales DESC;

-- CTE 4: CTE with Window Functions
WITH emp_sales_ranked AS (
  SELECT emp_name, amount,
    ROW_NUMBER() OVER (PARTITION BY emp_name ORDER BY amount DESC) AS `rank`
  FROM sales
)
SELECT * FROM emp_sales_ranked
WHERE `rank` <= 2;

-- CTE 5: Recursive CTE
WITH RECURSIVE numbers AS (
  SELECT 1 AS n
  UNION ALL
  SELECT n + 1 FROM numbers WHERE n < 10
)
SELECT * FROM numbers;

-- ==================== UNION ====================
-- UNION 1: Combine high and low sales
SELECT emp_name, amount, 'High Sales' AS category
FROM sales
WHERE amount > 60000
UNION
SELECT emp_name, amount, 'Low Sales' AS category
FROM sales
WHERE amount < 50000
ORDER BY amount DESC;

-- UNION 2: UNION with different structures
SELECT emp_name, amount, 'Actual' AS source
FROM sales
WHERE emp_name = 'Alice'
UNION
SELECT 'Alice', 100000, 'Bonus' AS source;

-- UNION 3: UNION ALL (keeps duplicates)
SELECT emp_name FROM sales WHERE amount > 60000
UNION ALL
SELECT emp_name FROM sales WHERE amount < 50000;

-- ==================== QUERY OPTIMIZATION ====================
-- Create customers table for optimization examples
CREATE TABLE customers (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(100),
  country VARCHAR(50)
);

INSERT INTO customers VALUES
(1, 'Alice', 'alice@gmail.com', 'USA'),
(2, 'Bob', 'bob@gmail.com', 'UK'),
(3, 'Charlie', 'charlie@gmail.com', 'USA'),
(4, 'David', 'david@gmail.com', 'India'),
(5, 'Eve', 'eve@gmail.com', 'Canada');

-- Optimization 1: EXPLAIN without index (slow)
EXPLAIN SELECT * FROM customers WHERE email = 'alice@gmail.com';
-- Result: Scans ALL rows (type: ALL, rows: 5000)

-- Optimization 2: Create index
CREATE INDEX idx_email ON customers(email);

-- Optimization 3: EXPLAIN with index (fast!)
EXPLAIN SELECT * FROM customers WHERE email = 'alice@gmail.com';
-- Result: Uses index (type: ref, rows: 1)

-- Optimization 4: Query using index
SELECT * FROM customers WHERE email = 'alice@gmail.com';

-- Optimization 5: Multiple indexes
CREATE INDEX idx_country ON customers(country);
SELECT * FROM customers WHERE country = 'USA';

-- Optimization 6: Composite index
CREATE INDEX idx_email_country ON customers(email, country);
SELECT * FROM customers WHERE email = 'alice@gmail.com' AND country = 'USA';

-- ==================== SUMMARY ====================
-- Day 5 Achievements:
-- ✅ CTEs (5 queries) - Temporary named queries
-- ✅ UNION (3 queries) - Combine multiple result sets
-- ✅ Query Optimization (6 queries) - Indexes & performance
-- ✅ Total: 14 advanced queries
-- ✅ Professional SQL skills developed
-- ✅ Performance tuning mastered
-- ✅ Career-ready expertise gained
