DELIMITER //
CREATE PROCEDURE UpdateBooking(IN id INT, IN bookingdate DATE)
BEGIN
	UPDATE bookings SET BookingDate = bookingdate WHERE BookingID = id;
	SELECT concat("Booking ", id, " updated") as Confirmation;
END //
DELIMITER ;

Call UpdateBooking(10, "2022-12-17");