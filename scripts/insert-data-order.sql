USE online_retail;

INSERT INTO `order_product` (`buyer_id`, `product_id`, `quantity`, `order_date`, `payment_method`, `payment_date`)
VALUES 
(1, 1, 1, '2024-01-01', 'PayPal', '2024-01-01'),
(1, 3, 1, '2024-01-05', 'PayPal', '2024-01-05'),
(9, 7, 2, '2024-01-01', 'PayPal', '2024-01-02'),
(1, 2, 1, '2024-01-15', 'M-Banking', '2024-01-15'),
(10, 6, 2, '2024-01-03', 'COD', '2024-01-03'),
(2, 7, 5, '2024-05-07', 'M-Banking', '2024-05-07'),
(3, 4, 3, '2024-01-03', 'M-Banking', '2024-01-03'),
(4, 8, 1, '2024-01-04', 'COD', '2024-01-05'),
(7, 9, 7, '2024-01-01', 'M-Banking', '2024-01-01'),
(6, 5, 5, '2024-01-20', 'Credit Card', '2024-01-21'),
(8, 1, 1, '2024-03-05', 'M-Banking', '2024-03-05'),
(5, 10, 2, '2024-03-07', 'PayPal', '2024-03-08');