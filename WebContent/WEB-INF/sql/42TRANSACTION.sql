USE mydb2;

DELETE FROM Reply WHERE board_id = 14;
-- ROLLBACK;
DELETE FROM Board 
WHERE id = 14;
COMMIT;

SELECT * FROM Reply WHERE board_id = 14;