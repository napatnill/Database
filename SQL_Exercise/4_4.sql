SELECT
	product.product_id,
	product.product_description
FROM order_line
JOIN product on order_line.product_id = product.product_id
GROUP BY product.product_id
ORDER BY COUNT(order_line.order_id) DESC
LIMIT 2