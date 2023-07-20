DELIMITER //
CREATE PROCEDURE AddValidBooking(IN BookDate DATE, IN TableNumber INT)
BEGIN
	START TRANSACTION;
	INSERT INTO bookings (BookingDate, TableNo, CustomerID) VALUES (BookDate, TableNumber, 1);
    SELECT Count(BookingID) INTO @BookingCount FROM Bookings WHERE BookingDate = BookDate AND TableNo = TableNumber;
    IF @BookingCount = 1 THEN 
		COMMIT;
    ELSE
		ROLLBACK;
	END IF;
    SELECT 
    CASE 
		WHEN @BookingCount = 1 THEN concat("Booking table ", TableNumber)
        ELSE concat("Table ", TableNumber, " is already booked - canceling booking")
	END AS BookingStatus
    FROM bookings
    Limit 1;
END //
DELIMITER ;
CALL AddValidBooking("2022-10-10", 7)