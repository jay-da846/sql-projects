CREATE DATABASE prodcatdb;
USE prodcatdb;
CREATE TABLE Products (
  ProductID INT PRIMARY KEY,
  ProductName VARCHAR(50),
  Price DECIMAL(10,2),
  Quantity INT
);
INSERT INTO Products VALUES
(1, 'Laptop', 55000.00, 10),
(2, 'Mobile', 15000.00, 25),
(3, 'Tablet', 22000.00, 15),
(4, 'Headphones', 1200.00, 50),
(5, 'Keyboard', 800.00, 40);
SELECT * FROM Products;
UPDATE Products
SET Price = 60000.00
WHERE ProductID = 1;
DELETE FROM Products
WHERE ProductID = 5;
SELECT ProductName, Price
FROM Products;
SELECT * FROM Products
WHERE Price > 500;



