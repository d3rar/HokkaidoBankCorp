-- Query for Savings accounts with balance over 7000
USE HokkaidoBankCorp
SELECT AccountID, CustomerID, AccountType, Balance
FROM Accounts 
WHERE AccountType = 'Savings' AND Balance > 7000
       