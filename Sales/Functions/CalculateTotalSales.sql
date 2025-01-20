CREATE FUNCTION CalculateTotalSales(@ProductID INT)
RETURNS DECIMAL
AS
BEGIN
    DECLARE @TotalSales DECIMAL(18, 2);
    
    SELECT @TotalSales = SUM(TotalAmount)
    FROM SalesTransactions
    WHERE ProductID = @ProductID;
    
    RETURN @TotalSales;
END;
