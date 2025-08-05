REDIRE = ./srcs/docker-compose.yml

build:
	@mkdir -p /home/moer-ret/data/mariadb
	@mkdir -p /home/moer-ret/data/wordpress
	@docker compose -f ${REDIRE} build

up:
	@docker compose -f ${REDIRE} up -d 

down:
	@docker compose -f ${REDIRE} down

clean:
	docker compose -f ${REDIRE} down -v
	docker system prune -af
	sudo rm -rf /home/moer-ret/data/mariadb
	sudo rm -rf /home/moer-ret/data/wordpress
