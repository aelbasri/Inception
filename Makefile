build:
	docker compose -f ./srcs/docker-compose.yml -p inception build
run:
	docker compose -f ./srcs/docker-compose.yml -p inception up

clean:
	docker compose -f ./srcs/docker-compose.yml -p inception down
	docker image rm wordpress:latest nginx:latest mariadb:latest
vclear:
	sudo rm -rf ~/data/wordpress_database/* ~/data/wordpress_files/*

rebuild: clean build

