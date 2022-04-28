#!/bin/bash

docker run -d \
    --name pgsql \
    -e POSTGRES_PASSWORD='123456' \
    -e PGDATA=/var/lib/postgresql/data/pgdata \
    -p 5432:5432 \
    -v $(pwd)/data:/var/lib/postgresql/data \
    postgres:latest

