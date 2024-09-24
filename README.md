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
```
Next, insert train data of titanic, `database/titanic/data/train.csv`, into `titanic` table via postgresql extension.

Then, visit `http://localhost:3000` and set initial configuration via UI.

After make a connection to `titanic` database from the UI, you can analyze data.

## Debug
```
# In the manager container @/mnt/debug
# then enter "password"
$ make psql
```