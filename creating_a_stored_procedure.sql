USE salesdb;

DELIMITER //

CREATE PROCEDURE sp_CreateOrder(
	IN p_customer_name VARCHAR(100),
    IN p_product_id INT,
    IN p_quantity INT
)

BEGIN

	DECLARE v_order_id INT;
    
    -- Insert a record in Orders table and set a order id last recorded in the variable declared above
    INSERT INTO orders (Custome_Name) VALUES (p_customer_name);
    SET v_order_id = LAST_INSERT_ID();
    
    -- Insert a record in the OrderItems table
    INSERT INTO orderitems (Order_Id, Product_Id, Quantity)
    VALUES (v_order_id, p_product_id, p_quantity);
    
    -- Return the last order id used
    SELECT v_order_id AS Order_Id;
    
END //

DELIMITER ;    

    

