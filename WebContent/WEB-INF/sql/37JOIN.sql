USE w3schools;

-- Orders : 주문
-- Customers : 고객
-- 주문한적 없는 고객 명 조회

SELECT * FROM Orders;
SELECT * FROM Customers;

SELECT c.CustomerName -- 고객명 조회
FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID -- 각각의 테이블의 공통 컬럼인 CustomerID가 같은 record들만 Customers쪽으로 join해서
WHERE o.OrderID IS NULL -- 주문한적 없는
ORDER BY 1
;

-- 고객별 주문 건수 with 0건도 나와야함
SELECT c.CustomerName, COUNT(o.OrderID) -- 고객별 주문 건수를 불러옴
FROM Customers c LEFT JOIN Orders o -- 테이블을 JOIN해서
ON c.CustomerID = o.CustomerID -- 각 테이블의 공통컬럼인 CustomerID가 같은 record들만
GROUP BY c.CustomerID -- CustomerID로 묶음
ORDER BY 2 DESC;


USE mydb2;

SELECT b.id, b.title, b.body, b.inserted, COUNT(r.id) numOfReply
FROM Board b LEFT JOIN Reply r ON b.id = r.board_id
WHERE b.id = 3;


