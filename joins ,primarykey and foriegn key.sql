CREATE DATABASE VoyoTech;
USE VoyoTech;

--table 1--
CREATE TABLE Customers
(   CustomerID     INT             PRIMARY KEY,
    FirstName      VARCHAR(50),
    LastName       VARCHAR(50),
    Email          VARCHAR(100)

);

INSERT INTO Customers (CustomerID, FirstName, LastName, Email)
VALUES
    (1, 'aravind', 'tp',   'aravind@gmail.com'),
    (2, 'sharukh', 'khan', 'sharukh@gmail.com'),
    (3, 'salman',  'khan',  'salman@gmail.com');

--table2--

CREATE TABLE Orders (
    OrderID       INT               PRIMARY KEY,
    CustomerID    INT,              FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    OrderDate     DATE,
    TotalAmount   DECIMAL(10, 2)
);

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
    (1, 1, '2023-03-18', 100.00),
    (2, 1, '2023-01-11', 200.00),
    (3, 2, '2023-04-18', 150.00),
    (4, 3, '2023-02-15', 300.00);

SELECT * FROM Customers

--joins--

--1) inner join --
SELECT Customers.FirstName, Customers.LastName, Orders.OrderDate
FROM Customers 
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

--2) Left join --
SELECT Customers.FirstName, Customers.LastName, Orders. TotalAmount
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

--3) Right join --
SELECT Customers.FirstName, Customers.Email, Orders.OrderDate
FROM Customers
RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

--4) Full join --
SELECT Customers.FirstName, Orders.TotalAmount, Orders.OrderDate
FROM Customers
FULL JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

