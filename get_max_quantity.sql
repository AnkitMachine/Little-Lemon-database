CREATE PROCEDURE `GetMaxQuantity`()
BEGIN
	SELECT MAX(quantity) AS max_quantity FROM Orders;
END
