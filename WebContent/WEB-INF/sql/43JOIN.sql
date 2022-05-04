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

-- 1996년 가장 많은 주문을 받은 직원 (Employees, Orders, 
-- 1996년 직원별 처리한 주문 총 금액을 조회(금액이 높은것부터 내림차순으로)
SELECT * FROM Orders WHERE OrderDate BETWEEN '1996-01-01' AND '1996-12-31';
SELECT COUNT(*) FROM Orders;
SELECT * FROM Orders;
SELECT * FROM Employees;
SELECT * FROM OrderDetails;
SELECT * FROM Products;

SELECT o.Orderdate, CONCAT(e.FirstName,' ', e.LastName) Name, sum(p.Price * od.Quantity)  '총 금액'
FROM Employees e JOIN Orders o ON e.EmployeeID = o.EmployeeID
				 JOIN OrderDetails od ON o.OrderID = od.OrderID
				 JOIN Products p ON od.ProductID = p.ProductID
WHERE o.OrderDate BETWEEN '1996-01-01' AND '1996-12-31'
GROUP BY o.EmployeeID
ORDER BY 3 DESC;
				 
-- 가장 많은 상품수량이 팔린 카테고리 Categories(카테고리이름), Products(어떤상품이), OrderDetails(수량) 높은것에서부터 내림차순으로 정렬
-- 카테고리별 판매수량을 높은것부터 내림차순으로
SELECT * FROM Categories;
SELECT * FROM Products;
SELECT * FROM OrderDetails;

SELECT c.CategoryName, p.ProductName, SUM(od.Quantity) Total
FROM Categories c JOIN Products p ON c.CategoryID = p.CategoryID
				  JOIN OrderDetails od ON od.ProductID = p.ProductID
GROUP BY c.CategoryID
ORDER BY 3 DESC;

SELECT o.OrderDate, c.CategoryName, p.ProductName, SUM(od.Quantity) Total
FROM Categories c JOIN Products p ON c.CategoryID = p.CategoryID
				  JOIN OrderDetails od ON od.ProductID = p.ProductID
                  JOIN Orders o ON o.OrderID = od.OrderID
WHERE o.OrderDate BETWEEN '1996-07-01' AND '1996-07-31'
GROUP BY c.CategoryID
ORDER BY Total DESC;




