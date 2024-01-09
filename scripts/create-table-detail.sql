USE online_retail;

CREATE TABLE `detail_product` (
 `detail_id` INT AUTO_INCREMENT PRIMARY KEY,
 `product_id` INT,
 `image` VARCHAR(255),
 `description` VARCHAR(255),
 `rating` DECIMAL(3,1),
 FOREIGN KEY (`product_id`) REFERENCES `product`(`product_id`),
 KEY `Key` (`image`, `description`, `rating`)
);
