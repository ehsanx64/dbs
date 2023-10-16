/*
** Update a field using replace on joined tables
*/

update wp_post p
inner join wp_postmeta m
on p.ID = m.post_id
set p.guid = replace(p.guid, 'http://localhost', 'http://192.168.43.43')
where p.post_type = 'nav_menu_item'

