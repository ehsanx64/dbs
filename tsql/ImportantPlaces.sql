-- List all databases in the SQL Server instance
select * from master.sys.databases


-- List all tables named as person even in different databases
select * 
from MyDb.INFORMATION_SCHEMA.TABLES 
where TABLE_NAME = 'person'


-- List all tables inside MyDb database
select * 
from MyDb.INFORMATION_SCHEMA.TABLES 
where TABLE_CATALOG = 'MyDb'

