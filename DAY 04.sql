-- Day 04/50 

use 50_days_sql;

create table orders1(
  	category varchar(20),
	product varchar(20),
	user_id int , 
  	spend int,
  	transaction_date DATE
);

Insert into orders1 values
('appliance','refrigerator',165,246.00,'2023/11/16'),
('appliance','refrigerator',123,299.99,'2024/03/12'),
('appliance','washingmachine',123,219.80,'2024/03/02'),
('electronics','vacuum',178,152.00,'2024/04/05'),
('electronics','wirelessheadset',156,249.90,'2024/07/08'),
('electronics','TV',145,189.00,'2024/07/25'),
('Television','TV',165,129.00,'2024/07/25'),
('Television','TV',163,129.00,'2024/07/25'),
('Television','TV',141,129.00,'2024/07/25'),
('toys','Ben10',145,189.00,'2024/07/25'),
('toys','Ben10',145,189.00,'2024/07/25'),
('toys','yoyo',165,129.00,'2024/07/25'),
('toys','yoyo',163,129.00,'2024/07/25'),
('toys','yoyo',141,129.00,'2024/07/25'),
('toys','yoyo',145,189.00,'2024/07/25'),
('electronics','vacuum',145,189.00,'2024/07/25');



/*
Find the top 2 products in the top 2 categories based on spend amount?
*/

-- top 2 category based on spend 
-- top 2 product in above best 2 category

-- APPROACH 1


SELECT * FROM orders1;


WITH ranked_category
AS
(
	SELECT
		category,
		total_spend_category
	FROM 
	(	SELECT 
			category,
			SUM(spend) as total_spend_category,
			DENSE_RANK() OVER( ORDER BY SUM(spend) DESC) drn
		FROM orders1
		GROUP BY category
	) as subquery
	WHERE drn <= 2
)	


-- APPROACH 2

SELECT
	category,
	product,
	total_spend_by_product
FROM (	
		SELECT 
			o.category,
			o.product,
			SUM(o.spend) as total_spend_by_product,
			DENSE_RANK() OVER(PARTITION BY o.category ORDER BY SUM(o.spend) DESC ) as pdrn
		FROM orders1 as o
		JOIN ranked_category as rc
		ON rc.category = o.category	
		GROUP BY o.category, o.product
) subquery2
WHERE pdrn <= 2;





-- DATE:-18-11-2024             MADHURESH RAJ
