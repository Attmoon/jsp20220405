USE mydb1;

CREATE TABLE mytable12 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) NOT NULL UNIQUE
);
DESC mytable12;

-- primary key : not null, unique 조합
CREATE TABLE mytable13 (
	col1 VARCHAR(10),
    col2 VARCHAR(10) PRIMARY KEY
);
DESC mytable13;

INSERT INTO mytable13 (col1, col2) VALUES ('a', 'a');
INSERT INTO mytable13 (col1, col2) VALUES ('a', 'b');
INSERT INTO mytable13 (col1, col2) VALUES ('a', 'b'); -- col2는 중복허용안됨
INSERT INTO mytable13 (col1, col2) VALUES ('a', null); -- col2는 null허용 안됨
SELECT * FROM mytable13;



