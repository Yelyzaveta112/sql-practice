-- SELECT basics
SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM support_tickets;
SELECT * FROM order_items;

SELECT first_name, last_name FROM customers;
SELECT product_name, base_price FROM products;
SELECT order_date, status FROM orders;
SELECT subject, assigned_agent FROM support_tickets;
SELECT email, city FROM customers;

SELECT DISTINCT city FROM customers;
SELECT DISTINCT category FROM products;
SELECT DISTINCT membership_level FROM customers;
SELECT DISTINCT status FROM orders;
SELECT DISTINCT assigned_agent FROM support_tickets;

-- WHERE filtering
SELECT * FROM customers WHERE city = 'Stockholm';
SELECT * FROM products WHERE base_price < 500;
SELECT * FROM orders WHERE order_date = '2024-01-15';
SELECT * FROM support_tickets WHERE status = 'Open';
SELECT * FROM customers WHERE membership_level = 'Gold';

SELECT * FROM customers WHERE city != 'Stockholm';
SELECT * FROM products WHERE stock_quantity < 5;
SELECT * FROM customers WHERE signup_date > '2023-01-01';

-- AND / OR / IN / BETWEEN
SELECT * FROM products WHERE category = 'Electronics' AND base_price > 5000;
SELECT * FROM customers WHERE city = 'Stockholm' OR city = 'Göteborg';
SELECT * FROM customers WHERE city IN ('Stockholm','Göteborg','Malmö');
SELECT * FROM products WHERE base_price BETWEEN 100 AND 500;
SELECT * FROM orders WHERE order_date BETWEEN '2024-01-01' AND '2024-01-31';

-- LIKE / NULL
SELECT * FROM customers WHERE last_name LIKE 'S%';
SELECT * FROM products WHERE product_name LIKE '%Laptop%';
SELECT * FROM customers WHERE email LIKE '%.com';
SELECT * FROM support_tickets WHERE assigned_agent IS NULL;
SELECT * FROM support_tickets WHERE assigned_agent IS NOT NULL;

-- ORDER BY / LIMIT
SELECT * FROM products ORDER BY base_price ASC;
SELECT * FROM products ORDER BY base_price DESC LIMIT 5;
SELECT * FROM orders ORDER BY order_date DESC LIMIT 3;
SELECT * FROM customers ORDER BY last_name ASC;
