#!/bin/sh

doccker_build="docker buildx build -t 'custom-postgres':latest ./postgres"

docker_run="docker run"
docker_run="$docker_run -e POSTGRES_DB=$INPUT_POSTGRESQL_DB"
docker_run="$docker_run -e POSTGRES_USER=$INPUT_POSTGRESQL_USER"
docker_run="$docker_run -e POSTGRES_PASSWORD=$INPUT_POSTGRESQL_PASSWORD"
docker_run="$docker_run -d -p 5432:5432 'custom-postgres':latest"

sh -c "$doccker_build"
sh -c "$docker_run"
