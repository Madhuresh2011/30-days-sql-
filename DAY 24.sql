-- Day 24/50 Days

-- Customer Revenue In March



USE 50_days_sql;



CREATE TABLE orders24(
    id INT,
    cust_id INT,
    order_date DATE,
    order_details VARCHAR(50),
    total_order_cost INT
);

INSERT INTO orders24 (id, cust_id, order_date, order_details, total_order_cost) VALUES
(1, 7, '2024-03-04', 'Coat', 100),
(2, 7, '2024-03-01', 'Shoes', 80),
(3, 3, '2024-03-07', 'Skirt', 30),
(4, 7, '2024-02-01', 'Coat', 25),
(5, 7, '2024-03-10', 'Shoes', 80),
(6, 1, '2024-02-01', 'Boats', 100),
(7, 2, '2024-01-11', 'Shirts', 60),
(8, 1, '2024-03-11', 'Slipper', 20),
(9, 15, '2024-03-01', 'Jeans', 80),
(10, 15, '2024-03-09', 'Shirts', 50),
(11, 5, '2024-02-01', 'Shoes', 80),
(12, 12, '2024-01-11', 'Shirts', 60),
(13, 1, '2024-03-11', 'Slipper', 20),
(14, 4, '2024-02-01', 'Shoes', 80),
(15, 4, '2024-01-11', 'Shirts', 60),
(16, 3, '2024-04-19', 'Shirts', 50),
(17, 7, '2024-04-19', 'Suit', 150),
(18, 15, '2024-04-19', 'Skirt', 30),
(19, 15, '2024-04-20', 'Dresses', 200),
(20, 12, '2024-01-11', 'Coat', 125),
(21, 7, '2024-04-01', 'Suit', 50),
(22, 3, '2024-04-02', 'Skirt', 30),
(23, 4, '2024-04-03', 'Dresses', 50),
(24, 2, '2024-04-04', 'Coat', 25),
(25, 7, '2024-04-19', 'Coat', 125);



/*
-- Calculate the total revenue from 
each customer in March 2024. 

Include only customers who 
were active in March 2024.

Output the revenue along with the 
customer id and sort the results based 
on the revenue in descending order.
*/
-- cx_id and their revenue SUM(total order cost)
-- filter march 2024


SELECT 
    cust_id,
    SUM(total_order_cost) total_revenue
FROM orders24
WHERE order_date BETWEEN '2024-03-01' 
    AND '2024-03-31'
GROUP BY cust_id
ORDER BY total_revenue DESC;






-- DATE :- 06-12-2024       MADHURESH RAJ

