-- Day 03/50

USE 50_DAYS_SQL;

DROP TABLE IF exists products;

-- step 1: create the products table

CREATE TABLE products(
		product_id int primary key,
        product_name varchar(50),
        category varchar(100),
        qauntity_sold int);
        
-- step 2: insert sample records into the product table

INSERT INTO products(product_id,product_name,category,qauntity_sold)
values
(1,'samsung Galaxy S20','Electronics',100),
(2,'Apple iPhone 12','Electronics',150),
(3,'sony playstation','Electronics',80),
(4,'Nike Air Max270','Clothing',200),
(5,'Adidas ultraboost','Clothing',200),
(6,'Levis Mens 501','Clothing',90),
(7,'Instant Mens Jeans','Home & Kitchen',180),
(8,'Kuring K-Classic','Home & Kitchen',130),
(9,'iRobt Roomba 675','Home & Kitchen',130),
(10,'Breville Comapct','Home & Kitchen',90),
(11,'Dyson V11 Animal','Home & Kitchen',90);



SELECT *FROM products;
        
        
        
-- Question:

/* Write SQl query to find the top-selling products in 
   each category assuming products table has column product_id,
   product_name,category,quntity_sold.
   
  */ 
  
  -- 1 product from each category
  -- based on highest qty sold
  -- rank

   
   -- Solution:-
   
   SELECT *FROM PRODUCTS;
   
   
SELECT *FROM(
           SELECT *, RANK() OVER (partition by category order by qauntity_sold desc)
           ranks from products
           order by category ,qauntity_sold desc)
           as subquery where ranks = 1;
           
           
           
           
-- DATE:-17-11-2024             MADHURESH RAJ
           
   