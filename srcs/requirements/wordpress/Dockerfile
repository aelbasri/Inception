FROM debian:latest

RUN apt update && \
    apt install -y \
    php \
    php-fpm \
    php-mysql \
    php-curl \
    php-gd \
    php-mbstring \
    php-xml \
    php-xmlrpc \
    vim \
    curl \
    wget
	  
RUN mkdir -p /var/www/html
WORKDIR /var/www/html

RUN apt install -y php-fpm

RUN wget https://wordpress.org/latest.tar.gz &&\
	tar -xzvf latest.tar.gz &&\  
	rm latest.tar.gz &&\
	chmod -R 755 wordpress &&\
	mv wordpress/* . &&\
	rm -rf wordpress &&\
	chown -R  www-data:www-data *

CMD  ["php-fpm8.2", "-F"]
