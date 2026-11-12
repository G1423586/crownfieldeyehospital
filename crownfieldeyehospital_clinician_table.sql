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
-- Table structure for table `clinician_table`
--

DROP TABLE IF EXISTS `clinician_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clinician_table` (
  `ClinicianID` varchar(10) NOT NULL,
  `CFirstName` varchar(50) NOT NULL,
  `CLastName` varchar(50) NOT NULL,
  `Speciality` varchar(50) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  PRIMARY KEY (`ClinicianID`),
  UNIQUE KEY `Phone` (`Phone`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clinician_table`
--

LOCK TABLES `clinician_table` WRITE;
/*!40000 ALTER TABLE `clinician_table` DISABLE KEYS */;
INSERT INTO `clinician_table` VALUES ('DOC001','Maya','Shah','Glaucoma','07800900001','maya.shah@crownfield.nhs.uk'),('DOC002','Leo','Grant','Retina','07800900002','leo.grant@crownfield.nhs.uk'),('DOC003','Priya','Nair','Cornea','07800900003','priya.nair@crownfield.nhs.uk'),('DOC004','Arthur','Pendleton','Cataract','07800900004','arthur.pendleton@crownfield.nhs.uk'),('DOC005','Elena','Rostova','Pediatric Ophthalmology','07800900005','elena.rostova@crownfield.nhs.uk'),('DOC006','Tariq','Mansoor','Neuro-Ophthalmology','07800900006','tariq.mansoor@crownfield.nhs.uk'),('DOC007','Hannah','Abbott','Glaucoma','07800900007','hannah.abbott@crownfield.nhs.uk'),('DOC008','Marcus','Vance','Retina','07800900008','marcus.vance@crownfield.nhs.uk'),('DOC009','Siddharth','Patel','Oculoplastics','07800900009','siddharth.patel@crownfield.nhs.uk'),('DOC010','Grace','Kim','Uveitis','07800900010','grace.kim@crownfield.nhs.uk'),('DOC011','Oliver','Twist','Cornea','07800900011','oliver.twist@crownfield.nhs.uk'),('DOC012','Sarah','Connor','Refractive Surgery','07800900012','sarah.connor@crownfield.nhs.uk'),('DOC013','David','Beckett','Medical Retina','07800900013','david.beckett@crownfield.nhs.uk');
/*!40000 ALTER TABLE `clinician_table` ENABLE KEYS */;
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

-- Dump completed on 2026-11-12 18:38:21
