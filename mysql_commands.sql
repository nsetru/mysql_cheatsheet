-- dump the database from a remote server to a local server
$ mysqldump -h[hostname] -u[db_username] -p [database_name] > mysql_dump.sql

-- For error ::
-- mysqldump: Error 2020: Got packet bigger than 'max_allowed_packet' bytes when dumping table `[tablename]` at row: 26500
$ mysqldump -h[hostname] --max-allowed-packet=536870912 -u[db_username] -p [database_name] > mysql_dump.sql

-- Show queries runnoing currently
$ mysql -u [username] -p [password]
mysql> show processlist;

-- Kill queries that are taking too long
mysql> kill [ID from first column of processlist];


