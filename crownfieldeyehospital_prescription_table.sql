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
-- Table structure for table `prescription_table`
--

DROP TABLE IF EXISTS `prescription_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescription_table` (
  `PrescriptionID` varchar(10) NOT NULL,
  `AppointmentID` varchar(10) NOT NULL,
  `DiagnosisID` varchar(10) DEFAULT NULL,
  `IssuedDate` date NOT NULL,
  `Medicine` varchar(150) NOT NULL,
  PRIMARY KEY (`PrescriptionID`),
  KEY `FK_Presc_Appointment` (`AppointmentID`),
  KEY `FK_Presc_Diagnosis` (`DiagnosisID`),
  CONSTRAINT `FK_Presc_Appointment` FOREIGN KEY (`AppointmentID`) REFERENCES `appointment_table` (`AppointmentID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `FK_Presc_Diagnosis` FOREIGN KEY (`DiagnosisID`) REFERENCES `diagnosis_table` (`DiagnosisID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription_table`
--

LOCK TABLES `prescription_table` WRITE;
/*!40000 ALTER TABLE `prescription_table` DISABLE KEYS */;
INSERT INTO `prescription_table` VALUES ('PR001','APP001','D001','2026-10-05','Latanoprost 0.005% eye drops'),('PR002','APP001','D001','2026-10-05','Timolol 0.5% eye drops'),('PR003','APP002','D002','2026-10-05','Aflibercept 40mg/ml injection'),('PR004','APP003','D003','2026-11-16','Latanoprost 0.005% eye drops'),('PR005','APP005','D005','2026-10-07','Sodium chloride 5% drops'),('PR006','APP006','D006','2026-10-08','Ketorolac 0.5% ophthalmic'),('PR007','APP007','D007','2026-10-09','Atropine 1% eye drops'),('PR008','APP008','D008','2026-10-10','Methylprednisolone 500mg IV'),('PR009','APP009','D009','2026-10-11','Bimatoprost 0.03% eye drops'),('PR010','APP010','D010','2026-10-12','Prednisolone acetate 1%'),('PR011','APP011','D011','2026-10-13','Chloramphenicol 0.5% drops'),('PR012','APP012','D012','2026-10-14','Dexamethasone 0.1% eye drops'),('PR013','APP013','D013','2026-10-15','Moxifloxacin 0.5% eye drops'),('PR014','APP014','D014','2026-10-16','Artificial tears carboxymethylcellulose'),('PR015','APP015','D015','2026-10-17','Ranibizumab 10mg/ml injection');
/*!40000 ALTER TABLE `prescription_table` ENABLE KEYS */;
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
