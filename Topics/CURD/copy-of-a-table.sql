-- COPY OF A TABLE

CREATE TABLE orders_archived
SELECT * FROM orders;

-- Copt rows from one table to another
INSERT INTO orders_archived
SELECT *
FROM orders
WHERE order_date < '2019-01-01';


/* 
  Exercise
    - Copy the INVOICES table to INVOICES_ARCHIVED
    - Save 'client_name' instead of 'client_id'
    - Only copy those invoices are paid
*/
CREATE TABLE invoices_archived
SELECT
    i.invoice_id,
    i.number,
    c.name AS 'client_name',
    i.invoice_total,
    i.payment_total,
    i.invoice_date,
    i.payment_date
FROM invoices AS i
JOIN clients AS c
    USING(client_id)
WHERE i.payment_date IS NOT NULL
ORDER BY i.payment_date;
    
    