USE mydb1;

-- CHAR : 고정길이 문자열
CREATE TABLE MyTable4 (
	col1 CHAR,
    col2 CHAR(1),
    col3 CHAR(2),
    col4 CHAR(5)
);

DESC MyTable4;

SELECT * FROM MyTable4;

INSERT INTO MyTable4 (col1)
VALUES ('a');

INSERT INTO MyTable4 (col1)
VALUES ('ab'); -- 1개의 문자열만 들어갈수있어서 2개의 문자는 들어갈수없음

INSERT INTO MyTable4 (col3)
VALUES ('ab');

INSERT INTO MyTable4 (col3)
VALUES('b'); -- 문자는 한개지만 공간은 두개를 차지함 (고정길이가 2이기때문)

INSERT INTO MyTable4(col4)
VALUES('abcde');

INSERT INTO MyTable4(col4)
VALUES('abcdef'); -- 안됨

INSERT INTO MyTable4(col4)
VALUES('abc'); -- 가능하지만 3개가아닌 5개의 공간을 차지함

INSERT INTO MyTable4(col4)
VALUES('가나다라마');
SELECT * FROM MyTable4;

-- 트림(trim) disable
SET sql_mode = 'PAD_CHAR_TO_FULL_LENGTH';

SELECT * FROM MyTable4;

-- VARCHAR : 가변길이
CREATE TABLE MyTable5 (
	col1 CHAR(10),
    col2 VARCHAR(10)
);

-- 테이블 지우기 (주의해서 사용하고 데이터가 다 날아가니 웬만하면 사용하지않기)
DROP TABLE MyTable5;

SELECT * FROM MyTable5;
-- a
-- a
INSERT INTO MyTable5 (col1,col2)
VALUES ('a', 'a');
INSERT INTO MyTable5 (col2)
VALUES ('0123456789');
INSERT INTO MyTable5 (col2)
VALUES ('01234567890'); -- 되는데 짤림 또는 안됨
INSERT INTO MyTable5 (col2)
VALUES ('abcdefghijklmn'); -- 되는데 짤림 또는 안됨