USE online_retail;

SELECT product.category, COUNT(*) AS total_products
FROM product
GROUP BY product.category
ORDER BY total_products DESC
LIMIT 1;