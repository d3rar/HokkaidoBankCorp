USE HokkaidoBankCorp
SELECT

FullName,

SUM(BALANCE) AS TotalBalance

FROM Accounts a 
JOIN Customers C
ON a.CustomerID = c.CustomerID
GROUP BY FullName
HAVING SUM(BALANCE) > 8000
ORDER BY TotalBalance DESC
