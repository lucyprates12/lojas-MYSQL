-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: loja
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `contasreceber`
--

DROP TABLE IF EXISTS `contasreceber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contasreceber` (
  `id` int NOT NULL AUTO_INCREMENT,
  `FaturaVenda` int DEFAULT NULL,
  `DataConta` date NOT NULL,
  `Valor` decimal(18,2) NOT NULL,
  `Situacao` enum('1','2','3') DEFAULT NULL,
  `Cliente_ID` int NOT NULL,
  `DataVencimento` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_contasreceber_Cliente` (`Cliente_ID`),
  CONSTRAINT `fk_contasreceber_Cliente` FOREIGN KEY (`Cliente_ID`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contasreceber`
--

LOCK TABLES `contasreceber` WRITE;
/*!40000 ALTER TABLE `contasreceber` DISABLE KEYS */;
INSERT INTO `contasreceber` VALUES (1,7000,'2025-01-10',150.74,'1',1,'2025-05-09'),(2,7000,'2025-01-10',150.74,'3',3,'2025-05-09'),(3,NULL,'2025-04-20',150.74,'2',2,'2025-06-04'),(4,2000,'2025-05-22',150.74,'3',2,'2025-06-26');
/*!40000 ALTER TABLE `contasreceber` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-13 23:40:15
