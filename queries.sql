-- data analysis using sql 

-- KPI’s:

-- Q1) Total Loan Applications
SELECT COUNT(id) AS Total_Applications FROM bank_loan_data
 
-- Q2)MTD Loan Applications

SELECT COUNT(id) AS Total_Applications FROM bank_loan_data
WHERE MONTH(issue_date) = 12
 
-- Q3)PMTD Loan Applications
SELECT COUNT(id) AS Total_Applications FROM bank_loan_data
WHERE MONTH(issue_date) = 11
 

-- Q4)Total Funded Amount

SELECT SUM(loan_amount) AS Total_Funded_Amount FROM bank_loan_data
 
-- Q5)MTD Total Funded Amount
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM bank_loan_data
WHERE MONTH(issue_date) = 12
 
-- Q6)PMTD Total Funded Amount

SELECT SUM(loan_amount) AS Total_Funded_Amount FROM bank_loan_data
WHERE MONTH(issue_date) = 11
 


-- Q7)Total Amount Received

SELECT SUM(total_payment) AS Total_Amount_Collected FROM bank_loan_data
 
-- Q8)MTD Total Amount Received
SELECT SUM(total_payment) AS Total_Amount_Collected FROM bank_loan_data
WHERE MONTH(issue_date) = 12

--Q9) PMTD Total Amount Received
SELECT SUM(total_payment) AS Total_Amount_Collected FROM bank_loan_data
WHERE MONTH(issue_date) = 11
 

-- Q10)Average Interest Rate
SELECT AVG(int_rate)*100 AS Avg_Int_Rate FROM bank_loan_data
 
-- Q11)MTD Average Interest
SELECT AVG(int_rate)*100 AS MTD_Avg_Int_Rate FROM bank_loan_data
WHERE MONTH(issue_date) = 12
 
-- Q12)PMTD Average Interest

SELECT AVG(int_rate)*100 AS PMTD_Avg_Int_Rate FROM bank_loan_data
WHERE MONTH(issue_date) = 11
 

-- Q13)Avg DTI

SELECT AVG(dti)*100 AS Avg_DTI FROM bank_loan_data
 
-- Q14)MTD Avg DTI


SELECT AVG(dti)*100 AS MTD_Avg_DTI FROM bank_loan_data
WHERE MONTH(issue_date) = 12
 
-- Q15)PMTD Avg DTI

SELECT AVG(dti)*100 AS PMTD_Avg_DTI FROM bank_loan_data
WHERE MONTH(issue_date) = 11
 


-- 16)GOOD LOAN ISSUED

Good Loan Percentage
SELECT
    (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100.0) / 
	COUNT(id) AS Good_Loan_Percentage
FROM bank_loan_data
 



--Q17) Good Loan Applications

SELECT COUNT(id) AS Good_Loan_Applications FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'
 

--Q18) Good Loan Funded Amount

SELECT SUM(loan_amount) AS Good_Loan_Funded_amount FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'
 



--Q19) Good Loan Amount Received


SELECT SUM(total_payment) AS Good_Loan_amount_received FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'
 



--Q20) BAD LOAN ISSUED

Bad Loan Percentage
SELECT
    (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0) / 
	COUNT(id) AS Bad_Loan_Percentage
FROM bank_loan_data
 


--Q21) Bad Loan Applications

SELECT COUNT(id) AS Bad_Loan_Applications FROM bank_loan_data
WHERE loan_status = 'Charged Off'
 


--Q22) Bad Loan Funded Amount

SELECT SUM(loan_amount) AS Bad_Loan_Funded_amount FROM bank_loan_data
WHERE loan_status = 'Charged Off'


--Q23) Bad Loan Amount Received
SELECT SUM(total_payment) AS Bad_Loan_amount_received FROM bank_loan_data
WHERE loan_status = 'Charged Off'
 