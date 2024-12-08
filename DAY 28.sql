-- day 28/50 days SQL Challenge


use 50_days_sql;




SELECT * FROM walmart_eu;

/*
--Question
Write a query to find the highest-selling 
product for each customer

Return cx id, product description, 
and total count of purchase.

*/ 
-- cx all product they purchased and their total orders
-- order by by number of purchase desc
-- 1 product that has highest purchase 
-- rank 


SELECT *
FROM
(
    SELECT 
         customerid,
        description,
        COUNT(*) as total_purchase,
        RANK() OVER(PARTITION BY customerid 
        ORDER BY  COUNT(*) DESC) as rnm
    FROM walmart_eu
    GROUP BY customerid, description
    ORDER BY customerid, total_purchase DESC  
)
WHERE rnm = 1;




-- DATE :- 08-12-2024       MADHURESH RAJ







