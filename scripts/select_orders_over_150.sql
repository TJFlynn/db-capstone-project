use littlelemon;
SELECT c.CustomerID, c.FullName, o.OrderID, o.TotalCost, m.MenuName, mi.CourseName
FROM customers as c
JOIN orders as o ON c.CustomerID = o.CustomerID
JOIN menus as m ON o.MenuID = m.MenuID
JOIN menuitems as mi ON m.MenuItemsID = mi.MenuItemsID
WHERE o.TotalCost > 150
ORDER BY o.TotalCost DESC;