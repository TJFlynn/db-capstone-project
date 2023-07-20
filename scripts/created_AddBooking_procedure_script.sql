DELIMITER //
CREATE PROCEDURE AddBooking(IN bookingid INT, IN customerid INT, IN bookingdate DATE, IN tablenumber INT)
BEGIN
INSERT INTO bookings (BookingID, BookingDate, TableNo, CustomerID)
VALUES (bookingid, bookingdate, tablenumber, customerid);
SELECT concat("New booking added") as Confirmation;
END //
DELIMITER ;

Call AddBooking(10, 3, "2022-12-30", 4);