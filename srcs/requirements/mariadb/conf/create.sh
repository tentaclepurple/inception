#!/bin/bash

echo "CREATE DATABASE IF  NOT EXISTS $MYSQL_DATABASE ;"
echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' ;"
echo "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' ;" 
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD' ;" 
echo "FLUSH PRIVILEGES;"

#echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE ;"
# create a database with the specified name if it does not already exist.

#echo "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' ;"
# create a user with the specified username and password, allowing connections from any host.

#echo "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%' ;"
# grant all privileges on the specified database to the created user.

#echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD' ;"
# alter the password for the MySQL root user when connecting from localhost.

#echo "FLUSH PRIVILEGES;"
# flush/reinit privileges, applying the changes made by the previous commands.
