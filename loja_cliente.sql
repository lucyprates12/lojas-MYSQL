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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) NOT NULL,
  `cpf` char(11) NOT NULL,
  `celular` char(11) DEFAULT NULL,
  `EndLogradouro` varchar(100) NOT NULL,
  `EndMunicipio` int NOT NULL,
  `EndCEP` char(8) DEFAULT NULL,
  `Municipio_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Cliente_Municipio` (`Municipio_id`),
  CONSTRAINT `fk_Cliente_Municipio` FOREIGN KEY (`Municipio_id`) REFERENCES `municipio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'João Pedro','98765432100','998765432','Rua das Palmeiras',1,'20031170',1),(2,'Camila Ferreira','45678912300','991234567','Av Brasil',2,'30140110',2),(3,'Rafael Souza','32198765400','996543210','Rua Fortaleza',3,'60060260',3),(4,'João Pedro','98765432100','998765432','Rua das Palmeiras',1,'20031170',1),(5,'Camila Ferreira','45678912300','991234567','Av Brasil',2,'30140110',2),(6,'Rafael Souza','32198765400','996543210','Rua Fortaleza',3,'60060260',3),(7,'Ana Lima','08998885510','88799932220','Rua Veleria',4,'70088990',4),(8,'João Pedro','98765432100','998765432','Rua das Palmeiras',1,'20031170',1),(9,'Camila Ferreira','45678912300','991234567','Av Brasil',2,'30140110',2),(10,'Rafael Souza','32198765400','996543210','Rua Fortaleza',3,'60060260',3),(11,'Ana Lima','08998885510','88799932220','Rua Veleria',4,'70088990',4);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-13 23:40:16
