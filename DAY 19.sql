-- Day 19/50 SQL Challenge

  use 50_days_sql;

-- Creating the employees19 table

CREATE TABLE employees19 (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

-- Inserting sample data for employees19

INSERT INTO employees19 (employee_name, department, salary) 
VALUES
    ('John Doe', 'HR', 50000.00),
    ('Jane Smith', 'HR', 55000.00),
    ('Michael Johnson', 'HR', 60000.00),
    ('Emily Davis', 'IT', 60000.00),
    ('David Brown', 'IT', 65000.00),
    ('Sarah Wilson', 'Finance', 70000.00),
    ('Robert Taylor', 'Finance', 75000.00),
    ('Jennifer Martinez', 'Finance', 80000.00);

/*
-- Q.
You have a table with below COLUMNS
emp_id employee_name, department, salary


Find the details of employees whose salary is greater
than the average salary across the entire company.
*/

SELECT * FROM employees19;

-- Find avg salary - 64375
-- select * from employees use where salary > Find avg salary
-- 


SELECT * FROM employees19
WHERE salary > (SELECT AVG(salary) from employees19) ;










-- DATE :- 02-12-2024       MADHURESH RAJ


