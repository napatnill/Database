SELECT
	customer.customer_id,
	customer.customer_name,
	COUNT(ordert.order_id) AS count_of_order_id
FROM ordert
JOIN customer ON ordert.customer_id = customer.customer_id
GROUP BY customer.customer_id
ORDER BY COUNT(ordert.order_id) DESC
LIMIT 3