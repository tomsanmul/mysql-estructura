CREATE DATABASE  IF NOT EXISTS `pizzeria` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pizzeria`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: pizzeria
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
-- Table structure for table `botiga`
--

DROP TABLE IF EXISTS `botiga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `botiga` (
  `ID_Botiga` int NOT NULL AUTO_INCREMENT,
  `Nom` varchar(45) DEFAULT NULL,
  `Adreça` varchar(128) DEFAULT NULL,
  `CP` varchar(20) DEFAULT NULL,
  `Localitat` varchar(60) DEFAULT NULL,
  `Província` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_Botiga`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `botiga`
--

LOCK TABLES `botiga` WRITE;
/*!40000 ALTER TABLE `botiga` DISABLE KEYS */;
INSERT INTO `botiga` VALUES (1,'Pi','Pi i Maragall 34','08017','Barcelona','Barcelona'),(2,'Sardenya','Sardenya 234','08013','Barcelona','Barcelona'),(3,'Paris','Paris 102','08014','Barcelona','Barcelona'),(4,'Rambla','Rambla de Catalunya 4','08009','Barcelona','Barcelona'),(5,'Gran','Gran de Gracia 45','08011','Badalona','Barcelona'),(6,'Napols','Napols 86','08028','SantaColoma','Barcelona'),(7,'Carrilet','Av. Carrilet 44','08032','Hospitalet','Barcelona'),(8,'Cerdanyola','Altimira 34','08044','Cerdanyola del Valles ','Barcelona');
/*!40000 ALTER TABLE `botiga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoriaproducte`
--

DROP TABLE IF EXISTS `categoriaproducte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoriaproducte` (
  `ID_CategoriaProducte` int NOT NULL AUTO_INCREMENT,
  `ID_TipusProducte` int DEFAULT NULL,
  `Categoria` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_CategoriaProducte`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoriaproducte`
--

LOCK TABLES `categoriaproducte` WRITE;
/*!40000 ALTER TABLE `categoriaproducte` DISABLE KEYS */;
INSERT INTO `categoriaproducte` VALUES (1,NULL,'Petita'),(2,NULL,'Mitjana'),(3,NULL,'Gran'),(4,NULL,'Superior'),(5,NULL,'Supreme');
/*!40000 ALTER TABLE `categoriaproducte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `ID_Client` int NOT NULL AUTO_INCREMENT,
  `Nom` varchar(45) DEFAULT NULL,
  `Cognoms` varchar(45) DEFAULT NULL,
  `Adreça` varchar(128) DEFAULT NULL,
  `CP` varchar(12) DEFAULT NULL,
  `Localitat` varchar(90) DEFAULT NULL,
  `Provincia` varchar(45) DEFAULT NULL,
  `Telefon` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID_Client`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Tomas','Sans Mulero','Gran Via 435, 2-2','08010','Barcelona','Barcelona','678564221'),(2,'Marta','Valdesca Perez','Sicilia 89, Pral 2','08013','Barcelona','Barcelona','687698766'),(3,'Agata','Ruiz Prada','Bruc 45, 4-5','08014','Barcelona','Barcelona','666777888'),(4,'Angel','Galera Fernandez','Girona 34, 4-5','08015','Barcelona','Barcelona','756999787'),(5,'Sonia','Vazquez','Napoles 33, 2-1','08029','Santa Coloma de Gramanet','Barcelona','648111222'),(6,'Ramon','Turró Santana','Foc 45, 1-1','08033','Hospitalet','Barcelona','677446553');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comanda`
--

DROP TABLE IF EXISTS `comanda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comanda` (
  `ID_Comanda` int NOT NULL AUTO_INCREMENT,
  `ID_Client` int DEFAULT NULL,
  `ID_Botiga` int DEFAULT NULL,
  `ID_Empleat` int DEFAULT NULL,
  `TipusEntrega` varchar(25) DEFAULT NULL,
  `DataComanda` datetime DEFAULT NULL,
  `PreuTotal` float DEFAULT NULL,
  PRIMARY KEY (`ID_Comanda`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comanda`
--

LOCK TABLES `comanda` WRITE;
/*!40000 ALTER TABLE `comanda` DISABLE KEYS */;
INSERT INTO `comanda` VALUES (1,1,1,1,'botiga','2022-10-19 17:45:13',22),(2,2,1,4,'repartiment','2022-10-21 19:34:11',13),(3,5,1,4,'repartiment','2022-10-20 12:05:02',31),(4,3,2,6,'botiga','2022-10-22 14:23:12',11),(5,4,1,1,'botiga','2022-10-20 12:34:23',10),(6,6,2,10,'repartiment','2022-10-19 18:44:37',6);
/*!40000 ALTER TABLE `comanda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallcomanda`
--

DROP TABLE IF EXISTS `detallcomanda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detallcomanda` (
  `ID_DetallComanda` int NOT NULL AUTO_INCREMENT,
  `ID_Comanda` int DEFAULT NULL,
  `ID_Producte` int DEFAULT NULL,
  `Quantitat` int DEFAULT NULL,
  `Preu` float DEFAULT NULL,
  PRIMARY KEY (`ID_DetallComanda`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallcomanda`
--

LOCK TABLES `detallcomanda` WRITE;
/*!40000 ALTER TABLE `detallcomanda` DISABLE KEYS */;
INSERT INTO `detallcomanda` VALUES (1,1,1,1,10),(2,1,4,2,6),(3,1,6,1,6),(4,2,3,1,10),(5,2,4,1,3),(6,3,2,1,11),(7,3,5,1,4),(8,3,7,2,16),(9,4,2,1,11),(10,5,1,1,10),(11,6,6,1,6);
/*!40000 ALTER TABLE `detallcomanda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleat`
--

DROP TABLE IF EXISTS `empleat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleat` (
  `ID_Empleat` int NOT NULL AUTO_INCREMENT,
  `ID_Botiga` int DEFAULT NULL,
  `ID_TipusEmpleat` int DEFAULT NULL,
  `Nom` varchar(45) DEFAULT NULL,
  `Cognoms` varchar(45) DEFAULT NULL,
  `NIF` varchar(12) DEFAULT NULL,
  `Telefon` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID_Empleat`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleat`
--

LOCK TABLES `empleat` WRITE;
/*!40000 ALTER TABLE `empleat` DISABLE KEYS */;
INSERT INTO `empleat` VALUES (1,1,1,'Javier','Miranda Vives','34675887E','674476632'),(2,1,2,'Jordi','Giralt Franc','43675476R','675887434'),(3,1,3,'Tomas','Sanchez Martinez','46757445A','756574463'),(4,1,4,'Toni','Setmenat Turró','37645647Y','668754733'),(5,1,4,'Miquel','Serrat Galdós','475665745F','678677867'),(6,2,1,'Santi','Santillana Mir','12653465D','667785544'),(7,2,1,'Marc','Sans Baró','276t64577A','644789435'),(8,2,2,'Ramon','Fernandez Pena','463766332K','714367587'),(9,2,3,'Merche','Ruiz Mesa','346856574F','678456767'),(10,2,4,'David','Rodriguez Perez','374576547D','666777444');
/*!40000 ALTER TABLE `empleat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producte`
--

DROP TABLE IF EXISTS `producte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producte` (
  `ID_Producte` int NOT NULL AUTO_INCREMENT,
  `ID_TipusProducte` int DEFAULT NULL,
  `Nom` varchar(45) DEFAULT NULL,
  `Descripcio` varchar(256) DEFAULT NULL,
  `Imatge` varchar(45) DEFAULT NULL,
  `Preu` float DEFAULT NULL,
  PRIMARY KEY (`ID_Producte`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producte`
--

LOCK TABLES `producte` WRITE;
/*!40000 ALTER TABLE `producte` DISABLE KEYS */;
INSERT INTO `producte` VALUES (1,1,'Pizza 4  formatges','Pizza cremosa i molt bona','pizza1.jpg',10),(2,1,'Pizza 4 estacions','Pizza cremosa i molt bona','pizza2.jpg',11),(3,1,'Pizza Barbacoa','Pizza cremosa i molt bona','pizza3.jpg',12),(4,2,'CocaCola Botella 2L','Beguda ensucrada de cola gran','cola1.jpg',3),(5,2,'CocaCola Llauna','Beguda ensucrada de col','cola2.jpg',4),(6,3,'Hamburguesa Divina','Hamburguesa  deliciosa per lleparse els dits','burguer1.jpg',6),(7,3,'Hamburguesa ExtraChilli','Hamburguesa molt picant','burguer2.jpg',8);
/*!40000 ALTER TABLE `producte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipusempleat`
--

DROP TABLE IF EXISTS `tipusempleat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipusempleat` (
  `ID_TipusEmpleat` int NOT NULL AUTO_INCREMENT,
  `TipusEmpleat` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_TipusEmpleat`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipusempleat`
--

LOCK TABLES `tipusempleat` WRITE;
/*!40000 ALTER TABLE `tipusempleat` DISABLE KEYS */;
INSERT INTO `tipusempleat` VALUES (1,'PersonaldeBotiga'),(2,'GerentBotiga'),(3,'Cuiner'),(4,'Repartidor');
/*!40000 ALTER TABLE `tipusempleat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipusproducte`
--

DROP TABLE IF EXISTS `tipusproducte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipusproducte` (
  `ID_TipusProducte` int NOT NULL AUTO_INCREMENT,
  `Nom` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_TipusProducte`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipusproducte`
--

LOCK TABLES `tipusproducte` WRITE;
/*!40000 ALTER TABLE `tipusproducte` DISABLE KEYS */;
INSERT INTO `tipusproducte` VALUES (1,'Pizza'),(2,'Beguda'),(3,'Hamburguesa');
/*!40000 ALTER TABLE `tipusproducte` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-02  9:56:27
