-- Day 17/50
  
  use 50_days_sql;
  
  
DROP TABLE IF EXISTS customers17;


-- Creating the Customers17 table


CREATE TABLE Customers17 (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);


DROP TABLE IF EXISTS purchases17;

-- Creating the Purchases17 table


CREATE TABLE Purchases17 (
    purchase_id INT PRIMARY KEY,
    customer_id INT,
    product_category VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES Customers17(customer_id)
);

-- Inserting sample data into Customers17 table


INSERT INTO Customers17 (customer_id, customer_name) VALUES
    (1, 'Alice'),
    (2, 'Bob'),
    (3, 'Charlie'),
    (4, 'David'),
    (5, 'Emma');

-- Inserting sample data into Purchases17 table

INSERT INTO Purchases17 (purchase_id, customer_id, product_category) VALUES
    (101, 1, 'Electronics'),
    (102, 1, 'Books'),
    (103, 1, 'Clothing'),
    (104, 1, 'Electronics'),
    (105, 2, 'Clothing'),
    (106, 1, 'Beauty'),
    (107, 3, 'Electronics'),
    (108, 3, 'Books'),
    (109, 4, 'Books'),
    (110, 4, 'Clothing'),
    (111, 4, 'Beauty'),
    (112, 5, 'Electronics'),
    (113, 5, 'Books');



/*

Question:
Write an SQL query to find customers who have made 
purchases in all product categories.

Tables:
Customers: customer_id (INT), customer_name (VARCHAR)

Purchases: purchase_id (INT), customer_id (INT), 
product_category (VARCHAR)

Your query should return the customer_id and 
customer_name of these customers.

*/

SELECT * FROM customers;

SELECT * FROM purchases;

-- cx_id, cx_name
-- find total distinct category 
-- how many distinct category each cx purchase from 
-- join both 






SELECT 
    c.customer_id,
    c.customer_name,
    COUNT(DISTINCT p.product_category)
FROM customers17 as c
JOIN 
purchases17 as p
ON p.customer_id = c.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING  COUNT(DISTINCT p.product_category) = 
(SELECT COUNT(DISTINCT product_category) FROM purchases17);





-- DATE :- 30-11-2024       MADHURESH RAJ


