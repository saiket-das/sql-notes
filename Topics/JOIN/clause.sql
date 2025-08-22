-- USING CLAUSE

SELECT
    o.order_id,
    c.first_name,
    o.order_date,
    s.name AS 'shipper_name'
FROM orders AS o
JOIN customers AS c
    -- ON o.customer_id = c.customer_id
    USING (customer_id)
LEFT JOIN shippers AS s
    USING (shipper_id);
    


-- Multiple Conditions
SELECT *
FROM order_items AS oi
LEFT JOIN order_item_notes AS oin
    USING (order_id, product_id);
   
   
-- Exercise
SELECT 
    c.name AS 'client_name',
    p.amount,
    p.date,
    pm.name AS 'payment_method'
FROM payments AS p
JOIN clients AS c 
    USING (client_id)
LEFT JOIN payment_methods AS pm
    ON p.payment_method = pm.payment_method_id;
    
    