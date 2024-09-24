# metabase-sample

This is the sample metabase analyzing kit for [Titanic - Machine Learning from Disaster](https://www.kaggle.com/competitions/titanic/overview), the famous dataset for machine-learning.

## Requirement
- Docker Desktop
- VSCode & Dev Container Extension
※The maintainer uses codespaces.

## Setup
1. Download the data
Fron [Titanic - Machine Learning from Disaster](https://www.kaggle.com/competitions/titanic/overview), download the `train.csv` and deploy it at `database/titanic/data/train.csv`.

2. Setup database
After all containers up, execute the following command.
If the password is asked, enter `password`.
```
$ make init-db
```
Next, insert train data of titanic, `database/titanic/data/train.csv`, into `titanic` table via postgresql extension.

3. Setup metabase
Then, visit `http://localhost:3000` and set initial configuration via UI.

After making a connection to `titanic` database from the UI, you can analyze data.

## Debug
```
# In the manager container @/mnt/debug
# then enter "password"
$ make psql
```