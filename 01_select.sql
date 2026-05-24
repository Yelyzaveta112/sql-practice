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
