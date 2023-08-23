CREATE DATABASE MyProject;
USE  MyProject;


--CREATE TABLE1--
-- user registration--

CREATE TABLE UserReg
(
	RegID         INT            PRIMARY KEY,
    FirstName     NVARCHAR(50),
    LastName      NVARCHAR(50),
    Email         NVARCHAR(100),
    DateOfBirth   DATE,
    Gender        NVARCHAR(10),
    Phone         NVARCHAR(20),
    [Address]     TEXT,
    [State]       NVARCHAR(50),
    District      NVARCHAR(50),
    Username      NVARCHAR(50),
    [Password]    NVARCHAR(50),
);

INSERT INTO UserReg(FirstName, LastName, Email, DateOfBirth, Gender, Phone, [Address], [State], District, Username, [Password])
VALUES
    ('John', 'Doe', 'john@example.com', '1990-01-15', 'Male', '123-456-7890', '123 Main St', 'California', 'Los Angeles', 'johndoe', 'Johndoe@1234'),
    ('Jane', 'Smith', 'jane@example.com', '1992-05-20', 'Female', '987-654-3210', '456 Elm St', 'New York', 'New York', 'janesmith', 'Janesmith@1234'),
    ('Alice', 'Johnson', 'alice@example.com', '1988-08-10', 'Female', '555-555-5555', '789 Oak Ave', 'Texas', 'Austin', 'alicej', 'Alicej@1234'),
    ('Bob', 'Williams', 'bob@example.com', '1985-03-25', 'Male', '444-333-2222', '321 Maple Rd', 'Florida', 'Miami', 'bobw', 'Bobw@1234'),
    ('Emily', 'Brown', 'emily@example.com', '1994-12-03', 'Female', '111-222-3333', '567 Pine St', 'Washington', 'Seattle', 'emilyb', 'Emilyb@1234');

	SELECT Age FROM UserReg

ALTER TABLE UserReg
ADD Age INT;

UPDATE UserReg
SET Age = DATEDIFF(YEAR, DateOfBirth, GETDATE());

