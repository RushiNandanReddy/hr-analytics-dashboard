Query 1: Employee Count

USE HRAnalyticsDB; 
SELECT SUM(employee_count) AS Employee_Count 
FROM hrdata; 

Query 2: Attrition Count 

SELECT COUNT(attrition) AS Attrition_Count 
FROM hrdata 
WHERE attrition = 'Yes'; 

Query 3: Attrition Rate 

SELECT 
ROUND( 
(CAST((SELECT COUNT(attrition) FROM hrdata WHERE attrition = 
'Yes') AS FLOAT) 
/ SUM(employee_count)) * 100, 
2) AS Attrition_Rate 
FROM hrdata; 

Query 4: Active Employees 

-- Method 1 
SELECT SUM(employee_count) - (SELECT COUNT(attrition) FROM hrdata WHERE 
attrition = 'Yes') 
AS Active_Employee 
FROM hrdata; 

 -- Method 2 
SELECT (SELECT SUM(employee_count) FROM hrdata) - COUNT(attrition) AS 
Active_Employee 
FROM hrdata 
WHERE attrition = 'Yes'; 

Query 5: Average Age 

SELECT ROUND(AVG(CAST(age AS FLOAT)), 0) AS Average_Age 
FROM hrdata; 

Query 6: Attrition by Gender 

SELECT gender, 
       COUNT(attrition) AS Attrition_Count 
FROM hrdata 
WHERE attrition = 'Yes' 
GROUP BY gender 
ORDER BY COUNT(attrition) DESC; 

Query 7: Department Wise Attrition

SELECT 
    department, 
    COUNT(attrition) AS Attrition_Count, 
    ROUND( 
        (CAST(COUNT(attrition) AS FLOAT) 
        / (SELECT COUNT(attrition) FROM hrdata WHERE attrition = 'Yes')) * 
100, 
    2) AS Pct 
FROM hrdata 
WHERE attrition = 'Yes' 
GROUP BY department 
ORDER BY COUNT(attrition) DESC;