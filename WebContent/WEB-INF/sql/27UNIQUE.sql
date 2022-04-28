USE mydb1;
-- UNIQUE : 해당 컬럼의 값이 중복되면 안됨

CREATE TABLE myTable10 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) UNIQUE
);

DESC myTable10;
INSERT INTO myTable10 (col1, col2) VALUES ('a', 'b');
INSERT INTO myTable10 (col1, col2) VALUES ('c', 'd');
INSERT INTO myTable10 (col1, col2) VALUES ('c', 'e'); -- col1은 중복허용된 컬럼
INSERT INTO myTable10 (col1, col2) VALUES ('c', 'e'); -- col2는 중복허용안된 컬럼
INSERT INTO myTable10 (col1, col2) VALUES ('c', null); -- not null 제약사항이 아니라서 가능
INSERT INTO myTable10 (col1, col2) VALUES ('c', null); 
-- null은 중복되는개념이아니라서 값이 없는거라서 null도 계속들어가는것 가능 


SELECT * FROM myTable10;

-- unique, not null 조합
CREATE TABLE mytable11 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) UNIQUE NOT NULL
);

DESC mytable11;