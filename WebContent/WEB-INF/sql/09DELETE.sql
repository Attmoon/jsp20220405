USE w3schools;

SELECT * FROM Employees;
DELETE FROM Employees;
SELECT * FROM Customers;

SET SQL_SAFE_UPDATES = 0;

SELECT * FROM Customers WHERE Country = 'Mexico';

DELETE FROM Customers WHERE Country = 'Mexico';
DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';
SELECT * FROM Customers WHERE CustomerName='Alfreds Futterkiste';