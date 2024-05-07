SELECT
	customer.customer_id,
	customer.customer_name
FROM customer
JOIN ordert ON customer.customer_id = ordert.customer_id
GROUP BY customer.customer_id
ORDER BY COUNT(ordert.order_id) DESC
LIMIT 1