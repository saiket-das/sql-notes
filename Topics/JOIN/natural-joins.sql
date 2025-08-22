-- NATURAL JOINS

SELECT
    o.order_id,
    c.first_name
FROM orders AS o
NATURAL JOIN customers AS c