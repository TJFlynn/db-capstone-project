use littlelemon;

# Customers Table
INSERT INTO customers (CustomerID, FullName, ContactNumber, Email)
VALUES
(1, 'Anna Iverson', '1231231234', 'Anna@example.com'),
(2, 'Joakim Iversen', '1231231234', 'Joakim@example.com'),
(3, 'Vanessa McCarthy', '1231231234', 'Vanessa@example.com'),
(4, 'Marcos Romero', '1231231234', 'Marcos@example.com'),
(5, 'Hiroki Yamane', '1231231234', 'Hiroki@example.com'),
(6, 'Diana Pinto', '1231231234', 'Diana@example.com');

INSERT INTO Staff (StaffID, Name, Role, Address, Contact_Number, Email, Annual_Salary)
VALUES
(1,'Mario Gollini','Manager','724, Parsley Lane, Old Town, Chicago, IL',351258074,'Mario.g@littlelemon.com','$70,000'),
(2,'Adrian Gollini','Assistant Manager','334, Dill Square, Lincoln Park, Chicago, IL',351474048,'Adrian.g@littlelemon.com','$65,000'),
(3,'Giorgos Dioudis','Head Chef','879 Sage Street, West Loop, Chicago, IL',351970582,'Giorgos.d@littlelemon.com','$50,000'),
(4,'Fatma Kaya','Assistant Chef','132  Bay Lane, Chicago, IL',351963569,'Fatma.k@littlelemon.com','$45,000'),
(5,'Elena Salvai','Head Waiter','989 Thyme Square, EdgeWater, Chicago, IL',351074198,'Elena.s@littlelemon.com','$40,000'),
(6,'John Millar','Receptionist','245 Dill Square, Lincoln Park, Chicago, IL',351584508,'John.m@littlelemon.com','$35,000');


INSERT INTO Menus (MenuID,MenuItemsID,Cuisine, MenuName)
VALUES
(1, 1, 'Greek', 'Moussaka'),
(2, 2, 'Italian', 'Manti'),
(3, 3, 'Italian', 'Venicia'),
(4, 4, 'Turkish', 'Apertivo'),
(5, 5, 'Greek', 'Corfu');

INSERT INTO MenuItems (MenuItemsID, CourseName, StarterName, DessertName, DrinkName, Price, MenuID)
VALUES
(1, 'Greek Salad','Olives', 'Greek yoghurt', 'Athens White wine', 50, 1),
(2, 'Bean soup', 'Italian Flatbread', 'Ice cream', 'Corfu Red Wine', 75, 2),
(3, 'Pizza', 'Italian Minestrone', 'Cheesecake', 'Italian Coffee', 100, 3),
(4, 'Carbonara', 'Turkish Tomato bread', 'Affogato', 'Roma Red wine', 80, 4),
(5, 'Kabasa', 'Greek Falafel', 'Turkish yoghurt', 'Ankara White Wine', 60, 5);

INSERT INTO Bookings (BookingID, BookingDate, TableNo, CustomerID)
VALUES
(1, '2022-10-10', 5, 1),
(2, '2022-11-12', 3, 3),
(3, '2022-10-11', 2, 2),
(4, '2022-10-13', 2, 1);

INSERT INTO Orders (OrderID, TableNo, MenuID, BookingID, Quantity, TotalCost, CustomerID)
VALUES
(1, 5, 1, 1, 5, 250, 1),
(2, 3, 2, 2, 3, 200, 2),
(3, 2, 2, 3, 1, 37, 3),
(4, 2, 3, 4, 1, 40, 4);

INSERT INTO OrderStatus (OrderStatusID, OrderID, DeliveryDate, Status)
VALUES
(1, 1, '2022-10-10', 'delivered'),
(2, 2, '2022-11-12', 'processing'),
(3, 3, '2022-10-11', 'delivered'),
(4, 4, '2022-10-13', 'delivered');