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

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '19afd0c5-c239-11f1-95ff-d0460c81d606:1-139';

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

--
-- Dumping routines for database 'crownfieldeyehospital'
--
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-12 18:40:58
