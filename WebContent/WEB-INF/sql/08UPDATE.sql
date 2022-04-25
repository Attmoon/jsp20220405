USE w3schools;

SELECT * FROM Employees ORDER BY EmployeeID DESC;
DESC Employees;
UPDATE Employees
SET LastName = 'Sunja',
	FirstName = 'Yuhjung'
WHERE EmployeeID = 1;