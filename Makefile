build:
	docker compose -f ./srcs/docker-compose.yml build
run:
	docker compose -f ./srcs/docker-compose.yml up

clean:
	docker compose -f ./srcs/docker-compose.yml down
	docker image rm wordpress:latest nginx:latest mariadb:latest
vclear:
	sudo rm -rf ~/data/wordpress_database/* ~/data/wordpress_files/*

rebuild: clean build

