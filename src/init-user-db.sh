#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER algamoneyapp PASSWORD 'Alg@moneyap1';
    CREATE DATABASE algamoneyapi;
    GRANT ALL PRIVILEGES ON DATABASE algamoneyapi TO algamoneyapp;
EOSQL