DELIMITER //
CREATE PROCEDURE CheckBooking(IN BookDate DATE, IN TableNumber INT)
BEGIN
	SELECT
	CASE
		WHEN BookingDate = BookDate AND TableNo = TableNumber THEN concat("Table ", TableNumber, " is already booked") 
		ELSE "The table is open for booking"
	END AS BookingStatus
	FROM Bookings
	LIMIT 1;
END //
DELIMITER ;

CALL CheckBooking("2023-07-19", 42)