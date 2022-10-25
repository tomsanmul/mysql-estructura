CREATE DATABASE  IF NOT EXISTS `optica` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `optica`;

-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: pizzeria
-- ------------------------------------------------------
-- Server version	8.0.28



-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: optica
-- ------------------------------------------------------
-- Server version	8.0.28

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleat`
--

LOCK TABLES `empleat` WRITE;
/*!40000 ALTER TABLE `empleat` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `muntura`
--

DROP TABLE IF EXISTS `muntura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `muntura` (
  `ID_Muntura` int NOT NULL AUTO_INCREMENT,
  `TipusMuntura` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID_Muntura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `muntura`
--

LOCK TABLES `muntura` WRITE;
/*!40000 ALTER TABLE `muntura` DISABLE KEYS */;
/*!40000 ALTER TABLE `muntura` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveidor`
--

LOCK TABLES `proveidor` WRITE;
/*!40000 ALTER TABLE `proveidor` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referits`
--

LOCK TABLES `referits` WRITE;
/*!40000 ALTER TABLE `referits` DISABLE KEYS */;
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
  `Marca` varchar(45) DEFAULT NULL,
  `GraduacioVidreDret` float DEFAULT NULL,
  `GraduacioVidreEsquerre` float DEFAULT NULL,
  `Muntura` int DEFAULT NULL,
  `ColorMontura` varchar(45) DEFAULT NULL,
  `ColorVidreDret` varchar(45) DEFAULT NULL,
  `ColorVidreEsquerra` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_Ulleres`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ulleres`
--

LOCK TABLES `ulleres` WRITE;
/*!40000 ALTER TABLE `ulleres` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendes`
--

LOCK TABLES `vendes` WRITE;
/*!40000 ALTER TABLE `vendes` DISABLE KEYS */;
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

-- Dump completed on 2022-10-20 13:27:14
