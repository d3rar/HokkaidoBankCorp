-- Create Customers table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,              -- Unique ID for each customer (whole number)
    FullName VARCHAR(100),                   -- Customer's full name (up to 100 characters)
    Email VARCHAR(100),                      -- Email address (up to 100 characters)
    Phone VARCHAR(20),                       -- Phone number (up to 20 characters)
    Address VARCHAR(255)                     -- Full address (up to 255 characters)
);

-- Create Accounts table
CREATE TABLE Accounts (
    AccountID INT PRIMARY KEY,               -- Unique ID for each account
    CustomerID INT,                          -- Links account to a customer
    AccountType VARCHAR(50),                 -- Type of account (e.g., Savings, Checking)
    Balance DECIMAL(18,2),                   -- Account balance, max 18 digits total, 2 after decimal
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)  -- Link to Customers table
);

-- Create Transactions table
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,           -- Unique ID for each transaction
    AccountID INT,                           -- Links transaction to an account
    Amount DECIMAL(18,2),                    -- Amount of money in the transaction
    TransactionDate DATE,                    -- Date of the transaction
    TransactionType VARCHAR(50),             -- Type of transaction (e.g., Deposit, Withdrawal)
    FOREIGN KEY (AccountID) REFERENCES Accounts(AccountID)  -- Link to Accounts table
);
