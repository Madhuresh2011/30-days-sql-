-- Day 07/50 days sql challenge 


USE 50_days_sql;

DROP TABLE IF EXISTS employees;

-- Create the employee_salary table

CREATE TABLE employees (
    emp_id INT,
    name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);



-- Insert all records again to simulate duplicates

INSERT INTO employees(emp_id, name, department, salary) VALUES
(1, 'Raj Kumar Singh', 'Finance', 60000.00),
(2, 'Madhuresh Raj', 'Finance', 65000.00), 
(2, 'Ansh Raj', 'Finance', 65000.00),   -- Duplicate
(9, 'Aditya ', 'Sales', 63000.00),
(9, 'Aditya', 'Sales', 63000.00),  -- Duplicate
(9, 'Aditya', 'Sales', 63000.00),  -- Duplicate
(10, 'Kunal', 'Sales', 61000.00);


/*
Question:

How would you identify duplicate entries in
a SQL in given table employees columns are 
emp_id, name, department, salary

*/


-- ------------------------
-- My Solution
-- ------------------------

SELECT * FROM employees;

SELECT 
emp_id,
name,	
COUNT(1) as total_frequency
FROM employees
GROUP BY emp_id, name
HAVING COUNT(1) > 1;


-- Approach 2

	
SELECT *
FROM (	
	SELECT *,
	ROW_NUMBER() OVER(PARTITION BY name ORDER BY name) as rn
	FROM employees
) as subquery
WHERE rn > 1






-- DATE:- 21-11-24               MADHURESH RAJ

