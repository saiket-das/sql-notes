-- OUTER JOINS BETWEEN MULTIPLE TABLES

SELECT 
    c.customer_id, 
    c.first_name AS customer_name, 
    o.order_id, 
    o.order_date, 
    s.name AS shipper
FROM customers AS c
LEFT JOIN orders as o
    ON c.customer_id = o.customer_id
LEFT JOIN shippers AS s
    ON o.shipper_id = s.shipper_id
ORDER BY c.customer_id;


-- Exercise
SELECT 
    o.order_date,
    o.order_id, 
    c.first_name,
    s.name AS shipper,
    os.name AS order_status
    
FROM orders AS o
JOIN customers as c
    ON o.customer_id = c.customer_id
LEFT JOIN shippers AS s
    ON o.shipper_id = s.shipper_id
JOIN order_statuses as os
    ON o.status = os.order_status_id
    
ORDER BY o.order_id;
