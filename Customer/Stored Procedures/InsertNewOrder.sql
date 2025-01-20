CREATE PROCEDURE InsertNewOrder
    @CustomerID INT,
    @OrderDate DATETIME,
    @TotalAmount DECIMAL(18, 2)
AS
BEGIN
    INSERT INTO Orders (CustomerID, OrderDate, TotalAmount)
    VALUES (@CustomerID, @OrderDate, @TotalAmount);
END;
