-- 데이터베이스 만들기
CREATE DATABASE mydb1;
USE mydb1;

-- 테이블 만들기
CREATE TABLE MyTable1 (
	colName1 int,
    colName2 int
);

-- 테이블 구조보기
DESCRIBE MyTable1;
DESC mydb1.MyTable1;
DESC w3schools.Customers; -- 다른db의 테이블을 보려면 앞에 db명을 명시

-- 새로만든 테이블에 데이터 넣기
INSERT INTO MyTable1 (colName1, colName2) -- 어느컬럼에
VALUES (300, 500); -- 어느 값을 넣을지

SELECT * FROM MyTable1;

-- 이미 있는 데이터 사용해서 새 테이블 만들기
CREATE TABLE MyTable2 -- AS키워드 생략됨
SELECT * FROM w3schools.Employees;

DESC MyTable2;

SELECT * FROM MyTable2;

CREATE TABLE MyTable3 AS
SELECT CustomerID, CustomerName AS Name, City, Country
FROM w3schools.Customers;

DESC MyTable3;

SELECT * FROM MyTable3;

DESC MyTable1;
INSERT INTO MyTable1 (colName1, colName2)
VALUES ('111', '222'); -- string형태로 써도 숫자형식이라 int타입으로 변환돼서 들어감

SELECT * FROM MyTable1;

INSERT INTO MyTable1 (colName1, colName2)
VALUES ('abc', 333); -- abc는 string형태이고 int형태가 아니어서 오류

