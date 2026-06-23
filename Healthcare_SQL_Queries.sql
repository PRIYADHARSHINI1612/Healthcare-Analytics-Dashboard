CREATE DATABASE HealthcareDB;
USE HealthcareDB;
SHOW DATABASES;
CREATE TABLE healthcare_data (
    Patient_ID INT,
    Patient_Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(20),
    Department VARCHAR(50),
    Doctor_Name VARCHAR(100),
    Disease VARCHAR(100),
    Admission_Date DATE,
    Discharge_Date DATE,
    Treatment_Cost INT,
    Insurance_Status VARCHAR(10),
    Patient_Status VARCHAR(50),
    Length_of_Stay INT
);
SHOW TABLES;
SELECT COUNT(*) AS Total_Patients
FROM healthcare_data;
SELECT Department,
       COUNT(*) AS Patient_Count
FROM healthcare_data
GROUP BY Department
ORDER BY Patient_Count DESC;
SELECT Disease,
       COUNT(*) AS Total_Cases
FROM healthcare_data
GROUP BY Disease
ORDER BY Total_Cases DESC;
SELECT Insurance_Status,
       COUNT(*) AS Patient_Count
FROM healthcare_data
GROUP BY Insurance_Status;
SELECT Patient_Status,
       COUNT(*) AS Patient_Count
FROM healthcare_data
GROUP BY Patient_Status
ORDER BY Patient_Count DESC;
SELECT Department,
       ROUND(AVG(Treatment_Cost),2) AS Avg_Treatment_Cost
FROM healthcare_data
GROUP BY Department
ORDER BY Avg_Treatment_Cost DESC;
SELECT Gender,
       COUNT(*) AS Patient_Count
FROM healthcare_data
GROUP BY Gender;
SELECT
    ROUND(AVG(Length_of_Stay),2) AS Average_Stay_Days,
    MIN(Length_of_Stay) AS Minimum_Stay,
    MAX(Length_of_Stay) AS Maximum_Stay
FROM healthcare_data;
SELECT Disease,
       COUNT(*) AS Total_Cases
FROM healthcare_data
GROUP BY Disease
ORDER BY Total_Cases DESC
LIMIT 5;
SELECT
    SUM(Treatment_Cost) AS Total_Revenue
FROM healthcare_data;SELECT Department,
       SUM(Treatment_Cost) AS Total_Revenue
FROM healthcare_data
GROUP BY Department
ORDER BY Total_Revenue DESC;
