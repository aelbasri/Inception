build:
	docker compose -f ./srcs/docker-compose.yml build
run:
	docker compose -f ./srcs/docker-compose.yml up

clean:
	docker compose -f ./srcs/docker-compose.yml down
	docker image rm wordpress:latest nginx_webserver:latest
rebuild: clean
	docker compose -f ./srcs/docker-compose.yml build

