-- OUTER JOIN (LEFT & RIGHT)

SELECT
    c.customer_id, c.first_name, o.order_id
FROM customers AS c
LEFT JOIN orders AS o
    ON c.customer_id = o.customer_id
ORDER BY c.customer_id