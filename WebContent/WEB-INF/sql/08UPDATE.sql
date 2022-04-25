USE w3schools;

-- safe mode 해제
SET SQL_SAFE_UPDATES = 0;

SELECT * FROM Employees ORDER BY EmployeeID DESC;
DESC Employees;
UPDATE Employees
SET LastName = 'Sunja',
	FirstName = 'Yuhjung'
WHERE EmployeeID = 1;

-- 예제1) 1번 고객(Customers table)의 
-- 계약자명(ContactName)은 'Alfred Schmidt'
-- 도시(City)는 'Frankfurt'로 변경
SELECT * FROM Customers ORDER BY CustomerID DESC;
DESC Customers;
UPDATE Customers
SET ContactName = 'Alfred Schmidt',
	City = 'Frankfurt'
WHERE CustomerID = 1;

-- 한번에 여러 record를 변경하는게 위험한 코드여서 
UPDATE Customers
SET ContactName='Dude'
WHERE Country='Mexico';

SELECT * FROM Customers WHERE Country = 'Mexico';

SELECT * FROM Products;
UPDATE Products
SET Price = Price + 2;

SELECT * FROM Employees;
