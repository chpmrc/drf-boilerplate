#!/usr/bin/env bash

# This script starts the development environment using Docker
# Launch as: source tools/dev.sh from the project's root

# Prepare build environment
source .env
export DJANGO_SETTINGS_MODULE=config.settings.local

# Clean-up
docker-compose -f ./docker-compose-dev.yml stop
docker-compose -f ./docker-compose-dev.yml rm

# Build
echo "Building/starting containers in 3 seconds...Ctrl+C to abort"
sleep 3
docker-compose -f ./docker-compose-dev.yml build

# Run containers
docker-compose -f ./docker-compose-dev.yml up -d

# Run development container interactively
docker exec -it {{cookiecutter.project_slug}}_web_1 bash