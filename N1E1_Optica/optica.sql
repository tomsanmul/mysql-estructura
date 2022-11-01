-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: optica
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `ID_Client` int NOT NULL AUTO_INCREMENT,
  `Nom` varchar(45) DEFAULT NULL,
  `Adreça` varchar(120) DEFAULT NULL,
  `Ciutat` varchar(60) DEFAULT NULL,
  `Pais` varchar(50) DEFAULT NULL,
  `Telefon` varchar(25) DEFAULT NULL,
  `Fax` varchar(25) DEFAULT NULL,
  `NIF` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID_Client`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Javier Ramirez','Sicilia 320, Pral 2','Barcelona','España','684563574',NULL,'46247583T'),(2,'Daniel Roura','Napoles 44, 5 - 3 Esc A','Badalona','España','723473754',NULL,'29457345R'),(3,'Tomas Sans','Roger de Flor 88, 3-3A','Barcelona','España','683658642',NULL,'42374375A'),(4,'Jaime Gómez','Independcia 323, 2-2','Barcelona','España','673744327',NULL,'39654876D'),(5,'Nuria Casas','Roma 24, 1-1 ','Santa Coloma de Gramanet','España','687345221',NULL,'32764567C');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleat`
--

DROP TABLE IF EXISTS `empleat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleat` (
  `ID_Empleat` int NOT NULL AUTO_INCREMENT,
  `Nom` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_Empleat`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleat`
--

LOCK TABLES `empleat` WRITE;
/*!40000 ALTER TABLE `empleat` DISABLE KEYS */;
INSERT INTO `empleat` VALUES (1,'Carlos Martinez'),(2,'Alicia Sanchez'),(3,'Laia Vivies'),(4,'Ramon Cadarso');
/*!40000 ALTER TABLE `empleat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveidor`
--

DROP TABLE IF EXISTS `proveidor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveidor` (
  `ID_Proveidor` int NOT NULL AUTO_INCREMENT,
  `Nom` varchar(45) DEFAULT NULL,
  `Adreça` varchar(128) DEFAULT NULL,
  `CP` varchar(12) DEFAULT NULL,
  `Ciutat` varchar(60) DEFAULT NULL,
  `Telefon` varchar(20) DEFAULT NULL,
  `Fax` varchar(20) DEFAULT NULL,
  `NIF` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID_Proveidor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveidor`
--

LOCK TABLES `proveidor` WRITE;
/*!40000 ALTER TABLE `proveidor` DISABLE KEYS */;
INSERT INTO `proveidor` VALUES (1,'Solvia S.L.','c/ Mart 34, Bj','08028','Barcelona','937365467','687353276','56436532T'),(2,'MaxiGafas S.L.','c/ Maresme 22, (Local)','08019','Barcelona','938354678','667884332','58336543R'),(3,'TodoGafas S.L.','c/ Girona 34, Bj','08013','Barcelona','938674632','937785343','46376557A');
/*!40000 ALTER TABLE `proveidor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referits`
--

DROP TABLE IF EXISTS `referits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referits` (
  `ID_Referit` int NOT NULL AUTO_INCREMENT,
  `ID_ClientNou` int DEFAULT NULL,
  `ID_ClientReferit` int DEFAULT NULL,
  PRIMARY KEY (`ID_Referit`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referits`
--

LOCK TABLES `referits` WRITE;
/*!40000 ALTER TABLE `referits` DISABLE KEYS */;
INSERT INTO `referits` VALUES (1,2,1),(2,3,1),(3,4,2),(4,5,3);
/*!40000 ALTER TABLE `referits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ulleres`
--

DROP TABLE IF EXISTS `ulleres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ulleres` (
  `ID_Ulleres` int NOT NULL AUTO_INCREMENT,
  `ID_Proveidor` int NOT NULL,
  `Marca` varchar(45) DEFAULT NULL,
  `GraduacioVidreDret` float DEFAULT NULL,
  `GraduacioVidreEsquerre` float DEFAULT NULL,
  `Muntura` varchar(45) DEFAULT NULL,
  `ColorMontura` varchar(45) DEFAULT NULL,
  `ColorVidreDret` varchar(45) DEFAULT NULL,
  `ColorVidreEsquerra` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_Ulleres`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ulleres`
--

LOCK TABLES `ulleres` WRITE;
/*!40000 ALTER TABLE `ulleres` DISABLE KEYS */;
INSERT INTO `ulleres` VALUES (1,1,'Ray-ban',2,2,'flotant','blau','verd','verd'),(2,3,'Oakley',1,1,'pasta','negre','vermell','vermell'),(3,1,'Ray-ban',2,2,'metàl·lica','vermell','blau ','blau'),(4,3,'Polaroid',1,1,'flotant','negre','groc','groc'),(5,2,'Polaroid',2,2,'pasta','blanc','lila','lila');
/*!40000 ALTER TABLE `ulleres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendes`
--

DROP TABLE IF EXISTS `vendes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendes` (
  `ID_Venda` int NOT NULL AUTO_INCREMENT,
  `ID_Ulleres` int DEFAULT NULL,
  `ID_Client` int DEFAULT NULL,
  `ID_Empleat` int DEFAULT NULL,
  `DataVenda` date DEFAULT NULL,
  PRIMARY KEY (`ID_Venda`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendes`
--

LOCK TABLES `vendes` WRITE;
/*!40000 ALTER TABLE `vendes` DISABLE KEYS */;
INSERT INTO `vendes` VALUES (1,2,1,3,'2022-10-17'),(2,1,3,2,'2022-10-17'),(3,4,2,3,'2022-10-18'),(4,3,4,1,'2022-10-18'),(5,4,1,2,'2022-10-19');
/*!40000 ALTER TABLE `vendes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-01 12:15:57
