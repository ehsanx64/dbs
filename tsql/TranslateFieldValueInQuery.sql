declare @status tinyint = 1
declare @username varchar(32) = 'user1'

-- Simply select @username value
select @username as username, 
	-- But translate (convert) the @status value during select
	iif(@status = 1, 'yes', 'no') as is_user_active