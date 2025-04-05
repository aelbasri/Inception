#! /usr/bin/bash

mkdir -p /var/www/html

cd /var/www/html

wget -O wp-cli.phar https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp

sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

wp core download --allow-root

cp wp-config-sample.php wp-config.php

sudo sed -i "s/database_name_here/$DBNAME/g" wp-config.php 
sudo sed -i "s/username_here/$DBUSER/g" wp-config.php 
sudo sed -i "s/password_here/$DBPASS/g" wp-config.php 

#wp config create --dbname=$DBNAME --dbuser=$DBUSER --prompt=$DBPASS --allow-root 
#wp db create --allow-root

php-fpm8.2 -F
