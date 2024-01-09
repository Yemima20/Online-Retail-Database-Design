USE online_retail;

CREATE TABLE `buyer` (
 `buyer_id` INT AUTO_INCREMENT PRIMARY KEY,
 `name` VARCHAR(50),
 `address` VARCHAR(100),
 `age` INT(3),
 `email` VARCHAR(70),
 `password` VARCHAR(255),
 KEY `Key` (`name`, `address`, `age`, `email`, `password`)
);