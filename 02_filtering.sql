SELECT * FROM customers WHERE city = 'Stockholm';
SELECT * FROM products WHERE base_price < 500;
SELECT * FROM orders WHERE order_date = '2024-01-15';
SELECT * FROM support_tickets WHERE status = 'Open';
SELECT * FROM customers WHERE membership_level = 'Gold';

SELECT * FROM customers WHERE city != 'Stockholm';
SELECT * FROM products WHERE stock_quantity < 5;
SELECT * FROM customers WHERE signup_date > '2023-01-01';

SELECT * FROM products WHERE category = 'Electronics' AND base_price > 5000;
SELECT * FROM customers WHERE city = 'Stockholm' OR city = 'Göteborg';
SELECT * FROM customers WHERE city IN ('Stockholm','Göteborg','Malmö');
SELECT * FROM products WHERE base_price BETWEEN 100 AND 500;
SELECT * FROM orders WHERE order_date BETWEEN '2024-01-01' AND '2024-01-31';

SELECT * FROM customers WHERE last_name LIKE 'S%';
SELECT * FROM products WHERE product_name LIKE '%Laptop%';
SELECT * FROM customers WHERE email LIKE '%.com';
SELECT * FROM support_tickets WHERE assigned_agent IS NULL;
SELECT * FROM support_tickets WHERE assigned_agent IS NOT NULL;
