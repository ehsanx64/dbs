/*
** Dynamically generate a query (string type) and execute it with sql engine.
**
** How To Run:
**
** Interactive execution from mysql shell:
**      1. Run the mysql shell by:
**          mysql -u <username> -p <password>
**      2. Select target database:
**          use wordpress_db;
**      3. Execute the script:
**          source ./mysql/DynamicQuery.sql
**
** Execution from shell:
**      1. If target database was specified in script following command could be enough
**          mysql < ./mysql/DynamicQuery.sql
**      2. Otherwise, the target database must be specified, for example:
**          mysql wordpress_db < ./mysql/DynamicQuery.sql
**      3. If authentication is required by MySQL server configuration, use:
**          mysql -u username -p wordpress_db < ./mysql/DynamicQuery.sql
**
** NOTE: Absolute paths are fine to use.
**
*/

-- Specify which fields to select
set @fields = ' ID as id, post_type as type, post_title as title ';

-- Specify target table
set @table = ' from wp_posts';

-- Exclude a list of post types ('attachment', 'revision', 'nav_menu_item')
set @condition = ' where post_type not in (
    \'attachment\', \'revision\', \'nav_menu_item\', \'oembed_cache\',
    \'option-tree\', \'polylang_mo\') ';

-- Following method is also valid for creating a user-defined variable but it
-- echoes the expression value to console.
select @order := ' order by id asc';

-- Create a query (string) from variables
set @q = concat('select', @fields, @table, @condition, @order);

-- Prepare a statement from query string and execute it
prepare stmt from @q;
execute stmt;

-- Deallocate the prepared statement
deallocate prepare stmt;