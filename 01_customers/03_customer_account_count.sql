USE HokkaidoBankCorp

SELECT

c.FullName,
COUNT(a.AccountID) AS AccountCount

FROM Accounts a
JOIN Customers c 
ON a.CustomerID = c.CustomerID

GROUP BY  c.FullName
ORDER by AccountCount DESC