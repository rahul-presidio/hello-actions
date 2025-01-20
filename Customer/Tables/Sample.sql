CREATE TABLE Sample (
    SampleID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
    OrderDate DATETIME,
    TotalAmount DECIMAL(16, 2)
);
