USE prodcatdb;
SHOW TABLES;
SELECT * FROM Products;
DROP TABLE Products;
DROP TABLE Products;
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
(5, 'Keyboard', 800.00, 40),
(6, 'Monitor', 12000.00, 12),
(7, 'Mouse', 500.00, 60),
(8, 'Printer', 7000.00, 8),
(9, 'Camera', 30000.00, 5),
(10, 'Speaker', 2500.00, 20);
SELECT * 
FROM Products
WHERE Price > 10000;
SELECT * 
FROM Products
ORDER BY Price DESC;
SELECT * 
FROM Products
WHERE ProductName LIKE 'M%';
SELECT DISTINCT Quantity 
FROM Products;