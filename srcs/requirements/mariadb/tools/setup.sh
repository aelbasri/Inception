#! /bin/bash

sudo mariadb
CREATE DATABASE $DBNAME;
CREATE USER "$DBUSER"@'localhost' IDENTIFIED BY "$DBPASS";
GRANT ALL PRIVILEGES ON wordpress.* TO 'wpuser'@'localhost';
FLUSH PRIVILEGES;
EXIT;

mariadbd-safe
