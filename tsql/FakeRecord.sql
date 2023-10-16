/*
** This scripts construct a fake records using some aggregate functions
** and alias the fields as desired.
*/
select concat('Hello', ' ', 'World', '!') as message, 
	'Ehsan' as name,
	'M.' as family