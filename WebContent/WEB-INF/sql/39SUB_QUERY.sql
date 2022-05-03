USE w3schools;

-- 주문한 적 없는 고객명 조회(JOIN, SUB QUERY)
-- Orders, Customers
-- JOIN
SELECT c.CustomerName
FROM Customers c LEFT JOIN Orders o 
ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL
ORDER BY 1;

-- SUB QUERY
SELECT CustomerName
FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders) -- 설명써보기
ORDER BY 1;

SELECT id, title
FROM Board
WHERE id NOT IN -- (3);
		(SELECT board_id FROM Reply);
        
        
-- 고객별 주문 수 (JOIN, SUBQUERY)
SELECT c.CustomerName, COUNT(o.OrderID) NumOfOrders
FROM Customers c LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID
ORDER BY 1;

SELECT c.CustomerName, 
		(SELECT COUNT(OrderID) FROM Orders o WHERE CustomerID = c.CustomerID) AS NumOfOrders
FROM Customers c
ORDER BY 1;

-- 상품명과 카테고리명 조회
-- JOIN
SELECT p.ProductName, c.CategoryName
FROM Products p JOIN Categories c
	ON p.CategoryID = c.CategoryID
ORDER BY 1;

-- SUBQUERY
SELECT p.ProductName, 
	   (SELECT CategoryName FROM Categories c WHERE c.CategoryID = p.CategoryID) CategoryName
FROM Products p
ORDER BY 1;