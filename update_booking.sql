CREATE DEFINER=`user`@`localhost` PROCEDURE `UpdateBooking`(
	IN BookingID INT,
    IN BookingDate DATE
)
BEGIN
	UPDATE Bookings AS b
    SET b.Date = BookingDate
    WHERE b.Id = BookingID;
    
    SELECT CONCAT("Booking ", BookingID, " updated");
END