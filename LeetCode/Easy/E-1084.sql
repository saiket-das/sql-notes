-- https://leetcode.com/problems/sales-analysis-iii/description/

SELECT DISTINCT p.product_id, p.product_name
FROM Product AS p
JOIN Sales AS s 
    ON p.product_id = s.product_id

GROUP BY p.product_id, p.product_name
HAVING 
    SUM(s.sale_date BETWEEN '2019-01-01' AND '2019-03-31') > 0 AND 
    SUM(s.sale_date NOT BETWEEN '2019-01-01' AND '2019-03-31') = 0;