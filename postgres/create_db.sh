#! /bin/bash

echo "Creating a database if does not exists"

LOCAL_DB_USERNAME=postgres
LOCAL_DATABASE=dvdrental
PGPASSWORD=postgres

echo "*****working directory is $PWD *****"

psql -U $LOCAL_DB_USERNAME dvdrental < /data/restore.sql
pg_restore -c  -U postgres -d dvdrental /data/dvdrental.tar






