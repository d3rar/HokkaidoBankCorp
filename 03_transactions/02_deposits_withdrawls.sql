USE HokkaidoBankCorp
SELECT 
transactiontype,
SUM (Amount) AS Total_Amount

FROM Transactions

GROUP BY Transactiontype 