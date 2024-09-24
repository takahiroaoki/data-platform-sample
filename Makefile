include .devcontainer/.env

init-db:create-db-titanic migrate-up-titanic

create-db-titanic:
	psql -h postgres -U $(POSTGRES_USER) -f ./database/titanic/init/create_database.sql

drop-db-titanic:
	psql -h postgres -U $(POSTGRES_USER) -f ./database/titanic/init/drop_database.sql

migrate-up-titanic:
	~/go/bin/migrate -path "/mnt/manager/database/titanic/migration" -database "postgres://postgres:password@postgres:5432/titanic?sslmode=disable" up

migrate-down-titanic:
	~/go/bin/migrate -path "/mnt/manager/database/titanic/migration" -database "postgres://postgres:password@postgres:5432/titanic?sslmode=disable" down

psql:
	psql -h postgres -U $(POSTGRES_USER)