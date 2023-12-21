#!/bin/bash
set -e

if [ "$(psql -U postgres -ltq | cut -d \| -f 1 | grep -wc ${POSTGRES_DB})" = '1' ]; 
then
 echo "DB ${POSTGRES_DB} already exist"
 psql -v ON_ERROR_STOP=1 --username ${POSTGRES_USER} --dbname ${POSTGRES_DB} <<-EOSQL
      CREATE SCHEMA IF NOT EXISTS sem AUTHORIZATION ${POSTGRES_USER};
      CREATE EXTENSION IF NOT EXISTS postgis;
EOSQL
else
 psql -v ON_ERROR_STOP=1 --username ${POSTGRES_USER} --dbname ${POSTGRES_DB} <<-EOSQL
  CREATE DATABASE ${POSTGRES_DB} WITH OWNER = ${POSTGRES_USER} ENCODING= 'UTF8';
  CREATE SCHEMA IF NOT EXISTS sem AUTHORIZATION ${POSTGRES_USER};
  CREATE EXTENSION IF NOT EXISTS postgis;
EOSQL
fi