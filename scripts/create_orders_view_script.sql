use littlelemon;

CREATE View OrdersView as SELECT OrderID, Quantity, TotalCost FROM Orders WHERE Quantity > 2;

SELECT * FROM OrdersView;