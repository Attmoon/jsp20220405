USE mydb2;

-- 댓글이 있는 게시물
-- JOIN
SELECT distinct b.id, b.title 
FROM Board b JOIN Reply r ON b.id = r.board_id;
-- SUBQUERY
SELECT id, title
FROM Board
WHERE id IN -- (3); 
			(SELECT board_id FROM Reply);

-- 댓글이 없는 게시물
-- JOIN
SELECT b.id, b.title
FROM Board b LEFT JOIN Reply r ON b.id = r.board_id
WHERE r.id IS NULL;

-- SUBQUERY
SELECT id, title -- id와 title을 
FROM Board -- Board에서 가져오는데
WHERE id NOT IN -- (3);
		(SELECT board_id FROM Reply); -- id가 (reply의 board_id)와 일치하지않는것?
        
        
-- 게시글별 댓글 수 (JOIN)
SELECT b.*, COUNT(r.id)
FROM Board b LEFT JOIN Reply r ON b.id = r.board_id
GROUP BY b.id
ORDER BY b.id DESC;

-- 게시글별 댓글 수 (SUBQUERY)
SELECT b.*, (SELECT COUNT(r.id) FROM Reply r WHERE board_id = b.id) NumOfReply -- board_id 와 b.id가 같을경우의 Reply테이블의 id를 세어줌
FROM Board b -- Board테이블로부터 
ORDER BY b.id DESC;