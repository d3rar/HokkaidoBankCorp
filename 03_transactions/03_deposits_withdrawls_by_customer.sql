USE HokkaidoBankCorp

SELECT 
c.FullName,
t.TransactionType,
SUM(t.amount) as Transaction_Amount

FROM Customers c
JOIN Accounts a on c.CustomerID = a.CustomerID
JOIN Transactions t on a.AccountID = t.AccountID

GROUP BY c.FullName, t.TransactionType 
ORDER BY FullName ASC