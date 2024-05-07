SELECT
	product.product_id,
	product.product_description
FROM product
JOIN order_line ON product.product_id = order_line.product_id
GROUP BY product.product_id
ORDER BY SUM(order_line.ordered_quantity) DESC
LIMIT 1