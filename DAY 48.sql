-- SQL Challenge 48/50

use 50_days_sql;


CREATE TABLE Customers48 (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    City VARCHAR(50),
    Country VARCHAR(50)
);

CREATE TABLE Orders48 (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers48(CustomerID)
);

-- Insert records into the 'Customers' table

INSERT INTO Customers48 (CustomerID, CustomerName, City, Country) 
VALUES 
(1, 'John Doe', 'New York', 'USA'),
(2, 'Jane Smith', 'Los Angeles', 'USA'),
(3, 'Michael Johnson', 'Chicago', 'USA'),
(4, 'Emily Brown', 'Houston', 'USA');

-- Insert records into the 'Orders' table

INSERT INTO Orders48 (OrderID, CustomerID, OrderDate, TotalAmount) 
VALUES 
(101, 1, '2024-05-10', 150.00),
(102, 2, '2024-05-11', 200.00),
(103, 1, '2024-05-12', 100.00),
(104, 3, '2024-05-13', 300.00);


/*
-- Question
You are given customers and orders table with
columns
customers has columns 
cx_id, cx_name, city, country

orders table has COLUMNS
order_id, cx_id, order_date, totalamount

Write an SQL query to retrive 
customer details along with their total order amounts
(if any). 
    
Include the customer's name, city, country, and total order amount. 
    
If a customer hasn't placed any orders, 
display 'NULL' for the total order amount."

*/




SELECT * FROM customers48;

SELECT * FROM orders48;


SELECT 
    c.*,
    SUM(o.totalamount) as total_orders
FROM customers48 as c
LEFt JOIN
orders48 as o
ON o.customerid = c.customerid
GROUP BY 1;








