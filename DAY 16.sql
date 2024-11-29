-- Day 06/50 SQL Challenge


use 50_days_sql;


CREATE TABLE Employees10 (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    department VARCHAR(255),
    managerId INT
);

INSERT INTO Employees10 (id, name, department, managerId) VALUES
(101, 'John', 'A', NULL),
(102, 'Dan', 'A', 101),
(103, 'James', 'A', 101),
(104, 'Amy', 'A', 101),
(105, 'Anne', 'A', 101),
(106, 'Ron', 'B', 101),
(107, 'Michael', 'C', NULL),
(108, 'Sarah', 'C', 107),
(109, 'Emily', 'C', 107),
(110, 'Brian', 'C', 107);


/*
Given a table named employees with the following columns:
id, name, department, managerId

Write a SQL query to find the names of 
managers who have at least five direct reports. 
Return the result table in any order.

Ensure that no employee is their own manager.

The result format should include only the names
of the managers meeting the criteria.
*/

SELECT * FROM employees10;

-- find manager name based on manager id
-- count of emp who is reporting to this id
-- having count >= 5

SELECT 
     e2.name as manager_name
FROM employees10 as e1
JOIN 
employees10 as e2
ON e1.managerid = e2.id
GROUP BY e1.managerid, e2.name
HAVING COUNT(e1.id) >= 5;



-- DATE :- 29-11-2024       MADHURESH RAJ









	
