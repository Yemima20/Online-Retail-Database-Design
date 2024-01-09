CREATE TABLE `payment` (
  `payment_id` int_auto increment,
  `buyer_id` int,
  `amount` int(10),
  `method` varchar(50),
  `payment_date` varchar(10),
  PRIMARY KEY (`payment_id`),
  KEY `Key` (`amount`, `method`, `payment_date`)
);

CREATE TABLE `buyer` (
  `buyer_id` int_auto increment,
  `name` varchar(50),
  `addess` varchar(100),
  `age` int(3),
  `email` varchar(70),
  `password` varchar,
  PRIMARY KEY (`buyer_id`),
  FOREIGN KEY (`buyer_id`) REFERENCES `payment`(`buyer_id`),
  KEY `Key` (`name`, `addess`, `age`, `email`, `password`)
);

CREATE TABLE `order_product` (
  `buyer_id` int,
  `product_id` int,
  `payment_id` int,
  `order_date` varchar(10),
  FOREIGN KEY (`payment_id`) REFERENCES `payment`(`payment_id`),
  KEY `Key` (`order_date`)
);

CREATE TABLE `product` (
  `product_id` int_auto increment,
  `name` varchar(70),
  `category` varchar(50),
  `price` INT(),
  `stock` int,
  PRIMARY KEY (`product_id`),
  KEY `Key` (`name`, `category`, `price`, `stock`)
);

CREATE TABLE `detail_product` (
  `detail_id` int_auto increment,
  `product_id` int,
  `image` blob,
  `description` varchar(255),
  `rating` int(3),
  PRIMARY KEY (`detail_id`),
  FOREIGN KEY (`product_id`) REFERENCES `product`(`product_id`),
  KEY `Key` (`image`, `description`, `rating`)
);

