USE HRAnalyticsDB;

BULK INSERT hrdata 
FROM 'C:\Users\rushi\Downloads\AURORA\DATA ANALYSISPROJECT\DA PROJECT 2\DATA\hrdata.csv'
WITH ( 
    FIRSTROW = 2,          -- Skip header row
    FIELDTERMINATOR = ',', -- Columns separated by comma
    ROWTERMINATOR = '\n'   -- New line separator
);
