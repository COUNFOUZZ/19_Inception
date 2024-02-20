all : up

check_dir :
	mkdir -p ~/data/wordpress
	mkdir -p ~/data/mariadb

up : check_dir
	@docker-compose -f ./srcs/docker-compose.yaml up -d

down : 
	@docker-compose -f ./srcs/docker-compose.yaml down

stop : 
	@docker-compose -f ./srcs/docker-compose.yaml stop

start : 
	@docker-compose -f ./srcs/docker-compose.yaml start

status : 
	@docker ps