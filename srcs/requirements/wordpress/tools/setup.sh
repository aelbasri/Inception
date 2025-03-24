#! /usr/bin/bash

mkdir -p /var/www/html

cd /var/www/html

wget -O wp-cli.phar https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp

sudo chown -R www-data:www-data /var/www/html
sudo chmod -R 755 /var/www/html

su - data-www

wp core download 

cp wp-config-sample.php wp-config.php

wp config create --dbname=$DBNAME --dbuser=$DBUSER --prompt=$DBPASS
wp db create 

php-fpm8.2 -F
