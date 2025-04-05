FROM debian:latest

RUN apt update &&\
    apt-get install -y mariadb-server 

RUN apt install -y  vim &&\
    apt install -y sudo 

COPY ./config/debian.cnf /etc/mysql/debian.cnf 

COPY ./tools/setup.sh . 

RUN chmod +x setup.sh

CMD ["bash", "setup.sh"]

