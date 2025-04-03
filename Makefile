build:
	docker compose -f ./srcs/docker-compose.yml build
run:
	docker compose -f ./srcs/docker-compose.yml up

clean:
	#sudo rm -rf ~/data/wordpress_database/* ~/data/wordpress_files/*
	docker compose -f ./srcs/docker-compose.yml down
	docker image rm wordpress:latest nginx:latest mariadb:latest
rebuild: clean
	docker compose -f ./srcs/docker-compose.yml build

