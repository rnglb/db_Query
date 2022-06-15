
CREATE DATABASE databasename;
DROP DATABASE databasename;

--The TRUNCATE TABLE statement is used to delete the data inside a table, but not the table itself.
DROP TABLE table_name;
TRUNCATE TABLE table_name;
DELETE FROM table_name; 
DELETE FROM table_name where clause;

--CREATE TABLE Statement
CREATE TABLE Persons ( PersonID int, LastName varchar(255), FirstName varchar(255),);
CREATE TABLE TestTable AS SELECT customername, contactname FROM customers;

--The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.
ALTER TABLE table_name
ADD/DROP/ALTER COLUMN/MODIFY COLUMN  column_name datatype;

/*
SQL constraints are used to specify rules for data in a table.
Constraints can be specified when the table is created with the CREATE 
TABLE statement, or after the table is created with the ALTER TABLE statement.
*/
CREATE TABLE table_name (
    column1 datatype constraint,
)
NOT NULL / UNIQUE / PRIMARY KEY / FOREIGN KEY / CHECK / DEFAULT / CREATE INDEX

/*
The BACKUP DATABASE statement is used in SQL Server to create a full back up of an existing SQL database.
A differential back up only backs up the parts of the database that have changed since the last full database
 backup.
*/
BACKUP DATABASE databasename
TO DISK = 'filepath';

BACKUP DATABASE databasename
TO DISK = 'filepath'
WITH DIFFERENTIAL;



 CREATE TABLE Persons (   
   ID int NOT NULL,   
   LastName varchar(255) NOT NULL,   
   FirstName varchar(255),    
   Age int,     
   CONSTRAINT PK_Person PRIMARY KEY (ID,LastName) )

CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    ClientName varchar(255) NOT NULL, 
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID,ClientName) REFERENCES Persons(PK_Person)
);
