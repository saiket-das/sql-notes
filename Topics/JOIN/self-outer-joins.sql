-- SELF OUTER JOINS
SELECT 
    e.employee_id,
    e.first_name as employee_name,
    m.first_name AS manager 
    
FROM employees AS e
LEFT JOIN employees AS m
   ON e.reports_to = m.employee_id