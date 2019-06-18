CREAT TABLE people(
    /* two columns, with data type*/
    id INTEGER,
    name VARCHAR(255)
)

DROP TABLE people; 
/*add an entry*/
INSERT INTO people VALUES(1, 'COREY')

/*specify order of values */
INSERT INTO people (id,name) VALUES(3,'DAVE')

/*retrieve everything from the table*/
SELECT * FROM people
SELECT first_name, last_name FROM people

/*retrieve all data where the last name is doe*/
SELECT *FROM people
WHERE last_name = 'Doe'
OR last_name = 'Smith';


SELECT *FROM people
WHERE last_name = 'Doe'
AND age<30;

/*sort results*/
SELECT *FROM people
WHERE age<34 
ORDER BY age ASC;

SELECT *FROM people
WHERE age<34 
ORDER BY DESC; 


SELECT *FROM people
WHERE age<34 
ORDER BY first_name, last_name;

/*update all the entries*/
UPDATE test_table
SET location ='unknown' 

/*delete entres*/
UPDATE people
SET occupation = 'Programmer'
WHERE first_name = 'Jane'
AND last_name = 'Smith'

SELECT * From people
WHERE occupation = 'Scientist'
OR age <58; 

/*Is and IS NOT NULL*/
SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;

/*Select top used for returning a certain number of queries*/
SELECT TOP number/percent column_name(s)
FROM table_name
WHERE condition;

SELECT TOP 3 * FROM Customers;

SELECT TOP 50 PERCENT * FROM Customers;

SELECT * FROM Customers
WHERE Country='Germany'
LIMIT 3;

SELECT MIN(column_name)
FROM table_name
WHERE condition;

/*returns the number of rows that match the criteria*/
SELECT COUNT(column_name)
FROM table_name
WHERE condition;

/*return average value of numeric column*/
SELECT AVG(column_name)
FROM table_name
WHERE condition;

/*SUM */
SELECT SUM(column_name)
FROM table_name
WHERE condition;

/*LIKE operator used with & and _*/
SELECT column
FROM table_name
WHERE columnN LIKE '%a' /*find any values starting with a*/

/*% - The percent sign represents zero, one, or multiple characters
_ - The underscore represents a single character
other wild cards characters see w3schools
*/

/*IN is a shorthand for multiple OR conditions*/
SELECT column_name(s)
FROM table_name
WHERE column_name IN(value1, value2, ...);


/*between: inclusive*/
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;


/*Aliases*/
SELECT CustomerName AS Customer, ContactName AS [Contact Person]
FROM Customers;

SELECT CustomerName, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address
FROM Customers;
