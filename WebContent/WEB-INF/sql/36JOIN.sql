USE mydb2;

-- 게시물별 댓글 수 조회 (단, 댓글이 없는 게시물은 나오지 않음)
SELECT * FROM Board;
SELECT * FROM Reply;

SELECT b.id, b.title, b.body, b.inserted, COUNT(r.id) -- board의 모든 컬럼과 reply의 id컬럼수를 조회하려고한다.
FROM 
Board b INNER JOIN Reply r -- Board와 Reply의 교집합중에서
ON b.id = r.board_id -- Board의 id와 Reply의 board_id가 같은것만
GROUP BY b.id -- Board의 id로 묶는다.
ORDER BY 1  
;

SELECT b.*, COUNT(r.id) 
FROM 
Board b INNER JOIN Reply r 
ON b.id = r.board_id 
GROUP BY b.id 
ORDER BY 1
;

-- INNER JOIN
SELECT * FROM Board b INNER JOIN Reply r ON b.id = r.board_id;
-- LEFT OUTER JOIN
SELECT * FROM Board b LEFT OUTER JOIN Reply r ON b.id = r.board_id;
SELECT * FROM Board b LEFT JOIN Reply r ON b.id = r.board_id; -- outer생략
-- RIGHT OUTER JOIN
SELECT * FROM Board b RIGHT OUTER JOIN Reply r ON b.id = r.board_id;
SELECT * FROM Reply r RIGHT OUTER JOIN Board b ON b.id = r.board_id;
SELECT * FROM Board b RIGHT JOIN Reply r ON b.id = r.board_id; -- outer 생략
SELECT * FROM Reply r RIGHT JOIN Board b ON b.id = r.board_id; -- outer 생략

-- 댓글이 없는 게시물 조회
SELECT * 
FROM Board b LEFT JOIN Reply r 
ON b.id = r.board_id
WHERE r.id IS NULL
;
-- 전체 게시물 조회 with 댓글 수
SELECT b.*, COUNT(r.id) NumOfReply
FROM Board b LEFT JOIN Reply r On b.id = r.board_id
GROUP BY b.id
ORDER BY b.id DESC;


