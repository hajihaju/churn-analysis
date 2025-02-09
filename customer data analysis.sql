SHOW DATABASES;
USE customer;
DESCRIBE customer_data;
SELECT * FROM customer_data LIMIT 10;
SELECT 
    Gender, 
    COUNT(Gender) AS TotalCount,
    COUNT(Gender) * 1.0 / (SELECT COUNT(*) FROM customer_data) AS Percentage
FROM 
    customer_data
GROUP BY 
    Gender;
SELECT 
    Contract, 
    COUNT(Contract) AS TotalCount,
    COUNT(Contract) * 1.0 / (SELECT COUNT(*) FROM customer_data) AS Percentage
FROM 
    customer_data
GROUP BY 
    Contract;
SELECT 
    Customer_Status, 
    COUNT(Customer_Status) AS TotalCount, 
    SUM(Total_Revenue) AS TotalRev,
    SUM(Total_Revenue) / (SELECT SUM(Total_Revenue) FROM customer_data) * 100 AS RevPercentage
FROM 
    customer_data
GROUP BY 
    Customer_Status;
SELECT 
    State, 
    COUNT(State) AS TotalCount,
    COUNT(State) * 1.0 / (SELECT COUNT(*) FROM customer_data) AS Percentage
FROM 
    customer_data
GROUP BY 
    State
ORDER BY 
    Percentage DESC;
