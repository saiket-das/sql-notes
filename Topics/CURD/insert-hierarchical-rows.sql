-- INSERT HIERARCHICAL ROWS

-- Insert a new order into the ORDERS table for customer_id = 11
INSERT INTO orders(customer_id, order_date, status)
VALUES (11, '2019-01-02', 1);

-- Insert an item into ORDER_ITEMS for the most recently created order
-- Using LAST_INSERT_ID() to reference the order_id generated in the previous insert
INSERT INTO order_items(order_id, product_id, quantity, unit_price)
VALUES (LAST_INSERT_ID(), 1, 1, 2.50),
       (LAST_INSERT_ID(), 9, 2, 1.50);