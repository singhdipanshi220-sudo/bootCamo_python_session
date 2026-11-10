SELECT c.name,
COUNT(*) AS num_orders,
ROUND(AVG(o.amount), 2) AS avg_amount
FROM customers c
INNER JOIN orders o
ON c.id = o.customer_id
GROUP BY c.name
ORDER BY c.name;
-- Report 2
SELECT c.name,
COUNT(o.id) AS num_orders,
SUM(o.amount) AS total
FROM customers c
LEFT JOIN orders o
ON c.id = o.customer_id
GROUP BY c.name
ORDER BY c.name;