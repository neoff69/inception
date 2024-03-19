NAME				=	inception

DOCKER_COMPOSE_PATH	=	$(DIR_SRC)docker-compose.yml

DOCKER_COMPOSE		=	sudo docker compose -f $(DOCKER_COMPOSE_PATH)

DIR_SRC				=	srcs/

VOL_PATH			=	/home/vgonnot/data/

WP_VOLUME			= 	$(VOL_PATH)wordpress
MARIADB_VOLUME		=	$(VOL_PATH)mariadb

VOLUMES				=	$(WP_VOLUME) $(MARIADB_VOLUME)

include $(DIR_SRC).env

.PHONY:	all up down clean fclean re prune volumes

all: volumes up

up:
		$(DOCKER_COMPOSE) up --build

down:
		$(DOCKER_COMPOSE) down

clean:
		$(DOCKER_COMPOSE) down --volumes --rmi all --remove-orphans

fclean: clean
		sudo rm -rf $(VOLUMES)

re: clean volumes

		$(DOCKER_COMPOSE) build --no-cache
		$(DOCKER_COMPOSE) up

prune:
		sudo docker system prune

volumes:
		sudo mkdir -p $(VOLUMES)

