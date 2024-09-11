-- Let first create our database which is hospital_db
CREATE DATABASE hospital_db;
USE hospital_db;


-- Creating the patients table
CREATE TABLE patients(
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    gender VARCHAR(10) NOT NULL,
    language VARCHAR(20) NOT NULL
);

-- Creating the providers table
CREATE TABLE providers(
    provider_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    provider_speciality VARCHAR(100) NOT NULL,
    email_address VARCHAR(100),
    phone_number VARCHAR(20),
    date_joined DATE NOT NULL
);

-- Creating the visits table
CREATE TABLE visits(
    visit_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT,
    provider_id INT,
    date_of_visit DATE NOT NULL,
    date_scheduled DATE NOT NULL,
    visit_department_id INT,
    visit_type VARCHAR(50) NOT NULL,
    blood_pressure_systollic INT,
    blood_pressure_diastollic DECIMAL(5,2),
    pulse DECIMAL(5,2),
    visit_status VARCHAR(50) NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (provider_id) REFERENCES providers(provider_id)
);
