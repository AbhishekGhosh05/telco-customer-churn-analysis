-- CREATE DATABASE telco_customer;
 USE telco_customer;

-- SELECT * FROM telecom;

-- Q1. Total Count of Customer
-- SELECT COUNT(*)
-- FROM telecom ;

-- Q2. Overall Churn Rate
-- SELECT 
--     ROUND(
--         AVG(CASE WHEN churn = 'Yes' THEN 100 ELSE 0 END),
--         2
--     ) AS ChurnRate
-- FROM telecom;

-- Q3. Calculate Gender-wise Churn 
-- SELECT gender, COUNT(*) AS Total_Customers,SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned
-- FROM telecom
-- GROUP BY gender;

-- Q4. Analysis the Contract Type

-- SELECT contract, COUNT(*) as Customer, SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) as Churned
-- FROM telecom
-- GROUP BY contract; 

-- Q5. Analysis Payment Method

-- SELECT paymentmethod, COUNT(*) AS Customer, SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) as Churned
-- FROM telecom
-- GROUP BY paymentmethod;

-- Q6. Analysis Internet Service vs Churn
 
-- SELECT
-- InternetService, COUNT(*) Customers, SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) Churned
-- FROM telecom
-- GROUP BY InternetService;

-- Q7 Analysis Senior Citizen Churn

-- SELECT
-- seniorcitizen, COUNT(*) Customers, SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) Churned
-- FROM telecom
-- GROUP BY SeniorCitizen; 

-- Q8. Average Monthly Charges by Churn

-- SELECT
-- Churn, ROUND(AVG(MonthlyCharges),2)AS AvgMonthlyCharges
-- FROM telecom
-- GROUP BY Churn; 

-- Q9. Average Tenure by Churn

-- SELECT
-- Churn, ROUND(AVG(tenure),2)AS AvgTenure
-- FROM telecom
-- GROUP BY Churn; 

-- Q10. Revenue Lost Due to Churn

-- SELECT
-- ROUND(SUM(TotalCharges),2)AS RevenueLost
-- FROM telecom
-- WHERE Churn='Yes';

 