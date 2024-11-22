-- Day 09/50

USE 50_days_sql;

-- Create Customers table

DROP TABLE IF EXISTS customerss;

CREATE TABLE Customerss (
    CustomerID INT,
    CustomerName VARCHAR(50)
);

-- Create Purchases table

DROP TABLE IF EXISTS purchases;

CREATE TABLE Purchases (
    PurchaseID INT,
    CustomerID INT,
    ProductName VARCHAR(50),
    PurchaseDate DATE
);

-- Insert sample data into Customers table

INSERT INTO Customerss (CustomerID, CustomerName) VALUES
(1, 'John'),
(2, 'Emma'),
(3, 'Michael'),
(4, 'Ben'),
(5, 'John')	;




-- Insert sample data into Purchases table

INSERT INTO Purchases (PurchaseID, CustomerID, ProductName, PurchaseDate) VALUES
(100, 1, 'iPhone', '2024-01-01'),
(101, 1, 'MacBook', '2024-01-20'),	
(102, 1, 'Airpods', '2024-03-10'),
(103, 2, 'iPad', '2024-03-05'),
(104, 2, 'iPhone', '2024-03-15'),
(105, 3, 'MacBook', '2024-03-20'),
(106, 3, 'Airpods', '2024-03-25'),
(107, 4, 'iPhone', '2024-03-22'),	
(108, 4, 'Airpods', '2024-03-29'),
(110, 5, 'Airpods', '2024-02-29'),
(109, 5, 'iPhone', '2024-03-22');



/*
Apple data analyst interview question

Given two tables - Customers and Purchases, 
where Customers contains information about 
customers and Purchases contains information 
about their purchases, 

write a SQL query to find customers who 
bought Airpods after purchasing an iPhone.

*/

-- Find out all customers who bought iPhone
-- All customers who bought Airpods
-- Customer has to buy Airpods after purchasing the iPhone 





SELECT * FROM customerss;
SELECT * FROM purchases;




SELECT 
	DISTINCT c.*
FROM customerss as c
JOIN purchases as p1
ON c.customerid = p1.customerid
JOIN purchases p2
ON c.customerid = p2.customerid		
WHERE p1.productname = 'iPhone'
AND
p2.productname = 'Airpods'	
AND
p1.purchasedate < p2.purchasedate;
	




















