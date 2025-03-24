-- delimiter $ for shorter one
DELIMITER $$

-- Drop any existing procedure with given name and create a new one
DROP PROCEDURE IF EXISTS HelloWorld$$
CREATE PROCEDURE HelloWorld()
BEGIN
	-- Just return Hello world for now
	SELECT 'Hello world';
END$$

---- Related Operations (in mysql shell)
-- List stored procedures
-- SHOW PROCEDURE STATUS;
-- Filter based on database name
-- SHOW PROCEDURE STATUS WHERE db = 'db_name';
-- Call the procedure
-- CALL HelloWorld();

