CREATE DATABASE ClaysysTechnologies;
USE ClaysysTechnologies;

--create table employee--

CREATE TABLE Employee (
    EmployeeID    INT              PRIMARY KEY,
    FirstName     VARCHAR(50),
    LastName      VARCHAR(50),
    Salary        DECIMAL(10, 2)
);

--insert data into employee table--

INSERT INTO Employee (EmployeeID, FirstName, LastName, Salary)
VALUES
    (1, 'Jhon',    'Doe',         50000.00),
    (2, 'Jane',    'Smith',       60000.00),
    (3, 'Michael', 'Johnson',     55000.00),
    (4, 'Emily',   'Brown',       62000.00),
    (5, 'David',   'Williams',    58000.00);

--select table--

SELECT * FROM Employee

--get second highest salary---

SELECT  TOP 1 Salary
FROM Employee
WHERE Salary < (
    SELECT MAX(Salary)
    FROM Employee
)
ORDER BY Salary DESC;

--add department to employee table--

ALTER TABLE Employee
ADD Department VARCHAR(50);

--update department values--

UPDATE Employee
SET Department = 
    CASE 
        WHEN EmployeeID = 1 THEN 'Sales'
        WHEN EmployeeID = 2 THEN 'Marketing'
        WHEN EmployeeID = 3 THEN 'Sales'
        WHEN EmployeeID = 4 THEN 'HR'
        WHEN EmployeeID = 5 THEN 'IT'
    END;

--update values--
UPDATE Employee
SET Department = 'Content creator'
WHERE EmployeeID = 3;

--to get total list of employees in each department---

SELECT Department , COUNT(*) AS TotalEmployees
FROM Employee
GROUP BY Department;









