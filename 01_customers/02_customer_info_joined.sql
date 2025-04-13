USE HokkaidoBankCorp
SELECT 
c.CustomerID,
c.FullName,
a.Balance,
a.AccountID,
a.AccountType,
c.Email,
c.Phone,
c.Address

FROM Accounts a
JOIN Customers c
ON c.CustomerID = a.CustomerID
