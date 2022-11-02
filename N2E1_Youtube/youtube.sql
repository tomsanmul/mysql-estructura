-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: youtube
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
-- Table structure for table `canal`
--

DROP TABLE IF EXISTS `canal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canal` (
  `id_canal` int NOT NULL AUTO_INCREMENT,
  `id_usuari` int DEFAULT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `descripcio` varchar(255) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  PRIMARY KEY (`id_canal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canal`
--

LOCK TABLES `canal` WRITE;
/*!40000 ALTER TABLE `canal` DISABLE KEYS */;
/*!40000 ALTER TABLE `canal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comentaris`
--

DROP TABLE IF EXISTS `comentaris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comentaris` (
  `id_comentari` int NOT NULL AUTO_INCREMENT,
  `id_usuari` int DEFAULT NULL,
  `id_video` int DEFAULT NULL,
  `comentari` varchar(255) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  PRIMARY KEY (`id_comentari`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentaris`
--

LOCK TABLES `comentaris` WRITE;
/*!40000 ALTER TABLE `comentaris` DISABLE KEYS */;
/*!40000 ALTER TABLE `comentaris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etiquetas`
--

DROP TABLE IF EXISTS `etiquetas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etiquetas` (
  `id_etiqueta` int NOT NULL AUTO_INCREMENT,
  `id_video` int DEFAULT NULL,
  `id_usuari` int DEFAULT NULL,
  `nom` varchar(128) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  PRIMARY KEY (`id_etiqueta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etiquetas`
--

LOCK TABLES `etiquetas` WRITE;
/*!40000 ALTER TABLE `etiquetas` DISABLE KEYS */;
/*!40000 ALTER TABLE `etiquetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_comentaris`
--

DROP TABLE IF EXISTS `historial_comentaris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial_comentaris` (
  `id_historial_comentari` int NOT NULL AUTO_INCREMENT,
  `id_comentari` int DEFAULT NULL,
  `id_usuari` int DEFAULT NULL,
  `estat` varchar(20) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  PRIMARY KEY (`id_historial_comentari`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_comentaris`
--

LOCK TABLES `historial_comentaris` WRITE;
/*!40000 ALTER TABLE `historial_comentaris` DISABLE KEYS */;
/*!40000 ALTER TABLE `historial_comentaris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historial_videos`
--

DROP TABLE IF EXISTS `historial_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historial_videos` (
  `id_historial_video` int NOT NULL AUTO_INCREMENT,
  `id_video` int DEFAULT NULL,
  `id_usuari` int DEFAULT NULL,
  `estat` varchar(20) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  PRIMARY KEY (`id_historial_video`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historial_videos`
--

LOCK TABLES `historial_videos` WRITE;
/*!40000 ALTER TABLE `historial_videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `historial_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist` (
  `id_playlist` int NOT NULL AUTO_INCREMENT,
  `id_usuari` int DEFAULT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `estat` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id_playlist`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuari`
--

DROP TABLE IF EXISTS `usuari`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuari` (
  `ID_Usuari` int NOT NULL AUTO_INCREMENT,
  `NomUsuari` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `E-mail` varchar(100) DEFAULT NULL,
  `DataNaixament` date DEFAULT NULL,
  `Sexe` varchar(25) DEFAULT NULL,
  `CP` varchar(12) DEFAULT NULL,
  `Pais` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID_Usuari`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuari`
--

LOCK TABLES `usuari` WRITE;
/*!40000 ALTER TABLE `usuari` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuari` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuari_suscripcions`
--

DROP TABLE IF EXISTS `usuari_suscripcions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuari_suscripcions` (
  `id_usuari_suscripcions` int NOT NULL AUTO_INCREMENT,
  `id_usuari` int DEFAULT NULL,
  `id_canal` int DEFAULT NULL,
  PRIMARY KEY (`id_usuari_suscripcions`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuari_suscripcions`
--

LOCK TABLES `usuari_suscripcions` WRITE;
/*!40000 ALTER TABLE `usuari_suscripcions` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuari_suscripcions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videos` (
  `id_Video` int NOT NULL AUTO_INCREMENT,
  `id_usuari` int DEFAULT NULL,
  `titol` varchar(45) DEFAULT NULL,
  `nom_Arxiu` varchar(45) DEFAULT NULL,
  `descripcio` varchar(45) DEFAULT NULL,
  `grandaria` bigint DEFAULT NULL,
  `durada` int DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `thumbnail` varchar(45) DEFAULT NULL,
  `reproduccions` int DEFAULT NULL,
  `likes` int DEFAULT NULL,
  `dislikes` int DEFAULT NULL,
  `estat` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_Video`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-02  1:58:23
