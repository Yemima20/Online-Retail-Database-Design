USE online_retail;

SELECT product.name, COUNT(*) AS total_purchases
FROM order_product
JOIN product ON order_product.product_id = product.product_id 
GROUP BY product.name
ORDER BY total_purchases DESC
LIMIT 3;