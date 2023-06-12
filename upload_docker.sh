#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=chunglm/housing-prediction

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u ${DOCKER_USER} -p ${DOCKER_PASSWORD}
docker tag housing-prediction ${dockerpath}:latest

# Step 3:
docker push ${dockerpath}:latest
