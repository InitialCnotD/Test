.PHONY: up down run

up:
	docker-compose up -d

down:
	docker-compose down -v

run:
	docker-compose exec -u postgres postgres psql -U newuser -d newdb
