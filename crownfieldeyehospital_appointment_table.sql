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
-- Table structure for table `appointment_table`
--

DROP TABLE IF EXISTS `appointment_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment_table` (
  `AppointmentID` varchar(10) NOT NULL,
  `PatientID` varchar(10) NOT NULL,
  `ClinicianID` varchar(10) NOT NULL,
  `AppointmentLocation` varchar(100) NOT NULL,
  `AppointmentDate` date NOT NULL,
  `AppointmentStatus` enum('Scheduled','Completed','Cancelled','No-Show') DEFAULT 'Scheduled',
  PRIMARY KEY (`AppointmentID`),
  KEY `FK_App_Patient` (`PatientID`),
  KEY `FK_App_Clinician` (`ClinicianID`),
  CONSTRAINT `FK_App_Clinician` FOREIGN KEY (`ClinicianID`) REFERENCES `clinician_table` (`ClinicianID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_App_Patient` FOREIGN KEY (`PatientID`) REFERENCES `patient_table` (`PatientID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment_table`
--

LOCK TABLES `appointment_table` WRITE;
/*!40000 ALTER TABLE `appointment_table` DISABLE KEYS */;
INSERT INTO `appointment_table` VALUES ('APP001','OP001','DOC001','City Road','2026-10-05','Completed'),('APP002','OP002','DOC002','City Road','2026-10-05','Completed'),('APP003','OP001','DOC001','Bedford','2026-11-16','Scheduled'),('APP004','OP003','DOC001','City Road','2026-10-06','Completed'),('APP005','OP004','DOC003','Croydon','2026-10-07','Completed'),('APP006','OP005','DOC004','City Road','2026-10-08','Completed'),('APP007','OP006','DOC005','Bedford','2026-10-09','Completed'),('APP008','OP007','DOC006','City Road','2026-10-10','Completed'),('APP009','OP008','DOC007','Croydon','2026-10-11','Completed'),('APP010','OP009','DOC008','City Road','2026-10-12','Cancelled'),('APP011','OP010','DOC009','Bedford','2026-10-13','Completed'),('APP012','OP011','DOC010','City Road','2026-10-14','Scheduled'),('APP013','OP012','DOC011','Croydon','2026-10-15','Completed'),('APP014','OP013','DOC012','City Road','2026-10-16','Completed'),('APP015','OP014','DOC013','City Road','2026-10-17','Scheduled');
/*!40000 ALTER TABLE `appointment_table` ENABLE KEYS */;
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
