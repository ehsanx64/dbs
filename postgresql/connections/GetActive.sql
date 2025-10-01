-- Identify active connections
--
-- dbname   The database name to get connection list for

SELECT pid, usename, application_name, client_addr
FROM pg_stat_activity
WHERE datname = :'dbname';
