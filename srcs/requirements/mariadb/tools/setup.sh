#! /bin/bash

mariadbd-safe

mariadb -e "CREATE DATABASE $DBNAME;"
mariadb -e "CREATE USER '$DBUSER'@'localhost' IDENTIFIED BY '$DBPASS';"
mariadb -e "GRANT ALL PRIVILEGES ON $DBNAME.* TO '$DBUSER'@'localhost';" 
mariadb -e "FLUSH PRIVILEGES;"

mysqladmin -u root shutdown

mariadbd-safe
