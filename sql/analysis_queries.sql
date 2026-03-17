-- =====================================================
-- Analysis Queries for Healthcare Dashboard
-- Author: Sepehr Hajimokhtar
-- =====================================================

-- 1️⃣ Average charges by smoker status
SELECT smoker, AVG(charges) AS avg_charges
FROM patients
GROUP BY smoker;

-- 2️⃣ Average charges by region
SELECT region, AVG(charges) AS avg_charges
FROM patients
GROUP BY region;

-- 3️⃣ Count of patients by age_group
SELECT age_group, COUNT(*) AS total_patients
FROM patients
GROUP BY age_group;

-- 4️⃣ Average charges by BMI category
SELECT 
    CASE 
        WHEN bmi < 18.5 THEN 'underweight'
        WHEN bmi BETWEEN 18.5 AND 24.9 THEN 'normal'
        WHEN bmi BETWEEN 25 AND 29.9 THEN 'overweight'
        ELSE 'obese'
    END AS bmi_category,
    AVG(charges) AS avg_charges
FROM patients
GROUP BY bmi_category;