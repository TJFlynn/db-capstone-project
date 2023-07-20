CREATE PROCEDURE GetMaxQuantity()  
SELECT Max(Quantity)
FROM Orders;


CALL GetMaxQuantity();