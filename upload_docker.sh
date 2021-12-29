#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=mysamir_api

# Step 2:  
# Authenticate & tag
docker login --username ahmedsamir2021
docker tag mysamir_api ahmedsamir2021/mysamir_api
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push ahmedsamir2021/mysamir_api:latest
