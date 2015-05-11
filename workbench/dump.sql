CREATE DATABASE  IF NOT EXISTS `datawarehouse_accidents` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `datawarehouse_accidents`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: datawarehouse_accidents
-- ------------------------------------------------------
-- Server version	5.6.24-enterprise-commercial-advanced-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accident`
--

DROP TABLE IF EXISTS `accident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accident` (
  `numac` int(11) NOT NULL,
  `com` int(11) NOT NULL,
  `catr` int(11) NOT NULL,
  `catv` int(11) NOT NULL,
  `nbMort` int(11) NOT NULL,
  `nbBlesseGrave` int(11) NOT NULL,
  `nbBlesseLeger` int(11) NOT NULL,
  `nbIndemes` int(11) NOT NULL,
  PRIMARY KEY (`numac`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accident`
--

LOCK TABLES `accident` WRITE;
/*!40000 ALTER TABLE `accident` DISABLE KEYS */;
/*!40000 ALTER TABLE `accident` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cp`
--

DROP TABLE IF EXISTS `cp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cp` (
  `cp` int(11) NOT NULL,
  `dep` int(11) NOT NULL,
  PRIMARY KEY (`cp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cp`
--

LOCK TABLES `cp` WRITE;
/*!40000 ALTER TABLE `cp` DISABLE KEYS */;
INSERT INTO `cp` VALUES (91000,91),(91130,91);
/*!40000 ALTER TABLE `cp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `route` (
  `catr` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  PRIMARY KEY (`catr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES (1,'Autoroute'),(2,'Route nationale'),(3,'Route Departementale'),(4,'Voie Communale'),(5,'Hors Reseau Public'),(6,'Parking'),(9,'Autre');
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicule`
--

DROP TABLE IF EXISTS `vehicule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicule` (
  `catv` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  PRIMARY KEY (`catv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicule`
--

LOCK TABLES `vehicule` WRITE;
/*!40000 ALTER TABLE `vehicule` DISABLE KEYS */;
INSERT INTO `vehicule` VALUES (1,'Bicyclette'),(2,'Cyclomoteur < 50cm3'),(3,'Voiturette'),(4,'Scooter Immatriculé'),(5,'Motocyclette'),(6,'Side-car'),(7,'VL Seul'),(8,'VL + Caravane'),(9,'VL + Remorque'),(10,'Vehicule Utilitaire'),(11,'Vehicule Utilitaire + Caravane'),(12,'Vehicule Utilitaire + Remorque'),(13,'Poids Lourd Seul'),(14,'Poids Lourds > 7,5T'),(15,'Poids Lourds + Remorque'),(16,'Tracteur'),(17,'Tracteur + Semi-remorque'),(18,'Transport en commun'),(19,'Tramway'),(20,'Engin special'),(21,'Tracteur agricole'),(30,'Scooter < 50cm3'),(31,'Moto < 125cm3'),(32,'Scooter < 125cm3'),(33,'Moto > 125cm3'),(34,'Scooter > 125cm3'),(35,'Quad leger'),(36,'Quad Lourd'),(37,'Autobus'),(38,'Autocar'),(39,'Train'),(40,'Tramway'),(90,'Autre');
/*!40000 ALTER TABLE `vehicule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ville`
--

DROP TABLE IF EXISTS `ville`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ville` (
  `com` int(11) NOT NULL,
  `cp` int(11) NOT NULL,
  `dpt` int(11) NOT NULL,
  PRIMARY KEY (`com`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ville`
--

LOCK TABLES `ville` WRITE;
/*!40000 ALTER TABLE `ville` DISABLE KEYS */;
/*!40000 ALTER TABLE `ville` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-11 11:49:46
