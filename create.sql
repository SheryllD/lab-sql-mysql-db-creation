-- Challenge 1: Design the Database (ERD)
-- Challenge 2 - Create the Database and Tables

-- DROP DATABASE lab_mysql

CREATE DATABASE IF NOT EXISTS lab_mysql;
USE lab_mysql; 

DROP TABLE IF EXISTS Cars; 
CREATE TABLE `Cars` (
`Car_ID` INT PRIMARY KEY, 
`VIN` VARCHAR(30) NOT NULL, 
`Manufacturer` VARCHAR(30) NOT NULL, 
`Model` VARCHAR(30) NOT NULL, 
`Year` date NOT NULL,
`Color` VARCHAR(30)   
);

DROP TABLE IF EXISTS Customers; 
CREATE TABLE `Customers` (
`Customer_ID` INT PRIMARY KEY,
`Customer_Name` VARCHAR(50),
`Phone_Number` float, 
`Email` VARCHAR(50), 
`Address` VARCHAR(50), 
`City` VARCHAR(50), 
`State` VARCHAR(50), 
`Country` VARCHAR(50), 
`Postal_Code` VARCHAR(50) 
); 

DROP TABLE IF EXISTS Salesperson; 
CREATE TABLE `Salesperson`(
`Staff_ID` INT PRIMARY KEY, 
`Salesperson_Name` VARCHAR(50),
`Company_Store` VARCHAR(50)
); 

DROP TABLE IF EXISTS Invoices; 
CREATE TABLE `Invoices`(
`Invoice_ID` INT PRIMARY KEY,
`Invoice_Number` INT,
`Date` date,
`Customer_ID` INT, 
`Staff_ID` INT, 
`Car_ID` INT, 
`Company_Store` VARCHAR(50)
); 

SHOW TABLES;
 
SELECT * FROM Cars; 
SELECT * FROM Customers; 
SELECT * FROM Invoices;
SELECT * FROM Salesperson;

-- Defining Relations Between Foreign Keys 

ALTER TABLE Invoices 
ADD FOREIGN KEY (Car_ID) REFERENCES Cars(Car_ID), 
ADD FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID),
ADD FOREIGN KEY (Staff_ID) REFERENCES Salesperson(Staff_id);


