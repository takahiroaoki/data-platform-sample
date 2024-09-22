include .devcontainer/.env

psql:
	psql -h postgres -U $(POSTGRES_USER)

create-db:
	psql -h postgres -U $(POSTGRES_USER) -f ./database/init/create_database.sql

drop-db:
	psql -h postgres -U $(POSTGRES_USER) -f ./database/init/drop_database.sql

migrate-up:
	~/go/bin/migrate -path "/mnt/manager/database/migration" -database "postgres://postgres:password@postgres:5432/demodb?sslmode=disable" up

migrate-down:
	~/go/bin/migrate -path "/mnt/manager/database/migration" -database "postgres://postgres:password@postgres:5432/demodb?sslmode=disable" down

db-sample:
	psql -h postgres -U $(POSTGRES_USER) -d demodb -f ./database/devutil/sample.sql