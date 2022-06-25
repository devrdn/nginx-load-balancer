build:
	docker-compose build

up:
	docker-compose up --scale nginx-node=3

rm:
	docker-compose down

stop:
	docker-compose stop

rebuild: build up


bash:
	docker exec -it nginx-load-balancer-nginx-node-$(N) bash 