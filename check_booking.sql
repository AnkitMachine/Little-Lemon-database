CREATE DEFINER=`user`@`localhost` PROCEDURE `CheckBooking`(IN BookingDate DATE, IN TableNumber INT)
BEGIN
	SET @size = (
		SELECT COUNT(*)
		FROM Bookings AS b
		WHERE b.Date = BookingDate
		AND b.TableNumber = TableNumber
    );
    
    IF @size = 1 THEN
		SELECT CONCAT("Table ", TableNumber, " is already booked");
	ELSE
		SELECT CONCAT("Table ", TableNumber, " is available");
	END IF;
END