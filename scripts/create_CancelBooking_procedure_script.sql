DELIMITER //
CREATE PROCEDURE CancelBooking(IN id INT)
BEGIN
	DELETE FROM bookings WHERE BookingID = id;
	SELECT concat("Booking ", id, " canceled") as Confirmation;
END //
DELIMITER ;

Call CancelBooking(10);