-- UNIONS

SELECT 
    order_id,
    order_date,
    'active' AS status
FROM orders
WHERE order_date >= '2019-01-01'
UNION
SELECT 
    order_id,
    order_date,
    'archived' AS status
FROM orders
WHERE order_date < '2019-01-01';


-- Exercise
SELECT
    customer_id,
    first_name,
    points,
    'Bronze' AS type
FROM customers
WHERE points < 2000
UNION
SELECT
    customer_id,
    first_name,
    points,
    'Silver' AS type
FROM customers
WHERE points BETWEEN 2000 and 3000
UNION
SELECT
    customer_id,
    first_name,
    points,
    'Gold' AS type
FROM customers
WHERE points > 3000
ORDER BY first_name