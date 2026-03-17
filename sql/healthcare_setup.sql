-- =====================================================
-- Project: Healthcare Insurance Dashboard
-- Author: Sepehr Hajimokhtar
-- Purpose: Create database, table, update data, and setup Power BI user
-- =====================================================

-- 1️⃣ Create Database
CREATE DATABASE IF NOT EXISTS healthcare;
USE healthcare;

-- 2️⃣ Create patients table
DROP TABLE IF EXISTS patients;

CREATE TABLE patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    age INT,
    sex VARCHAR(10),
    bmi FLOAT,
    children INT,
    smoker VARCHAR(10),
    region VARCHAR(20),
    charges FLOAT,
    age_group VARCHAR(20),
    sex_numeric TINYINT,
    smoker_numeric TINYINT,
    cost_per_child FLOAT
);

-- 3️⃣ Update age_group based on age
UPDATE patients
SET age_group = CASE
    WHEN age < 18 THEN 'child'
    WHEN age BETWEEN 18 AND 30 THEN 'young_adult'
    WHEN age BETWEEN 31 AND 50 THEN 'adult'
    ELSE 'senior'
END;

-- 4️⃣ Create Power BI user for remote connection
CREATE USER IF NOT EXISTS 'powerbi'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON healthcare.* TO 'powerbi'@'%';
FLUSH PRIVILEGES;

-- =====================================================
-- End of Setup
-- =====================================================