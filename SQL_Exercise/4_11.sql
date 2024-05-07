SELECT
	customer.customer_id,
	customer.customer_name
FROM customer
LEFT JOIN ordert ON customer.customer_id = ordert.customer_id
GROUP BY customer.customer_id
HAVING COUNT(ordert.order_id) = 0
ORDER BY customer.customer_id
