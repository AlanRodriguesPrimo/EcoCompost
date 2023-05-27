-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: db_aps
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `pj`
--

DROP TABLE IF EXISTS `pj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pj` (
  `CNPJ` varchar(14) NOT NULL,
  `RazaoSocial_PJ` varchar(45) NOT NULL,
  `Email_PJ` varchar(60) NOT NULL,
  `Password_PJ` varchar(45) NOT NULL,
  `RS_em_conta_PJ` float DEFAULT NULL,
  `data_regis_PJ` date DEFAULT NULL,
  `rua_PJ` varchar(45) DEFAULT NULL,
  `num_end_PJ` varchar(5) DEFAULT NULL,
  `bairro_PJ` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Email_PJ`),
  UNIQUE KEY `CPF_UNIQUE` (`CNPJ`),
  UNIQUE KEY `E-mail_PJ_UNIQUE` (`Email_PJ`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pj`
--

LOCK TABLES `pj` WRITE;
/*!40000 ALTER TABLE `pj` DISABLE KEYS */;
INSERT INTO `pj` VALUES ('12345678901123','Amar','a@adc.com','80c9ef0fb86369cd25f90af27ef53a9e',0,'2023-05-25','a','12','a'),('01385796000100','EcoCompost','ecocompost@ecocompost.com','72ac64a8bcdd8b3621031a4dfb73f0f8',NULL,'2023-05-13','Avenida Inajar se Souza','40','Limão');
/*!40000 ALTER TABLE `pj` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-27 12:55:42
