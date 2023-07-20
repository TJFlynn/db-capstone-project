use littlelemon;

SELECT MenuName
FROM menus
WHERE MenuID =  ANY (SELECT MenuID
FROM orders
GROUP BY MenuID
HAVING Count(MenuID) > 2);