CREATE FUNCTION GetTotalOrders(@CustomerID INT)
RETURNS DECIMAL
AS
BEGIN
    DECLARE @TotalOrders DECIMAL(18, 2);
    
    SELECT @TotalOrders = SUM(TotalAmount)
    FROM Orders
    WHERE CustomerID = @CustomerID;
    
    RETURN @TotalOrders;
END;
