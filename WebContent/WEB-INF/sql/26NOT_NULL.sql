USE mydb1;

-- NOT NULL : NULL을 허용하지 않음
CREATE TABLE myTable9 (
	col1 VARCHAR(100),
    col2 VARCHAR(100) NOT NULL
);

DESC myTable9;
INSERT INTO myTable9 (col1, col2) VALUES ('a', 'b');
INSERT INTO myTable9 (col1, col2) VALUES (null, 'b');
INSERT INTO myTable9 (col1, col2) VALUES ('a', null);
SELECT * FROM myTable9;
