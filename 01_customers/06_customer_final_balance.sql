USE HokkaidoBankCorp;

--Net Flow per customer
WITH NetFlowPerCustomer AS (
    SELECT 
        a.AccountID,
        SUM(CASE WHEN t.TransactionType = 'Deposit' THEN t.Amount ELSE 0 END) +
        SUM(CASE WHEN t.TransactionType = 'Withdrawal' THEN t.Amount ELSE 0 END) AS Net_Flow
    FROM Accounts a
    JOIN Transactions t ON a.AccountID = t.AccountID
    GROUP BY a.AccountID
)

-- Joining with Customers and Accounts without duplication
SELECT
    c.FullName,
    SUM(a.Balance) AS Previous_Balance,
    SUM(n.Net_Flow) AS Net_Flow,
    SUM(a.Balance + n.Net_Flow) AS Final_Balance
FROM Customers c
JOIN Accounts a ON c.CustomerID = a.CustomerID
JOIN NetFlowPerCustomer n ON a.AccountID = n.AccountID
GROUP BY c.FullName;
