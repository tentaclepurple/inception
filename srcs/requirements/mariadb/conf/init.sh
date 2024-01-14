#!/bin/bash

chown -R mysql /var/lib/mysql

sed -i 's/^socket\s*=.*/socket=\/var\/run\/mysqld\/mysqld.sock/' /etc/mysql/mariadb.conf.d/50-server.cnf

sed -i "s/^bind-address\s*=.*$/#bind-address = 127.0.0.1/"  /etc/mysql/mariadb.conf.d/50-server.cnf
sed -i "s/skip-networking/#skip-networking/g" /etc/mysql/mariadb.conf.d/50-server.cnf

sed -i "s/#\?port\s*=.*/port=3306/" /etc/mysql/mariadb.conf.d/50-server.cnf

/etc/init.d/mariadb restart
chmod +x /tmp/create.sh
service mariadb restart

#Mariadb configuration
#chown -R mysql /var/lib/mysql
# Change the owner recursively (in all subdirectories) of the /var/lib/mysql directory to the user 'mysql'.

#sed -i 's/^socket\s*=.*/socket=\/var\/run\/mysqld\/mysqld.sock/' /etc/mysql/mariadb.conf.d/50-server.cnf
# Use sed to edit the MariaDB server configuration file, changing the location of the MariaDB socket.

#sed -i "s/^bind-address\s*=.*$/#bind-address = 127.0.0.1/"  /etc/mysql/mariadb.conf.d/50-server.cnf
# Use sed to comment out the 'bind-address' line, allowing MariaDB to listen on all interfaces.

#sed -i "s/skip-networking/#skip-networking/g" /etc/mysql/mariadb.conf.d/50-server.cnf
# Use sed to comment out the 'skip-networking' line, allowing network connections.

#sed -i "s/#\?port\s*=.*/port=3306/" /etc/mysql/mariadb.conf.d/50-server.cnf
# Use sed to set the MariaDB port to 3306 by uncommenting and modifying the 'port' line.

#/etc/init.d/mariadb restart
# Restart the MariaDB service using the provided system init script.

#service mariadb restart
# Restart the MariaDB service using the 'service' command.
