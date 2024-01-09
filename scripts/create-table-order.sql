USE online_retail;

CREATE TABLE `order_product` (
  `order_id` INT auto_increment PRIMARY KEY,
  `buyer_id` INT,
  `product_id` INT,
  `quantity` INT(10),
  `order_date` DATE,
  `payment_method` VARCHAR(50),
  `payment_date` DATE,
  KEY `Key` (`order_id`, `quantity`, `order_date`, `payment_method`, `payment_date`)
);