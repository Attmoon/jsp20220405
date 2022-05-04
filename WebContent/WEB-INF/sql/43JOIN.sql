USE w3schools;

SELECT * FROM Orders;
-- 1996-07-04에 주문한 고객의 이름
SELECT o.OrderDate, c.CustomerName, o.EmployeeID FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-04에 주문한 고객의 이름과, 처리한 직원의 이름
SELECT o.OrderDate, c.CustomerName, concat(e.FirstName, ' ', e.LastName) EmployeeName
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
			  JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE o.OrderDate ='1996-07-04';

-- 1996-07-04의 주문을 처리한 직원명과 배송자명 조회
-- Orders, Employees, Shippers
SELECT * FROM Shippers;
SELECT * FROM Employees;

SELECT o.OrderDate, e.LastName, s.ShipperName
FROM Orders o JOIN Employees e ON o.EmployeeID = e.EmployeeID
			  JOIN Shippers s ON o.ShipperID = s.ShipperID
WHERE o.OrderDate ='1996-07-04';

-- 1996-07-04에 주문한 고객과, 처리한 직원, 배송한 배송자명
-- Orders, Customers, Employees, Shippers
SELECT o.OrderDate, c.CustomerName, e.LastName, s.ShipperName
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
			  JOIN Employees e ON o.EmployeeID = e.EmployeeID
              JOIN Shippers s ON o.ShipperID = s.ShipperID
WHERE o.OrderDate  = '1996-07-04';

-- 1996-07-04에 주문한 상품명(들)
-- OrderDetails, Orders, Products
SELECT * FROM OrderDetails;
SELECT * FROM Orders;
SELECT * FROM Products;

SELECT o.OrderDate, p.ProductName, od.Quantity, p.Price, (od.Quantity * p.Price) total
FROM OrderDetails od JOIN Orders o ON od.OrderID = o.OrderID
					 JOIN Products p ON od.ProductID = p.ProductID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-08에 각 고객의 주문 총액 
-- OrderDetails, Products, Orders, Customers(고객명) groupby도 쓰고 곱하기연산도 쓰고
SELECT * FROM Orders WHERE OrderDate = '1996-07-08';
SELECT * FROM OrderDetails;
SELECT * FROM Orders;
SELECT * FROM Products;
SELECT * FROM Customers;

SELECT o.OrderDate, c.CustomerName, p.Price, od.Quantity , sum(p.Price * od.Quantity) '총계'
FROM OrderDetails od JOIN Orders o ON od.OrderID = o.OrderID
					 JOIN Products p ON od.ProductID = p.ProductID
                     JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderDate = '1996-07-08'
GROUP BY c.CustomerID;




