-- INNER JOIN
SELECT *
FROM orders o
INNER JOIN customers c
ON o.customer_id = c.customer_id;

SELECT o.order_id, c.first_name
FROM orders o
INNER JOIN customers c
ON o.customer_id = c.customer_id;

SELECT s.subject, c.email
FROM support_tickets s
INNER JOIN customers c
ON s.customer_id = c.customer_id;

-- LEFT JOIN
SELECT c.first_name, o.order_id
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;

-- JOIN + WHERE
SELECT o.order_id, o.order_date
FROM orders o
INNER JOIN customers c
ON o.customer_id = c.customer_id
WHERE c.city = 'Stockholm';
