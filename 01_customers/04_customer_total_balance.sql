USE HokkaidoBankCorp

SELECT
FullName, 
SUM(Balance) AS total_customer_balance

FROM Customers c 
JOIN Accounts a on c.CustomerID = a.CustomerID

GROUP BY FullName

ORDER by total_customer_balance DESC