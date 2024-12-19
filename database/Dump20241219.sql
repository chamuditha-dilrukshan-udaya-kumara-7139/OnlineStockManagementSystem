-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: ordermanager
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `orderinsert`
--

DROP TABLE IF EXISTS `orderinsert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderinsert` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(45) DEFAULT NULL,
  `CompanyName` varchar(45) DEFAULT NULL,
  `Country` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `ZipCode` int DEFAULT NULL,
  `ProductDetails` varchar(45) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderinsert`
--

LOCK TABLES `orderinsert` WRITE;
/*!40000 ALTER TABLE `orderinsert` DISABLE KEYS */;
INSERT INTO `orderinsert` VALUES (2,'Chamuditha','Keels','Sri Lanka','No.44/22 Kurunegala',4300,'Munchee Super Cream Cracker',500),(3,'Chamuditha','Keels','Sri Lanka','No.44/22 Kurunegala',4300,'Munchee Super Cream Cracker',500),(4,'Nimal','Cargills','Sri Lanka','No.25 Colombo',54000,'null',300),(5,'Chamuditha','Keels','Sri Lanka','No.44/22 Kurunegala',4300,'Munchee Super Cream Cracker',500),(6,'Nimal','Cargills','Sri Lanka','No.25 Colombo',5400,'Nestle Milk Powder',300),(7,'Chamuditha','Keels','Sri Lanka','No.44/22 Kurunegala',4300,'Munchee Super Cream Cracker',500),(8,'Nimal','Cargills','Sri Lanka','No.25 Colombo',5400,'Nestle Milk Powder',300),(9,'Chamuditha','Keels','Sri Lanka','No.44/22 Kurunegala',4300,'Munchee Super Cream Cracker',500),(11,'Chamuditha','Keels','Sri Lanka','No.44/22 Kurunegala',4300,'Munchee Super Cream Cracker',500),(12,'Nimal','Cargills','Sri Lanka','No.25 Colombo',5400,'null',300),(13,'Sunil','Lanka Sathosa','Sri Lanka','No.15 Kandy',2300,'Prima Noodles',200),(14,'Kamal','Laugfs','Sri Lanka','No.12 Galle',1250,'Maliban Lemon Puff',400),(15,'Sandun','Arpico','Sri Lanka','No.88 Matara',7800,'Anchor Butter',150),(16,'Saman','Keells','Sri Lanka','No.20 Negombo',3500,'Ceylon Tea',600),(17,'Chamuditha','Keels','Sri Lanka','No.44/22 Kurunegala',4300,'Munchee Super Cream Cracker',500),(18,'Nimal','Cargills','Sri Lanka','No.25 Colombo',5400,'Nestle Milk Powder',300),(19,'Sunil','Lanka Sathosa','Sri Lanka','No.15 Kandy',2300,'Prima Noodles',200),(20,'Kamal','Laugfs','Sri Lanka','No.12 Galle',1250,'Maliban Lemon Puff',400),(21,'Sandun','Arpico','Sri Lanka','No.88 Matara',7800,'Anchor Butter',150),(22,'Saman','Keells','Sri Lanka','No.20 Negombo',3500,'Ceylon Tea',600),(23,'Chamuditha','Keels','Sri Lanka','No.44/22 Kurunegala',4300,'Munchee Super Cream Cracker',500),(24,'Nimal','Cargills','Sri Lanka','No.25 Colombo',5400,'Nestle Milk Powder',300),(25,'Sunil','Lanka Sathosa','Sri Lanka','No.15 Kandy',2300,'Prima Noodles',200),(26,'Kamal','Laugfs','Sri Lanka','No.12 Galle',1250,'Maliban Lemon Puff',400),(27,'Sandun','Arpico','Sri Lanka','No.88 Matara',7800,'Anchor Butter',150),(28,'Saman','Keells','Sri Lanka','No.20 Negombo',3500,'Ceylon Tea',600),(29,'kavindu','keels','sri lanka','No.44 isurusiriuyana ',60034,'Anchor milk powder',123),(30,'Thisum','Cargils','sri lanka','No.35 kurunegala',73543,'Munchee Choclate Cream Biscuit',500),(31,'pawan','keels','sri lanka','No.76 colombo',60454,'Higland Milkk 500ml',250),(32,'Induwara','keels','sri lanka','No.56  kurunegala',73543,'Tiara Rollo',600),(33,'pawan','keels','sri lanka','No.35 kurunegala',60454,'Anchor milk powder',566),(34,'udantha','keels','sri lanka','No.76 colombo',78878,'choclate',600),(35,'Dineth','Arpico','sri lanka','No.73 colomb',73398,'Tiara Rollo',300),(36,'Thisum','keels','sri lanka','No.73 colomb',60034,'choclate',23),(37,'Dineth','keels','sri lanka','No.56  kurunegala',73398,'Higland Milkk 500ml',23),(38,'udantha','Arpico','sri lanka','No.35 kurunegala',73398,'choclate',2),(39,'Thisum','Cargils','sri lanka','No.73 colomb',60454,'null',500),(40,'Thisum','Cargils','sri lanka','No.44 isurusiriuyana ',73398,'choclate',200),(41,'kavindu','keels','sri lanka','No.73 colomb0',75000,'choclate cookie',1000),(48,'udantha','Food City','sri lanka','No.76 colombo',75000,'Munchee Choclate Cream Biscuit',120),(49,'kavindu','Cargils','Canada','No.35 kurunegala',78878,'Anchor milk powder',100),(55,'Dineth','Cargils','Canada','No.75 colombo',74000,'tea',3000),(57,'udantha','keels','sri lanka','No.76 colombo',78878,'Anchor milk powder',100),(63,'pawan','Kothmale','sri lanka','No.44 isurusiriuyana ',75000,'tea',777),(64,'pawan','Kothmale','sri lanka','No.44 isurusiriuyana ',75000,'tea',777);
/*!40000 ALTER TABLE `orderinsert` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-19  9:39:13
