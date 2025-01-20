CREATE PROCEDURE InsertSaleTransaction
    @ProductID INT,
    @Quantity INT,
    @TransactionDate DATETIME
AS
BEGIN
    DECLARE @Price DECIMAL(18, 2);
    DECLARE @TotalAmount DECIMAL(18, 2);
    
    SELECT @Price = Price FROM Products WHERE ProductID = @ProductID;
    
    SET @TotalAmount = @Price * @Quantity;

    INSERT INTO SalesTransactions (ProductID, Quantity, TransactionDate, TotalAmount)
    VALUES (@ProductID, @Quantity, @TransactionDate, @TotalAmount);
END;
