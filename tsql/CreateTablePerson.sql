/*
** Create a table to hold person information
*/

-- Select MyDb as default database
use MyDb;

-- Create a table named person
create table person (
	-- Id is an integer which must not be null, it is our primary key also
	id int not null primary key,

	-- first_name and last_name are fields with type of Unicode variable length string
	-- with maximum size of max (max allowed length)
	first_name nvarchar(max),
	last_name nvarchar(max),

	-- age is a tiny integer to hold the age. This should be enough
	age tinyint
)
