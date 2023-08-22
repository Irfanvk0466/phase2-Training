CREATE DATABASE Natureconservency;
use Natureconservency;

--registration table--
CREATE TABLE REGISTRATION
(
	REGID        INT              PRIMARY KEY,
	FirstName    VARCHAR(50),
	LastName     VARCHAR(50),
	Email        VARCHAR(100),
    DateOfBirth  DATE,
    Age          INT,
    Gender       VARCHAR(10),
    Phone        VARCHAR(15),
	Addresses    VARCHAR(200),
	States       VARCHAR(50),
    District     VARCHAR(50),
    Username     VARCHAR(50),
    Passwords    VARCHAR(100)
  
	
);

--login table--
CREATE TABLE LOGINS (
    LOGINID      INT              PRIMARY KEY,
	REGID        INT			  FOREIGN KEY REFERENCES REGISTRATION (REGID),
    Email        VARCHAR(100),
    [Password]     VARCHAR(100)
);

--contact table--

CREATE TABLE CONTACT (
	CONTACTID    INT              PRIMARY KEY,
	REGID        INT			  FOREIGN KEY REFERENCES REGISTRATION (REGID),
    FirstName    VARCHAR(50),
    LastName	 VARCHAR(50),
    Country      VARCHAR(50),
    States       VARCHAR(50),
    Subjects     VARCHAR(200)
);


-- Insert data into the Registration table
INSERT INTO Registration (REGID , FirstName, LastName, Email, DateOfBirth, Age, Gender, Phone, Addresses, States, District, Username, Passwords)
VALUES (1, 'John', 'Doe', 'john@example.com', '1990-01-01', 33, 'Male', '123-456-7890', '123 Main St', 'Kerala', 'Palakkad', 'johndoe0466', 'Jhondoe@123');

-- Insert data into the Login table
INSERT INTO Logins(LOGINID, REGID, Email,[Password] )
VALUES (1, 1, 'john@example.com', 'Jhondue@123');

-- Insert data into the Contact table
INSERT INTO Contact (CONTACTID, REGID, FirstName, LastName, Country, States, Subjects)
VALUES (1, 1, 'John', 'Doe', 'India', 'Kerala', ' harmful effects to Earth and its natural systems due to the actions of humans.');


--select tables--

SELECT* FROM LOGINS
SELECT*FROM REGISTRATION
SELECT*FROM CONTACT

--update tables--

UPDATE Registration
SET Age = 34
WHERE REGID = 1;

SELECT Age FROM  REGISTRATION

SELECT FirstName, LastName, Email, Age
FROM Registration
WHERE REGID = 1;

SELECT FirstName, LastName
FROM CONTACT
WHERE CONTACTID = 1;

--delete a row--

DELETE FROM LOGINS

