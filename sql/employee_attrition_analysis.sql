USE HRAnalyticsDB; 

CREATE TABLE hrdata 
( 
emp_no          BIGINT PRIMARY KEY, 
gender          VARCHAR(50) NOT NULL, 
marital_status  VARCHAR(50), 
age_band        VARCHAR(50), 
age             BIGINT, 
department      VARCHAR(50), 
education       VARCHAR(50), 
education_field VARCHAR(50), 
job_role        VARCHAR(50), 
business_travel VARCHAR(50), 
employee_count  BIGINT, 
attrition       VARCHAR(50), 
attrition_label VARCHAR(50), 
job_satisfaction BIGINT, 
active_employee  BIGINT 
); 
