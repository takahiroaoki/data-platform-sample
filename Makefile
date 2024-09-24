include .devcontainer/.env

init-db:create-db migrate-up

create-db:
	psql -h postgres -U $(POSTGRES_USER) -f ./database/init/create_database.sql

drop-db:
	psql -h postgres -U $(POSTGRES_USER) -f ./database/init/drop_database.sql

migrate-up:
	~/go/bin/migrate -path "/mnt/manager/database/migration" -database "postgres://postgres:password@postgres:5432/titanic?sslmode=disable" up

migrate-down:
	~/go/bin/migrate -path "/mnt/manager/database/migration" -database "postgres://postgres:password@postgres:5432/titanic?sslmode=disable" down

psql:
	psql -h postgres -U $(POSTGRES_USER)