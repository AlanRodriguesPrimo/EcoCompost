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
-- Table structure for table `pf`
--

DROP TABLE IF EXISTS `pf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pf` (
  `Nome_PF` varchar(45) NOT NULL,
  `CPF_PF` varchar(11) NOT NULL,
  `Email_PF` varchar(60) NOT NULL,
  `Password_PF` varchar(45) NOT NULL,
  `RS_em_conta_PF` float DEFAULT NULL,
  `data_regis_PF` date DEFAULT NULL,
  `rua_PF` varchar(45) DEFAULT NULL,
  `num_end_PF` varchar(5) DEFAULT NULL,
  `bairro_PF` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Email_PF`),
  UNIQUE KEY `CPF_PF_UNIQUE` (`CPF_PF`),
  UNIQUE KEY `E-mail_PF_UNIQUE` (`Email_PF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pf`
--

LOCK TABLES `pf` WRITE;
/*!40000 ALTER TABLE `pf` DISABLE KEYS */;
INSERT INTO `pf` VALUES ('Ana','98778945612','anaana@hotmail.com','5390489da3971cbbcd22c159d54d24da',0,'2023-05-21','Rua Pedro Alba','51','Jardim Elisa Maria'),('Arthur','46567898875','arthur@hotmail.com','68830aef4dbfad181162f9251a1da51b',0,'2023-05-20','Rua Osvaldo Junqueira','56','Jardim Peri'),('daniel','45179829801','danielpereirapereira@icloud.com','21559db293e5e6fe6cd5f9c36a32112a',0,'2023-05-25','rua america','47','jaragua'),('Elisangela Sato','1234567890','elisangela.jesus@docente.unip.br','e10adc3949ba59abbe56e057f20f883e',0,'2023-05-25','Av. Paulista','1000','Centro'),('gabriel','14256987410','gabriel@aa.com','698d51a19d8a121ce581499d7b701668',0,'2023-05-25','Rua','20','João'),('guiswer','17779593111','guiiimo63@gmail.com','6c31fc0f69bbf07cba275ff861d99123',0,'2023-05-25','Rua alguma coisa','2777','Jd Marques d sao vicent'),('Vini','44444444444','joaozinho@gmail.com','81dc9bdb52d04dc20036dbd8313ed055',0,'2023-05-25','rua da esquina','31','bairro'),('Luiz Filipe','438852342','luizetcetc@gmail.com','6dacd27b6569e03ebbf187c6bd237e1e',0,'2023-05-25','La e tal','12','La e pa e pum'),('Matheus','14578963547','matheus@gmail.com','e10adc3949ba59abbe56e057f20f883e',75.625,'2023-05-25','Rua Matheus','45','Jardim Matheus'),('caua','88888888841','petras@gmail.com','dccf6c968cc05403482b60711b698005',0,'2023-05-25','rua escola','77','jardim saraiva'),('fernando','12345678911','test.unip@gmail.com','d41d8cd98f00b204e9800998ecf8427e',0,'2023-05-25','av marque','400','barra funda'),('Vitor Moraes','12345678909','vitor.moraes@teste.ccom','85a76a589710be546cc81d84fdd2a96e',75.625,'2023-05-25','av marques de sao vicente','300','barra funda');
/*!40000 ALTER TABLE `pf` ENABLE KEYS */;
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
