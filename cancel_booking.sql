CREATE DEFINER=`user`@`localhost` PROCEDURE `CancelBooking`(
	IN BookingID INT
)
BEGIN
	DELETE FROM Bookings WHERE ID = BookingID;
	COMMIT;
    SELECT CONCAT("Booking ", BookingID, " canceled");
END