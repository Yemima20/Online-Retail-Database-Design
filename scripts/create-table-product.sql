USE online_retail;

CREATE TABLE `product` (
 `product_id` INT AUTO_INCREMENT PRIMARY KEY,
 `name` VARCHAR(70),
 `category` VARCHAR(50),
 `price`INT(12),
 `stock` INT,
 KEY `Key` (`name`, `category`, `price`, `stock`)
);