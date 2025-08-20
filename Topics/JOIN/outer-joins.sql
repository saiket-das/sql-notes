-- OUTER JOINS (LEFT & RIGHT)

-- LEFT JOIN
/* SELECT
    c.customer_id, c.first_name, o.order_id
FROM customers AS c
LEFT JOIN orders AS o
    ON c.customer_id = o.customer_id
ORDER BY c.customer_id
*/

-- RIGHT JOIN --
/* FROM orders AS o 
RIGHT JOIN customers AS c
    ON c.customer_id = o.customer_id
*/

-- Exercise: Show all the products that has been ordered or not from ORDER ITEMS table
SELECT p.product_id, p.name, oi.quantity
FROM products AS p
LEFT JOIN order_items as oi
    ON p.product_id = oi.product_id
ORDER BY p.product_id, oi.quantity




