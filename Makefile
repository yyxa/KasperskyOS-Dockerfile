SHELL := bash

.PHONY: all
all: down up

.PHONY: logs
logs:
	@docker compose logs -f --tail 100

.PHONY: down
down:
	@docker compose down 

.PHONY: up
up:
	@docker compose up --build -d

.PHONY: cli
cli:
	@docker exec -it kasperskyos-container /bin/bash
