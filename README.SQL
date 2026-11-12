Database Name
SQL
crownfieldeyehospital
Objectives

The database is designed to:

Store patient demographic information.
Manage clinician details and specialties.
Schedule and track appointments.
Record diagnoses and their severity.
Store prescribed medications and treatments.
Manage patient follow-up plans.
Maintain data integrity through primary and foreign key constraints.
Entity Relationship Summary

The database consists of six main tables:

Table	Purpose
patient_table	Stores patient information
clinician_table	Stores clinician information
appointment_table	Stores appointment details
diagnosis_table	Stores diagnosis records
prescription_table	Stores prescribed medications
follow_up_plan	Stores follow-up care plans
Database Structure
1. Patient Table

Stores demographic information about patients.

Table: patient_table
Column	Data Type	Description
PatientID	VARCHAR(10)	Unique Patient Identifier
PFirstName	VARCHAR(50)	Patient First Name
PLastName	VARCHAR(50)	Patient Last Name
DateOfBirth	DATE	Patient DOB
Gender	ENUM	Male, Female, Other
Phone	VARCHAR(20)	Contact Number
Email	VARCHAR(100)	Email Address
PostCode	VARCHAR(10)	Home Postcode
Primary Key
SQL
PatientID

2. Clinician Table

Stores healthcare professional information.

Table: clinician_table
Column	Data Type	Description
ClinicianID	VARCHAR(10)	Unique Clinician Identifier
CFirstName	VARCHAR(50)	First Name
CLastName	VARCHAR(50)	Last Name
Speciality	VARCHAR(50)	Medical Specialty
Phone	VARCHAR(20)	Contact Number
Email	VARCHAR(100)	Email Address
Primary Key
SQL
ClinicianID
Example Specialties
Glaucoma
Retina
Cornea
Cataract
Pediatric Ophthalmology
Neuro-Ophthalmology
Oculoplastics
Uveitis
Medical Retina

3. Appointment Table

Stores patient appointment records.

Table: appointment_table
Column	Data Type	Description
AppointmentID	VARCHAR(10)	Appointment Identifier
PatientID	VARCHAR(10)	Linked Patient
ClinicianID	VARCHAR(10)	Linked Clinician
AppointmentLocation	VARCHAR(100)	Hospital Site
AppointmentDate	DATE	Appointment Date
AppointmentStatus	ENUM	Scheduled, Completed, Cancelled, No-Show
Relationships
SQL
PatientID → patient_table.PatientID
ClinicianID → clinician_table.ClinicianID

4. Diagnosis Table

Stores clinical diagnoses generated during appointments.

Table: diagnosis_table
Column	Data Type	Description
DiagnosisID	VARCHAR(10)	Diagnosis Identifier
AppointmentID	VARCHAR(10)	Linked Appointment
DiagnosisRef	VARCHAR(20)	ICD Reference Code
Description	VARCHAR(255)	Diagnosis Description
Severity	ENUM	Routine, Mild, Moderate, Severe, High, Urgent
Relationship
SQL
AppointmentID → appointment_table.AppointmentID

5. Prescription Table

Stores medication or treatment information.

Table: prescription_table
Column	Data Type	Description
PrescriptionID	VARCHAR(10)	Prescription Identifier
AppointmentID	VARCHAR(10)	Related Appointment
DiagnosisID	VARCHAR(10)	Related Diagnosis
IssuedDate	DATE	Issue Date
Medicine	VARCHAR(150)	Prescribed Medicine
Relationships
SQL
AppointmentID → appointment_table.AppointmentID
DiagnosisID → diagnosis_table.DiagnosisID

6. Follow-Up Plan Table

Stores future care and monitoring requirements.

Table: follow_up_plan
Column	Data Type	Description
Follow_UpID	VARCHAR(10)	Follow-Up Identifier
AppointmentID	VARCHAR(10)	Related Appointment
PrescriptionID	VARCHAR(10)	Related Prescription
DueDate	DATE	Follow-Up Date
Priority	ENUM	Routine, High, Urgent
Follow_UpStatus	ENUM	Pending, Completed, Cancelled, Overdue
Notes	VARCHAR(255)	Additional Notes
Relationships
SQL
AppointmentID → appointment_table.AppointmentID
PrescriptionID → prescription_table.PrescriptionID

Relationship Diagram

PATIENT
│
│ 1
│
▼
APPOINTMENT
▲
│
│ 1
CLINICIAN
 
APPOINTMENT
│
▼
DIAGNOSIS
│
▼
PRESCRIPTION
│
▼
FOLLOW_UP_PLAN

Data Integrity Features

The database includes:

Primary Keys

Every table has a unique primary key:

Plain Text
PatientID
ClinicianID
AppointmentID
DiagnosisID
PrescriptionID
Follow_UpID
Foreign Keys

Used to enforce referential integrity:

SQL
appointment_table → patient_table
appointment_table → clinician_table
 
diagnosis_table → appointment_table
 
prescription_table → appointment_table
prescription_table → diagnosis_table
 
follow_up_plan → appointment_table
follow_up_plan → prescription_table

Constraints
UNIQUE constraints on patient and clinician phone numbers.
UNIQUE constraints on patient and clinician email addresses.
CASCADE updates used where appropriate.
RESTRICT deletion to prevent accidental removal of linked records.
SET NULL used for certain optional relationships.


Crownfield Eye Hospital Database Project

This database was developed as a healthcare information management system for managing ophthalmology patient records, diagnoses, treatments, appointments, and follow-up care using a normalized relational database design.