USE w3schools;

SELECT * FROM Products;

-- 각 카테고리별 상품 수
SELECT CategoryID, Count(ProductID)
FROM Products
GROUP BY CategoryID;

SELECT c.CategoryID, c.CategoryName, COUNT(p.ProductID) -- CategoryID, CategoryName, 상품을 count한 수를 조회하려한다.
FROM 
Products p JOIN Categories c -- Products테이블과 Categories테이블을 결합할건데
ON p.CategoryID = c.CategoryID -- p의 CategoryID와 c의 CategoryID가 같은것만
GROUP BY c.CategoryID -- c의 CategoryID로 묶는다.
;

-- 고객별 주문 건수
-- 조회컬렴명(고객명, 주문수) orderid컬럼쓰면됨
SELECT * FROM Orders; 

SELECT c.CustomerID, c.CustomerName, COUNT(OrderID) -- CustomerID, CustomerName, OrderID의 횟수를 조회 하려한다.
FROM 
Customers c JOIN Orders o -- Customers테이블과 Orders 테이블을 결합할건데
ON c.CustomerID = o.CustomerID -- Customers테이블의 CustomerID와 Orders테이블의 CustomerID가 같을 경우
GROUP BY c.CustomerID -- Cusomers테이블의 CustomerID로 묶는다
ORDER BY 3 DESC
;