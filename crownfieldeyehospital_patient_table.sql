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
-- Table structure for table `patient_table`
--

DROP TABLE IF EXISTS `patient_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_table` (
  `PatientID` varchar(10) NOT NULL,
  `PFirstName` varchar(50) NOT NULL,
  `PLastName` varchar(50) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Gender` enum('Male','Female','Other') NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `PostCode` varchar(10) NOT NULL,
  PRIMARY KEY (`PatientID`),
  UNIQUE KEY `Phone` (`Phone`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_table`
--

LOCK TABLES `patient_table` WRITE;
/*!40000 ALTER TABLE `patient_table` DISABLE KEYS */;
INSERT INTO `patient_table` VALUES ('OP001','Amina','Yusuf','1988-04-12','Female','07700900101','amina.yusuf@example.com','NE1 4AB'),('OP002','Daniel','Reed','1975-09-23','Male','07700900102','daniel.reed@example.com','N16 7QP'),('OP003','Sofia','Bennett','1992-02-17','Female','07700900103','sofia.bennett@example.com','E8 2LD'),('OP004','Michael','Okoro','1980-11-05','Male','07700900104','michael.okoro@example.com','SE6 3RT'),('OP005','Liam','Henderson','1995-03-10','Male','07700900105','liam.henderson@example.com','B1 1AA'),('OP006','Emma','Watson','1989-07-22','Female','07700900106','emma.watson@example.com','B2 4QA'),('OP007','Noah','Taylor','2001-12-04','Male','07700900107','noah.taylor@example.com','CV9 1AP'),('OP008','Olivia','Davies','1968-05-19','Female','07700900108','olivia.davies@example.com','CV9 2BE'),('OP009','Ethan','Evans','1984-08-30','Male','07700900109','ethan.evans@example.com','B77 1AB'),('OP010','Ava','Thomas','1999-10-14','Female','07700900110','ava.thomas@example.com','B78 3DF'),('OP011','Lucas','Roberts','1972-01-28','Male','07700900111','lucas.roberts@example.com','E1 6AN'),('OP012','Mia','Johnson','2003-06-11','Female','07700900112','mia.johnson@example.com','EC1A 1BB'),('OP013','James','Wilson','1961-03-15','Male','07700900113','james.wilson@example.com','SW1A 1AA'),('OP014','Chloe','Brown','1994-09-09','Female','07700900114','chloe.brown@example.com','W1D 3QU');
/*!40000 ALTER TABLE `patient_table` ENABLE KEYS */;
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
