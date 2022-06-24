build:
	docker-compose build

up:
	docker-compose up

rm:
	docker-compose down

stop:
	docker-compose stop

rebuild: stop build up
