# Variables
COMPOSE = docker compose
COMPOSE_FILE = srcs/docker-compose.yml
NAME = inception
DATA_PATH = /home/maudiffr/data

# Commandes principales
all: up

up:
	$(COMPOSE) -f $(COMPOSE_FILE) up -d --build

down:
	$(COMPOSE) -f $(COMPOSE_FILE) down

clean:
	$(COMPOSE) -f $(COMPOSE_FILE) down -v

fclean: clean
	docker system prune -af --volumes
	sudo rm -rf $(DATA_PATH)/mariadb/*
	sudo rm -rf $(DATA_PATH)/wordpress/*

re: fclean all
