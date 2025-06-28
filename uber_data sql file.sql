use uber_data
select * from [dbo].['Uber Request Data$']
--- Inspect Raw Data
SELECT TOP 10 * FROM [dbo].['Uber Request Data$']

--- Clean the Data

-- 1. Handle Null or Missing Values

SELECT COUNT(*) FROM [dbo].['Uber Request Data$'] WHERE [Request id] IS NULL OR [Status] IS NULL;
DELETE FROM [dbo].['Uber Request Data$'] WHERE [Request id] IS NULL OR [Status] IS NULL;

-- 2. Convert Datatypes(if needed)
ALTER TABLE [dbo].['Uber Request Data$']
ALTER COLUMN [Request timestamp] DATETIME;

--- total trips
SELECT COUNT(*) AS Total_Trips FROM [dbo].['Uber Request Data$'] ;

--- Trips per Day
SELECT CAST([Request timestamp] AS DATE) AS TripDate, COUNT(*) AS Total
FROM [dbo].['Uber Request Data$']
GROUP BY CAST([Request timestamp] AS DATE)
ORDER BY TripDate;

--- Top Pickup Location
SELECT [Request id], [Status], COUNT(*) AS Trips
FROM [dbo].['Uber Request Data$']
GROUP BY [Request id], [Status]
ORDER BY Trips DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;

SELECT [Request id], [Pickup point], COUNT(*) AS Trips
FROM [dbo].['Uber Request Data$']
GROUP BY [Request id], [Pickup point]
ORDER BY Trips DESC
OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY;



