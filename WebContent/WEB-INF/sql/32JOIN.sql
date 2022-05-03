-- JOIN

USE mydb2;

SELECT * FROM Board; -- 4개의 열, 12개의 행
SELECT * FROM Reply; -- 4개의 열, 6개의 행

SELECT * FROM Board, Reply; -- 결합(Cartesian Product) : 8(4 + 4)개의 열, 72개의 행(12 * 6)
SELECT * FROM Reply, Board;
SELECT * FROM Board JOIN Reply; -- Cartesian Product
SELECT * FROM Board JOIN Reply ON Board.id = Reply.board_id; -- INNER JOIN (주로 사용)
SELECT * FROM Board, Reply WHERE Board.id = Reply.board_id; -- INNER JOIN
SELECT * FROM Board JOIN Reply WHERE Board.id = Reply.board_id; -- INNER JOIN

