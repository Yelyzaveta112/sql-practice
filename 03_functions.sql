SELECT product_name, base_price * 1.25 AS price_with_tax FROM products;
SELECT product_name, base_price / 2 FROM products;
SELECT product_name, base_price + 50 FROM products;

SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM customers;
SELECT CONCAT('Order ID: ', order_id) FROM orders;
SELECT CONCAT(product_name, ' (', category, ')') FROM products;

SELECT DISTINCT city FROM customers;
SELECT DISTINCT category FROM products;
