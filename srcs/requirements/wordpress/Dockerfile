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
    wget \
    sudo
	  
RUN sudo apt install -y php-fpm

COPY ./tools/setup.sh .

RUN chmod +x setup.sh 

#EXPOSE 9000

CMD  ["bash", "setup.sh"]
