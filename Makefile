include .devcontainer/.env

psql:
	psql -h postgres -U $(POSTGRES_USER)

create-db:
	psql -h postgres -U $(POSTGRES_USER) -f ./database/init/create_database.sql

drop-db:
	psql -h postgres -U $(POSTGRES_USER) -f ./database/init/drop_database.sql