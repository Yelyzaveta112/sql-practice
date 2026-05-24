-- INSERT
INSERT INTO customers (customer_id, first_name, email)
VALUES (100, 'Yelyzaveta', 'test@mail.com');

INSERT INTO products (product_id, product_name, base_price)
VALUES (126, 'Gaming Mouse', 599);

INSERT INTO orders (order_id, customer_id, order_date)
VALUES (5051, 100, '2026-02-09');

-- UPDATE
UPDATE products SET stock_quantity = 50 WHERE product_id = 126;
UPDATE products SET base_price = base_price + 200 WHERE category = 'Furniture';
UPDATE customers SET city = 'Stockholm' WHERE customer_id = 2;

-- DELETE
DELETE FROM products WHERE stock_quantity = 0;
DELETE FROM support_tickets WHERE status = 'Resolved';
