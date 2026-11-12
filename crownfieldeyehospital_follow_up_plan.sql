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
-- Table structure for table `follow_up_plan`
--

DROP TABLE IF EXISTS `follow_up_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follow_up_plan` (
  `Follow_UpID` varchar(10) NOT NULL,
  `AppointmentID` varchar(10) NOT NULL,
  `PrescriptionID` varchar(10) DEFAULT NULL,
  `DueDate` date NOT NULL,
  `Priority` enum('Routine','High','Urgent') DEFAULT 'Routine',
  `Follow_UpStatus` enum('Pending','Completed','Cancelled','Overdue') DEFAULT 'Pending',
  `Notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Follow_UpID`),
  KEY `FK_FUP_Appointment` (`AppointmentID`),
  KEY `FK_FUP_Prescription` (`PrescriptionID`),
  CONSTRAINT `FK_FUP_Appointment` FOREIGN KEY (`AppointmentID`) REFERENCES `appointment_table` (`AppointmentID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_FUP_Prescription` FOREIGN KEY (`PrescriptionID`) REFERENCES `prescription_table` (`PrescriptionID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follow_up_plan`
--

LOCK TABLES `follow_up_plan` WRITE;
/*!40000 ALTER TABLE `follow_up_plan` DISABLE KEYS */;
INSERT INTO `follow_up_plan` VALUES ('FU001','APP001','PR001','2026-11-16','High','Pending','Review IOP'),('FU002','APP002','PR003','2026-11-02','Urgent','Completed','OCT before review'),('FU003','APP003','PR004','2027-02-08','Routine','Pending','Visual field test'),('FU004','APP004',NULL,'2027-04-06','Routine','Pending','Monitor'),('FU005','APP005','PR005','2026-12-02','Routine','Pending','Corneal topography'),('FU006','APP006','PR006','2026-11-10','Routine','Pending','Post-op cataract check'),('FU007','APP007','PR007','2026-12-15','Routine','Pending','Orthoptic assessment'),('FU008','APP008','PR008','2026-10-24','Urgent','Completed','Visual evoked potential test'),('FU009','APP009','PR009','2026-11-20','High','Pending','Pachymetry review'),('FU011','APP011','PR011','2026-11-30','Routine','Pending','Lid margin assessment'),('FU012','APP012','PR012','2026-10-28','High','Pending','Slit-lamp inflammation check'),('FU013','APP013','PR013','2026-10-22','Urgent','Pending','Corneal re-epithelialisation check'),('FU014','APP014','PR014','2027-04-20','Routine','Pending','Annual refractive refraction check'),('FU015','APP015','PR015','2026-11-14','Routine','Pending','Macular thickness scan');
/*!40000 ALTER TABLE `follow_up_plan` ENABLE KEYS */;
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
