CREATE DATABASE  IF NOT EXISTS `crownfieldeyehospital` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `crownfieldeyehospital`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: crownfieldeyehospital
-- ------------------------------------------------------
-- Server version	9.7.0

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '19afd0c5-c239-11f1-95ff-d0460c81d606:1-138';

--
-- Table structure for table `diagnosis_table`
--

DROP TABLE IF EXISTS `diagnosis_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnosis_table` (
  `DiagnosisID` varchar(10) NOT NULL,
  `AppointmentID` varchar(10) NOT NULL,
  `DiagnosisRef` varchar(20) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Severity` enum('Routine','Mild','Moderate','Severe','High','Urgent') DEFAULT 'Routine',
  PRIMARY KEY (`DiagnosisID`),
  KEY `FK_Diag_Appointment` (`AppointmentID`),
  CONSTRAINT `FK_Diag_Appointment` FOREIGN KEY (`AppointmentID`) REFERENCES `appointment_table` (`AppointmentID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnosis_table`
--

LOCK TABLES `diagnosis_table` WRITE;
/*!40000 ALTER TABLE `diagnosis_table` DISABLE KEYS */;
INSERT INTO `diagnosis_table` VALUES ('D001','APP001','H40.0','Ocular hypertension','High'),('D002','APP002','H35.81','Diabetic macular oedema','Urgent'),('D003','APP003','H40.0','Ocular hypertension','Routine'),('D004','APP004','H40.00','Glaucoma suspect','Routine'),('D005','APP005','H18.6','Keratoconus','Routine'),('D006','APP006','H25.9','Age-related cataract','Moderate'),('D007','APP007','H50.0','Strabismus (childhood)','Routine'),('D008','APP008','H46.9','Optic neuritis','Urgent'),('D009','APP009','H40.1','Primary open-angle glaucoma','High'),('D010','APP010','H33.2','Serous retinal detachment','Urgent'),('D011','APP011','H02.0','Entropion and trichiasis','Routine'),('D012','APP012','H20.9','Anterior uveitis','High'),('D013','APP013','H16.0','Corneal ulceration','Urgent'),('D014','APP014','H52.1','Myopia and astigmatism','Mild'),('D015','APP015','H35.3','Age-related macular degeneration','Moderate');
/*!40000 ALTER TABLE `diagnosis_table` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-12 18:38:22
