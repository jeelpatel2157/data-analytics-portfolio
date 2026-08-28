-- WINDOW FUNCTIONS - Day 5
-- Date: August 26, 2026
-- Advanced SQL: Window functions for running totals, rankings, comparisons

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

-- Query 1: ROW_NUMBER - Sequential numbering per employee
SELECT emp_name, amount,
  ROW_NUMBER() OVER (PARTITION BY emp_name ORDER BY amount DESC) AS `rank`
FROM sales;

-- Query 2: Running Total - Cumulative sum per employee
SELECT emp_name, amount,
  SUM(amount) OVER (PARTITION BY emp_name ORDER BY sale_id) AS running_total
FROM sales;

-- Query 3: Overall Ranking - Rank across all employees
SELECT emp_name, amount,
  RANK() OVER (ORDER BY amount DESC) AS overall_rank
FROM sales;

-- Query 4: LAG - Previous value in sequence
SELECT emp_name, amount,
  LAG(amount) OVER (PARTITION BY emp_name ORDER BY sale_id) AS previous_sale
FROM sales;

-- Query 5: LEAD - Next value in sequence
SELECT emp_name, amount,
  LEAD(amount) OVER (PARTITION BY emp_name ORDER BY sale_id) AS next_sale
FROM sales;

-- Query 6: AVG OVER - Average per employee, shown per row
SELECT emp_name, amount,
  AVG(amount) OVER (PARTITION BY emp_name) AS avg_per_employee
FROM sales;

-- Query 7: PERCENT_RANK - Percentage ranking within partition
SELECT emp_name, amount,
  PERCENT_RANK() OVER (PARTITION BY emp_name ORDER BY amount DESC) AS percent_rank
FROM sales;

-- Query 8: DENSE_RANK - Ranking without gaps
SELECT emp_name, amount,
  DENSE_RANK() OVER (PARTITION BY emp_name ORDER BY amount DESC) AS dense_rank
FROM sales;

-- Query 9: FIRST_VALUE - Highest sale per employee shown on every row
SELECT emp_name, amount,
  FIRST_VALUE(amount) OVER (PARTITION BY emp_name ORDER BY amount DESC) AS highest_sale
FROM sales;

-- Query 10: LAST_VALUE - Lowest sale per employee shown on every row
SELECT emp_name, amount,
  LAST_VALUE(amount) OVER (PARTITION BY emp_name ORDER BY amount DESC 
    ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS lowest_sale
FROM sales;
