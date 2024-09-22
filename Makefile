include .devcontainer/.env
psql:
	psql -h postgres -U $(POSTGRES_USER) -d $(POSTGRES_DATABASE)