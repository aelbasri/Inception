FROM debian:latest

RUN apt update &&\
	apt install -y mariadb-server 
RUN apt install -y  vim && apt install -y sudo 

COPY ./tools/setup.sh . 

RUN chmod +x setup.sh

CMD ["bash", "setup.sh"]

