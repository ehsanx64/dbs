/*
** Create a database named 'MyDb' and use it for rest of scripts in current
** folder.
*/

-- If database with name 'MyDb' does not exist
if not exists(select * from master.sys.databases where name = 'MyDb')
begin
	-- Create the database
	create database MyDb

	-- Inform the user what happend
	print 'Created the MyDb database.'
end
else
begin
	-- Otherwise just tell user the database already exist!
	print 'MyDb already exists!'
end;


