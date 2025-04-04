#! /bin/bash

echo "[mysqld]" >> /etc/mysql/my.cnf
echo "socket=/var/run/mysqld/mysqld.sock" >> /etc/mysql/my.cnf
echo "[client]" >> /etc/mysql/my.cnf
echo "socket=/var/run/mysqld/mysqld.sock" >> /etc/mysql/my.cnf

(echo "CREATE DATABASE $DBNAME;" && \
 echo "CREATE USER '$DBUSER'@'localhost' IDENTIFIED BY '$DBPASS';" && \
 echo "GRANT ALL PRIVILEGES ON $DBNAME.* TO '$DBUSER'@'localhost';" && \
 echo "FLUSH PRIVILEGES;") | mariadb

mariadbd-safe

#echo CREATE USER "$DBUSER"@'localhost' IDENTIFIED BY "$DBPASS";
#echo GRANT ALL PRIVILEGES ON wordpress.* TO "$DBUSER"@'localhost'; 
#echo FLUSH PRIVILEGES;  
#echo EXIT;

