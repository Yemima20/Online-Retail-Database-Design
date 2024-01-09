-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: online_retail
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buyer` (
  `buyer_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`buyer_id`),
  KEY `Key` (`name`,`address`,`age`,`email`,`password`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyer`
--

LOCK TABLES `buyer` WRITE;
/*!40000 ALTER TABLE `buyer` DISABLE KEYS */;
INSERT INTO `buyer` VALUES (10,'Amelia Mendez','73 Alexander Avenue',30,'amelia@mendes.com','ps801'),(4,'Christian Fuentes','2371 Lakeland Terrace',28,'christian@email.com','pass135'),(7,'Francesca Scott','413 Spring Street',20,'franscott@email.com','12345'),(2,'Keyaan Craig','4524 Hannah Street',25,'yaan@yahoo.com','myPassword123'),(5,'Liam Ryan','1584 Trymore Road',20,'Liam@gmail.com','12345'),(6,'Michaela Jacobs','973 Park Boulevard',28,'chaelajacobs@yahoo.com','pass135'),(8,'Mikey Wagner','4274 Rivendell Drive',28,'mikey@wagner.com','pass135'),(9,'Omer Mercado','4120 Geneva Street',20,'omer5@gmail.com','12345'),(1,'Stephen Hunt','4990 Berry Street',17,'stephunt@email.com','12345678'),(3,'Tori Mercado','4566 Roy Alley',20,'tori@gmail.com','12345');
/*!40000 ALTER TABLE `buyer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detail_product`
--

DROP TABLE IF EXISTS `detail_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detail_product` (
  `detail_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `rating` decimal(3,1) DEFAULT NULL,
  PRIMARY KEY (`detail_id`),
  KEY `product_id` (`product_id`),
  KEY `Key` (`image`,`description`,`rating`),
  CONSTRAINT `detail_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detail_product`
--

LOCK TABLES `detail_product` WRITE;
/*!40000 ALTER TABLE `detail_product` DISABLE KEYS */;
INSERT INTO `detail_product` VALUES (1,1,'https://thetechsexample.com/images/mouse.jpg','Good for student, worker, even gamer.',4.7),(2,2,'https://thetechsexample.com/images/laptop.jpg','Good for student, worker, even gamer. Only three colors are available.',5.0),(3,3,'https://thetechsexample.com/images/keyboardwireless.jpg','Good for student, worker, even gamer. All colors are available.',4.5),(4,4,'https://beauexample.com/images/toner.jpg','Cocok untuk kulit normal dan berminyak.',4.8),(5,5,'https://beauexample.com/images/lipgloss.jpg','Dapat melembabkan bibir kamu dan terlihat lebih sehat. Semua shade tersedia.',4.5),(6,6,'https://beauexample.com/images/facewash.jpg','Cocok untuk kulit sensitif, normal, hingga berminyak. Gunakan produk skin care kami lainnya agar hasil maksimal.',4.5),(7,7,'https://ofashionexample.com/images/topi.jpg','Wear anytime, everywhere.',4.3),(8,8,'https://ofashionexample.com/images/dompet.jpg','Good for casual style and formal occasion. All sizes and colors are available.',4.0),(9,9,'https://upfashionexample.com/images/turleneck.jpg','cocok untuk di musim dingin, bahan tebal dan nyaman, dan tersedia segala ukuran.',4.9),(10,10,'https:/ourshoesexample.com/images/boots.jpg','Our boots are Waterproof, all color and size are available, and good for daily use or special occasion.',4.2);
/*!40000 ALTER TABLE `detail_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_product` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `buyer_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `Key` (`order_id`,`quantity`,`order_date`,`payment_method`,`payment_date`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_product`
--

LOCK TABLES `order_product` WRITE;
/*!40000 ALTER TABLE `order_product` DISABLE KEYS */;
INSERT INTO `order_product` VALUES (1,1,1,1,'2024-01-01','PayPal','2024-01-01'),(2,1,3,1,'2024-01-05','PayPal','2024-01-05'),(3,9,7,2,'2024-01-01','PayPal','2024-01-02'),(4,1,2,1,'2024-01-15','M-Banking','2024-01-15'),(5,10,6,2,'2024-01-03','COD','2024-01-03'),(6,2,7,5,'2024-05-07','M-Banking','2024-05-07'),(7,3,4,3,'2024-01-03','M-Banking','2024-01-03'),(8,4,8,1,'2024-01-04','COD','2024-01-05'),(9,7,9,7,'2024-01-01','M-Banking','2024-01-01'),(10,6,5,5,'2024-01-20','Credit Card','2024-01-21'),(11,8,1,1,'2024-03-05','M-Banking','2024-03-05'),(12,5,10,2,'2024-03-07','PayPal','2024-03-08');
/*!40000 ALTER TABLE `order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(70) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `stock` int DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `Key` (`name`,`category`,`price`,`stock`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (10,'Boots','Fashion',403000,100),(8,'Dompet','Fashion',100000,20),(6,'Face Wash B','kecantikan',79000,50),(3,'Keyboard Wireless Y','Teknologi',300000,30),(2,'Laptop A','Teknologi',50000000,5),(5,'Lip gloss','Kecantikan',20000,100),(1,'Mouse','Teknologi',300000,50),(4,'Toner','kecantikan',45000,50),(7,'Topi','Fashion',25000,100),(9,'Turleneck','Fashion',700,10);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'online_retail'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-09 11:32:43
