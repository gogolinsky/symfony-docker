up: docker-up
down: docker-down
build: docker-build
init: rmdir mkdir docker-down-force build up composer-install

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down

docker-build:
	docker-compose build

docker-down-force:
	docker-compose down -v --remove-orphans

composer-install:
	docker-compose run --rm php-cli composer create-project symfony/skeleton .

init-tank:
	touch tank/token.txt

mkdir:
	mkdir app

rmdir:
	rm -rf app