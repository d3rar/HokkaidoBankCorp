-- Query for total amount of savings and checking accounts
USE HokkaidoBankCorp
SELECT AccountType, SUM(Balance) AS Total_balance
FROM Accounts
GROUP BY AccountType
