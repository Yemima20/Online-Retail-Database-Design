USE online_retail;

SELECT buyer.name, COUNT(DISTINCT order_product.product_id) AS total_order
FROM buyer
JOIN order_product ON buyer.buyer_id  = order_product.buyer_id
GROUP BY buyer.name
HAVING total_order >= 3
LIMIT 1;