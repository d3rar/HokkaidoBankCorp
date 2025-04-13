-- insert customers into the Customers table
INSERT INTO Customers (CustomerID, FullName, Email, Phone, Address) VALUES
(1, 'Satoshi Nakamoto', 'satoshi@hokkaidobank.jp', '08012345678', 'Tokyo'),
(2, 'Haruki Murakami', 'haruki@hokkaidobank.jp', '08023456789', 'Kyoto'),
(3, 'Yuki Tanaka', 'yuki@hokkaidobank.jp', '08034567890', 'Osaka'),
(4, 'Kenji Yamamoto', 'kenji@hokkaidobank.jp', '08045678901', 'Sapporo'),
(5, 'Emi Suzuki', 'emi@hokkaidobank.jp', '08056789012', 'Fukuoka'),
(6, 'Takashi Ito', 'takashi@hokkaidobank.jp', '08067890123', 'Nagoya'),
(7, 'Aiko Kobayashi', 'aiko@hokkaidobank.jp', '08078901234', 'Kobe'),
(8, 'Ryo Matsumoto', 'ryo@hokkaidobank.jp', '08089012345', 'Sendai'),
(9, 'Hana Shimizu', 'hana@hokkaidobank.jp', '08090123456', 'Yokohama'),
(10, 'Toru Hashimoto', 'toru@hokkaidobank.jp', '08001234567', 'Hiroshima'),
(11, 'Mika Fujimoto', 'mika@hokkaidobank.jp', '08011111111', 'Nagasaki'),
(12, 'Ren Saito', 'ren@hokkaidobank.jp', '08022222222', 'Kagoshima'),
(13, 'Noa Kuroda', 'noa@hokkaidobank.jp', '08033333333', 'Okayama'),
(14, 'Shin Ogawa', 'shin@hokkaidobank.jp', '08044444444', 'Kumamoto'),
(15, 'Yui Nishimura', 'yui@hokkaidobank.jp', '08055555555', 'Nara'),
(16, 'Kenta Arai', 'kenta@hokkaidobank.jp', '08066666666', 'Matsuyama'),
(17, 'Aya Ishikawa', 'aya@hokkaidobank.jp', '08077777777', 'Hakodate'),
(18, 'Daichi Endo', 'daichi@hokkaidobank.jp', '08088888888', 'Oita'),
(19, 'Rina Hoshino', 'rina@hokkaidobank.jp', '08099999999', 'Gifu'),
(20, 'Takuya Nishida', 'takuya@hokkaidobank.jp', '08011223344', 'Shizuoka'),
(21, 'Mei Ueda', 'mei@hokkaidobank.jp', '08022334455', 'Akita'),
(22, 'Sho Kimura', 'sho@hokkaidobank.jp', '08033445566', 'Fukushima'),
(23, 'Nana Hayashi', 'nana@hokkaidobank.jp', '08044556677', 'Aomori'),
(24, 'Hiro Tanabe', 'hiro@hokkaidobank.jp', '08055667788', 'Toyama'),
(25, 'Moe Takahashi', 'moe@hokkaidobank.jp', '08066778899', 'Kochi');


-- insert accounts

INSERT INTO Accounts (AccountID, CustomerID, AccountType, Balance) VALUES
(1001, 1, 'Savings', 9000.00), (1002, 1, 'Checking', 1500.00),
(1003, 2, 'Savings', 7000.00),
(1004, 3, 'Checking', 3200.00),
(1005, 4, 'Savings', 8500.00),
(1006, 5, 'Checking', 1000.00), (1007, 5, 'Savings', 5000.00),
(1008, 6, 'Savings', 7800.00),
(1009, 7, 'Savings', 6000.00),
(1010, 8, 'Checking', 2200.00),
(1011, 9, 'Savings', 9300.00),
(1012, 10, 'Savings', 3100.00),
(1013, 11, 'Checking', 1500.00),
(1014, 12, 'Savings', 8000.00),
(1015, 13, 'Checking', 900.00),
(1016, 14, 'Savings', 7200.00),
(1017, 15, 'Savings', 6100.00),
(1018, 16, 'Checking', 2300.00),
(1019, 17, 'Savings', 4500.00),
(1020, 18, 'Savings', 7700.00),
(1021, 19, 'Checking', 3300.00),
(1022, 20, 'Savings', 6500.00),
(1023, 21, 'Savings', 5900.00),
(1024, 22, 'Checking', 2700.00),
(1025, 23, 'Savings', 8100.00),
(1026, 24, 'Checking', 1200.00),
(1027, 25, 'Savings', 8900.00);

-- Insert transactions
INSERT INTO Transactions (TransactionID, AccountID, Amount, TransactionDate, TransactionType) VALUES
(1000, 100, 1000.00, '2025-04-01', 'Deposit'),
(1001, 100, -200.00, '2025-04-02', 'Withdrawal'),
(1002, 101, 500.00, '2025-04-03', 'Deposit'),
(1003, 102, -100.00, '2025-04-04', 'Withdrawal'),
(1004, 103, 250.75, '2025-04-05', 'Deposit');

-- view all transactions
SELECT * FROM Transactions
