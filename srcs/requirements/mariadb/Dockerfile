FROM debian:latest

RUN apt update &&\
	apt install -y mariadb-server

RUN apt install -y  vim

CMD ["mysqld_safe"]
