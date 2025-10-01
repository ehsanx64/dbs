-- Terminate connections to a database. Client can reconnect, so in order to ban
-- users we should first disable connections to the database then terminate the
-- connections.
--
-- dbname   The database name to terminate the connections to

SELECT pg_terminate_backend(pid)
FROM pg_stat_activity
WHERE datname = :'dbname';

