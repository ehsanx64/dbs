-- Disable connections to a database
--
-- dbname   The database name to disable connections for

ALTER DATABASE :"dbname" WITH ALLOW_CONNECTIONS false;
