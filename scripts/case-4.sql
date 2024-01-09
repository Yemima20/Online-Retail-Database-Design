USE online_retail;

SELECT AVG(total_transaction) as average_transaction
FROM (
 SELECT buyer_id, SUM(order_product.quantity * product.price) as total_transaction
 FROM order_product
 JOIN product ON order_product.product_id = product.product_id 
 WHERE order_date >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
 GROUP BY buyer_id
) as transactions

