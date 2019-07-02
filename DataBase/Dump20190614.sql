CREATE DATABASE  IF NOT EXISTS `biblio_ucm` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `biblio_ucm`;
-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: biblio_ucm
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `estudante`
--

DROP TABLE IF EXISTS `estudante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `estudante` (
  `idEstudante` int(9) NOT NULL AUTO_INCREMENT,
  `codigoEstudante` int(9) NOT NULL,
  `nomeEstudante` varchar(100) NOT NULL,
  `apelidoEstudante` varchar(50) NOT NULL,
  `curso` varchar(100) NOT NULL,
  `dataRegisto` datetime NOT NULL,
  PRIMARY KEY (`idEstudante`),
  UNIQUE KEY `codigoEstudante` (`codigoEstudante`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudante`
--

LOCK TABLES `estudante` WRITE;
/*!40000 ALTER TABLE `estudante` DISABLE KEYS */;
INSERT INTO `estudante` VALUES (1,700938746,'Joana Fernando','Jaime','Direito','2019-06-13 12:23:15'),(2,699876875,'Mária João','Bernardo','Recursos Humanos','2019-06-13 12:23:51'),(3,707898495,'Ayrton Kassandro Ferreira Satar','Pereira','Tecnologias de Informação','2019-06-13 12:24:19'),(4,987676542,'João Ernesto','Artur','Tecnologias de Informação','2019-06-14 10:10:44'),(5,334566765,'Raquel','Lurdes','Administração de empresas','2019-06-14 10:11:45'),(6,234543234,'Artur','Camuene','Gestão Hospitalar','2019-06-14 10:12:11');
/*!40000 ALTER TABLE `estudante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livro`
--

DROP TABLE IF EXISTS `livro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `livro` (
  `codigoLivro` int(6) NOT NULL,
  `nomeLivro` varchar(100) NOT NULL,
  `categoriaLivro` varchar(100) NOT NULL,
  `dataRegisto` datetime NOT NULL,
  PRIMARY KEY (`codigoLivro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livro`
--

LOCK TABLES `livro` WRITE;
/*!40000 ALTER TABLE `livro` DISABLE KEYS */;
INSERT INTO `livro` VALUES (2234,'Aprenda a programação I','Informática','2019-06-14 10:08:57'),(2345,'Aprenda a programar II','Informática','2019-06-14 10:09:28'),(2534,'Aprenda a programar I','Informática','2019-06-14 10:07:52'),(2654,'O astranauta','Literatura Moçambicana','2019-06-14 10:08:34'),(8763,'Leis Moçambicanas','Direito','2019-06-14 10:10:04'),(8765,'Aprenda a programação II','Informática','2019-06-14 10:08:07'),(9872,'Direito Penal','Direito','2019-06-13 13:57:14');
/*!40000 ALTER TABLE `livro` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `insercao_livro` AFTER INSERT ON `livro` FOR EACH ROW insert into livro_requirido values (default, new.codigoLivro, 0) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `livro_requirido`
--

DROP TABLE IF EXISTS `livro_requirido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `livro_requirido` (
  `idLivro_requirido` int(6) NOT NULL AUTO_INCREMENT,
  `codigoLivro` int(6) NOT NULL,
  `numero_vezes` int(6) DEFAULT '0',
  PRIMARY KEY (`idLivro_requirido`),
  KEY `codigoLivro` (`codigoLivro`),
  CONSTRAINT `livro_requirido_ibfk_1` FOREIGN KEY (`codigoLivro`) REFERENCES `livro` (`codigolivro`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livro_requirido`
--

LOCK TABLES `livro_requirido` WRITE;
/*!40000 ALTER TABLE `livro_requirido` DISABLE KEYS */;
INSERT INTO `livro_requirido` VALUES (1,9872,4),(2,2534,0),(3,8765,1),(4,2654,0),(5,2234,3),(6,2345,1),(7,8763,1);
/*!40000 ALTER TABLE `livro_requirido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisicao`
--

DROP TABLE IF EXISTS `requisicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `requisicao` (
  `codigoRequisicao` int(6) NOT NULL AUTO_INCREMENT,
  `codigoRequiridor` int(9) NOT NULL,
  `codigoLivro` int(6) NOT NULL,
  `dataRegisto` datetime NOT NULL,
  PRIMARY KEY (`codigoRequisicao`),
  KEY `codigoRequiridor_idx` (`codigoRequiridor`),
  KEY `codigoLivro` (`codigoLivro`),
  CONSTRAINT `requisicao_ibfk_1` FOREIGN KEY (`codigoRequiridor`) REFERENCES `estudante` (`codigoestudante`),
  CONSTRAINT `requisicao_ibfk_2` FOREIGN KEY (`codigoLivro`) REFERENCES `livro` (`codigolivro`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisicao`
--

LOCK TABLES `requisicao` WRITE;
/*!40000 ALTER TABLE `requisicao` DISABLE KEYS */;
INSERT INTO `requisicao` VALUES (1,700938746,9872,'2019-06-13 13:58:47'),(2,334566765,9872,'2019-06-14 14:06:21'),(3,334566765,9872,'2019-06-14 14:06:49'),(4,334566765,9872,'2019-06-14 14:07:16'),(6,707898495,2234,'2019-06-14 14:08:45'),(7,707898495,2234,'2019-06-14 14:09:19'),(8,707898495,8765,'2019-06-14 14:09:36'),(9,707898495,2345,'2019-06-14 14:09:46'),(10,707898495,8763,'2019-06-14 14:10:01'),(11,707898495,2234,'2019-06-14 14:10:22');
/*!40000 ALTER TABLE `requisicao` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `nova_requisicao` AFTER INSERT ON `requisicao` FOR EACH ROW update livro_requirido set numero_vezes = numero_vezes + 1 where codigoLivro = new.codigoLivro */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-14 14:14:15
