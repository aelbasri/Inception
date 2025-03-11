FROM debian:latest

RUN apt update &&\
	apt install nginx -y 
#RUN mkdir -p /etc/nginx/ssl &&\
#	openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
#	-keyout /etc/nginx/ssl/private.key \
#	-out /etc/nginx/ssl/certificate.crt

COPY ./config/nginx.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g", "daemon off"]
