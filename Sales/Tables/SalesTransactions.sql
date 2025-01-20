CREATE TABLE SalesTransactions (
    TransactionID INT PRIMARY KEY IDENTITY(1,1),
    ProductID INT FOREIGN KEY REFERENCES Products(ProductID),
    Quantity INT,
    TransactionDate DATETIME,
    TotalAmount DECIMAL(18, 2)
);
