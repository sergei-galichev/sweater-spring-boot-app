#!/bin/bash

docker run --name pg-13.3 -p 5432:5432 \
    -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=masterkey -e POSTGRES_DB=postgres \
    -d postgres:13.3

docker run --name pgadm \
    -e PGADMIN_DEFAULT_EMAIL=sergey.galichev@outlook.com -e PGADMIN_DEFAULT_PASSWORD=masterkey \
    -p 82:80 -d dpage/pgadmin4:latest