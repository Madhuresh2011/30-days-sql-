-- Day 25/50 days sql challenge

use 50_days_sql;


-- Creating the customers25 table

CREATE TABLE customers25 (
    id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    city VARCHAR(50),
    address VARCHAR(100),
    phone_number VARCHAR(20)
);

-- Inserting sample data into the customers25 table


INSERT INTO customers25 (id, first_name, last_name, city, address, phone_number) VALUES
    (8, 'John', 'Joseph', 'San Francisco', NULL, '928868164'),
    (7, 'Jill', 'Michael', 'Austin', NULL, '8130567692'),
    (4, 'William', 'Daniel', 'Denver', NULL, '813155200'),
    (5, 'Henry', 'Jackson', 'Miami', NULL, '8084557513'),
    (13, 'Emma', 'Isaac', 'Miami', NULL, '808690201'),
    (14, 'Liam', 'Samuel', 'Miami', NULL, '808555201'),
    (15, 'Mia', 'Owen', 'Miami', NULL, '806405201'),
    (1, 'Mark', 'Thomas', 'Arizona', '4476 Parkway Drive', '602325916'),
    (12, 'Eva', 'Lucas', 'Arizona', '4379 Skips Lane', '3019509805'),
    (6, 'Jack', 'Aiden', 'Arizona', '4833 Coplin Avenue', '480230527'),
    (2, 'Mona', 'Adrian', 'Los Angeles', '1958 Peck Court', '714939432'),
    (10, 'Lili', 'Oliver', 'Los Angeles', '3832 Euclid Avenue', '5306951180'),
    (3, 'Farida', 'Joseph', 'San Francisco', '3153 Rhapsody Street', '8133681200'),
    (9, 'Justin', 'Alexander', 'Denver', '4470 McKinley Avenue', '9704337589'),
    (11, 'Frank', 'Jacob', 'Miami', '1299 Randall Drive', '8085905201');





-- Creating the orders25 table

CREATE TABLE orders25 (
    id INT PRIMARY KEY,
    cust_id INT,
    order_date DATE,
    order_details VARCHAR(100),
    total_order_cost INT
);

-- Inserting sample data into the orders25 table

INSERT INTO orders25 (id, cust_id, order_date, order_details, total_order_cost) VALUES
    (1, 3, '2024-03-04', 'Coat', 100),
    (2, 3, '2024-03-01', 'Shoes', 80),
    (3, 3, '2024-03-07', 'Skirt', 30),
    (4, 7, '2024-02-01', 'Coat', 25),
    (5, 7, '2024-03-10', 'Shoes', 80),
    (6, 15, '2024-02-01', 'Boats', 100),
    (7, 15, '2024-01-11', 'Shirts', 60),
    (8, 15, '2024-03-11', 'Slipper', 20),
    (9, 15, '2024-03-01', 'Jeans', 80),
    (10, 15, '2024-03-09', 'Shirts', 50),
    (11, 5, '2024-02-01', 'Shoes', 80),
    (12, 12, '2024-01-11', 'Shirts', 60),
    (13, 12, '2024-03-11', 'Slipper', 20),
    (14, 4, '2024-02-01', 'Shoes', 80),
    (15, 4, '2024-01-11', 'Shirts', 60),
    (16, 3, '2024-04-19', 'Shirts', 50),
    (17, 7, '2024-04-19', 'Suit', 150),
    (18, 15, '2024-04-19', 'Skirt', 30),
    (19, 15, '2024-04-20', 'Dresses', 200),
    (20, 12, '2024-01-11', 'Coat', 125),
    (21, 7, '2024-04-01', 'Suit', 50),
    (22, 7, '2024-04-02', 'Skirt', 30),
    (23, 7, '2024-04-03', 'Dresses', 50),
    (24, 7, '2024-04-04', 'Coat', 25),
    (25, 7, '2024-04-19', 'Coat', 125);





/*

You have given two tables customers25 with columns (id, name phone
address) and orders25 table columns(order_id, cxid order_date and cost)

Find the percentage of shipable orders.
Consider an order is shipable if the customer's address is known.
*/

-- 10 5/10*100 
-- find total orders
-- total shipable orders where address is not NULL
-- shipable orders/total orders * 100




SELECT * FROM customers25;

SELECT * FROM orders25;


SELECT COUNT(*) FROM orders25;

SELECT 
    ROUND( SUM(
    CASE 
        WHEN c.address IS NOT NULL THEN 1
        ELSE 0
    END
    )/ COUNT(*)* 100,2) as shipable_per_orders
FROM orders25 as o
LEFT JOIN
customers25 as c    
ON o.cust_id = c.id;





-- DATE :- 06-12-2024       MADHURESH RAJ





