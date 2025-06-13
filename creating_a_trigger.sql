USE salesdb;

DELIMITER //

CREATE TRIGGER trg_UpdateProductStock
AFTER INSERT ON OrderItems
FOR EACH ROW

BEGIN
	UPDATE products
    SET Quantity = Quantity - NEW.Quantity
    WHERE Product_Id = NEW.Product_Id;
END //

DELIMITER ;



    

    