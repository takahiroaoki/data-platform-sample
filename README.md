# metabase-sample

## Requirement
- Docker Desktop
- VSCode & Dev Container Extension
※The maintainer uses codespaces.

## Setup
After all containers up, execute the following command.
If the password is asked, enter `password`.
```
$ make init-db
$ make db-sample
```
Then, visit `http://localhost:3000` and set initial configuration via UI.

## Debug
```
# In the manager container @/mnt/debug
# then enter "password"
$ make psql
```