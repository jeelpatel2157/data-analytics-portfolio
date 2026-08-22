-- DB Fiddle: Products Analysis
-- Date: Aug 22, 2026

-- CREATE TABLE
CREATE TABLE products (
  id INT,
  name VARCHAR(50),
  price INT,
  quantity INT
);

INSERT INTO products VALUES
(1, 'Laptop', 50000, 5),
(2, 'Mouse', 500, 20),
(3, 'Keyboard', 2000, 10),
(4, 'Monitor', 15000, 3);

-- QUERIES
SELECT * FROM products;
SELECT name, price FROM products;
SELECT name, price FROM products WHERE price < 10000;
SELECT COUNT(*) FROM products;
SELECT AVG(price) FROM products;
commit;
