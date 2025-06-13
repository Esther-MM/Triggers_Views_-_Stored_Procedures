USE salesdb;

DROP VIEW IF EXISTS vw_OrderSummary;

CREATE VIEW vw_OrderSummary AS
SELECT
	o.Order_Id,
    o.Customer_Name,
    o.Order_Date,
    p.Product_Name,
    p.Price,
    oi.Quantity,
    (p.Price * oi.Quantity) AS Total_Price
FROM Orders o
JOIN orderitems oi ON o.Order_Id = oi.Order_Id
JOIN products p ON oi.Product_Id = p.Product_Id;
    
    

