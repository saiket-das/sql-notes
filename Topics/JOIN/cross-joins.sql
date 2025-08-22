-- CROSS JOINS

SELECT
    c.first_name,
    p.name AS 'product_name',
    p.unit_price
FROM customers AS c, orders AS o
CROSS JOIN products AS p;


-- Exercise
/*
  Cross join between shippers and products
    -- Using the implicit syntax
    -- Using the explicit syntax
*/
SELECT 
    s.name AS 'shipper_name',
    p.name AS 'product_name'
-- FROM shippers AS s, products as p     -- Explicit Syntax
FROM shippers AS s    
CROSS JOIN products as p                 -- Explicit Syntax
ORDER BY s.shipper_id