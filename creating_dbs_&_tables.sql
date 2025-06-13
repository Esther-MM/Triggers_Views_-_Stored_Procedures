-- create a db and select it
CREATE DATABASE IF NOT EXISTS SalesDB;
USE SalesDB;


-- create a table 'Products'
CREATE TABLE IF NOT EXISTS Products (
	Product_Id INT AUTO_INCREMENT PRIMARY KEY,
    Product_Name VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Quantity INT NOT NULL);
    

-- create another table 'Orders'    
CREATE TABLE IF NOT EXISTS Orders (
	Order_Id INT AUTO_INCREMENT PRIMARY KEY,
    Custome_Name VARCHAR(100) NOT NULL,
    Order_Date TIMESTAMP DEFAULT CURRENT_TIMESTAMP);
    
    
-- create the last table for this db 'Order Items'
CREATE TABLE IF NOT EXISTS OrderItems (
	Order_Item_Id INT AUTO_INCREMENT PRIMARY KEY,
    Order_Id INT NOT NULL,
    Product_Id INT NOT NULL,
    Quantity INT NOT NULL,
    FOREIGN KEY (Order_Id) REFERENCES Orders(Order_Id),
    FOREIGN KEY (Product_Id) REFERENCES Products(Product_id) 
    );
    
    
