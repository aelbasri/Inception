FROM debian:latest

RUN apt update &&\
	apt install -y nginx &&\
	apt install -y openssl 

RUN apt install -y  vim 

RUN mkdir -p /etc/nginx/ssl &&\
	openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-keyout /etc/nginx/ssl/private.key \
	-out /etc/nginx/ssl/certificate.crt \
	-subj "/CN=localhost"

COPY ./config/nginx.conf /etc/nginx/conf.d/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
