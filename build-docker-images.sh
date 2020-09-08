#!/usr/bin/env bash

# Builds three Docker images for Freeflow.
# Use `docker run ... ffrouter` for the Freeflow router.
# Use `docker run ... ffclient` for the Freeflow client.
docker build . -f Dockerfile-base -t ffbase
docker build . -f Dockerfile-router -t ffrouter
docker build . -f Dockerfile-client -t ffclient
