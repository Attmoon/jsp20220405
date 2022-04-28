USE mydb1;


-- CREATE TABLE : 테이블 만들기
CREATE TABLE Customers
SELECT * FROM w3schools.Customers;

DESC Customers;

-- DROP TABLE : 테이블 삭제

-- ALTER TABLE : 테이블 수정
-- 컬럼 추가
ALTER TABLE Customers
ADD Email VARCHAR(255);

ALTER TABLE Customers
ADD Email VARCHAR(255) NOT NULL DEFAULT '이메일없음';

ALTER TABLE Customers
ADD Email VARCHAR(255) FIRST; -- 컬럼의 순서를 첫번째로

ALTER TABLE Customers
ADD Email VARCHAR(255) AFTER ContactName; -- 컬럼의 순서를 contactName컬럼 다음으로

-- 컬럼 삭제
ALTER TABLE Customers
DROP COLUMN Email;

-- 컬럼 수정 
ALTER TABLE Customers
MODIFY COLUMN Email VARCHAR(10); -- 데이터타입을 변경하는일은 매우 신중해야함


