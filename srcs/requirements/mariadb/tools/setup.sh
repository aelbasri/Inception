#! /bin/bash

#mysql_secure_installation

#echo "[mysqld]" >> /etc/mysql/my.cnf
#echo "datadir = /var/lib/mysql" >> /etc/mysql/my.cnf
#echo "socket  = /run/mysqld/mysqld.sock" >> /etc/mysql/my.cnf
#echo "bind_address=*" >> /etc/mysql/my.cnf
#echo "port = 3306" >> /etc/mysql/my.cnf
#echo "user = mysql" >> /etc/mysql/my.cnf

#echo "[mysqld]" >> /etc/mysql/my.cnf
#echo "socket = /var/run/mysqld/mysqld.sock" >> /etc/mysql/my.cnf
#echo "[client]" >> /etc/mysql/my.cnf
#echo "socket = /var/run/mysqld/mysqld.sock" >> /etc/mysql/my.cnf
#service mysqld start

(echo "CREATE DATABASE $DBNAME;" && \
 echo "CREATE USER '$DBUSER'@'localhost' IDENTIFIED BY '$DBPASS';" && \
 echo "GRANT ALL PRIVILEGES ON $DBNAME.* TO '$DBUSER'@'localhost';" && \
 echo "FLUSH PRIVILEGES;") | mariadb

#service mariadb stop

mariadbd-safe

#echo CREATE USER "$DBUSER"@'localhost' IDENTIFIED BY "$DBPASS";
#echo GRANT ALL PRIVILEGES ON wordpress.* TO "$DBUSER"@'localhost'; 
#echo FLUSH PRIVILEGES;  
#echo EXIT;

