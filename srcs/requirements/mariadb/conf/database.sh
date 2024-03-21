#!/bin/bash

service mysql start
echo "CREATE DATABASE IF NOT EXISTS $SQL_DATABASE ;" > db.sql
echo "CREATE USER IF NOT EXISTS '$SQL_USER'@'%' IDENTIFIED BY '$SQL_PASSWORD' ;" >> db.sql
echo "GRANT ALL PRIVILEGES ON $SQL_DATABASE.* TO '$SQL_USER'@'%' ;" >> db.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY $SQL_ROOT_PASSWORD ;" >> db.sql
echo "FLUSH PRIVILEGES;" >> db.sql

mysql < db.sql

mysqladmin -u root -p $SQL_ROOT_PASSWORD shutdown

exec mysqld_safe