USE HokkaidoBankCorp

SELECT
FullName, 
SUM(CASE WHEN t.TransactionType = 'Deposit' THEN t.Amount ELSE 0 END) + 
SUM(CASE WHEN t.TransactionType = 'Withdrawal' THEN t.Amount ELSE 0 END) AS Net_flow

FROM Customers c 
JOIN Accounts a on c.CustomerID = a.CustomerID
JOIN Transactions t on a.AccountID = t.AccountID

GROUP BY FullName