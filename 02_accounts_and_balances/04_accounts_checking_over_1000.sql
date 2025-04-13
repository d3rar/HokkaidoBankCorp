-- Query for Savings accounts with balance over 7000
USE HokkaidoBankCorp
SELECT AccountID, CustomerID, AccountType, Balance
FROM Accounts 
WHERE AccountType = 'Checking' AND Balance > 1000
       