SELECT customer.name, orders.item
FROM customers c
INNER JOIN orders o
ON c.id = o.customer_id
WHERE c.city = 'Pune'
ORDER BY c.name, o.item;

SELECT o.id, o.item, o.amount
FROM customers c  
RIGHT JOIN order O
ON o.id = o.customer_id
WHERE c.id IS NULL
ORDER BY c.amount;
SELECT c.name , o.item, o.amount
FROM customers c
LEFT JOIN orders o
ON c.id = 	o.customer_id
ORDER BY c.name, o.amount;