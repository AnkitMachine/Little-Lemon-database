CREATE DEFINER=`user`@`localhost` PROCEDURE `AddValidBooking`(IN BookingDate DATE, IN TableNumber INT, IN CustomerID INT)
BEGIN
	set @booked = (
		SELECT COUNT(*)
		FROM Bookings AS b
		WHERE b.Date = BookingDate
		AND b.TableNumber = TableNumber
	);
    
    set @is_customer = (
		SELECT COUNT(*)
        FROM Customers AS c
        WHERE c.ID = CustomerID
	);

	START TRANSACTION;

	IF (@booked = 1) THEN
		ROLLBACK;
        SELECT CONCAT("Table ", TableNumber, " is already booked");
	ELSEIF (@is_customer = 0) THEN
		ROLLBACK;
        SELECT CONCAT("Customer ID ", CustomerID, " does not exist");
	ELSE
		INSERT INTO Bookings (Date, TableNumber, CustomerID)
        VALUES (BookingDate, TableNumber, CustomerID);
		COMMIT;
		SELECT CONCAT("Booked Table ", TableNumber, " for Customer ", CustomerID, " on ", BookingDate);
	END IF;
END