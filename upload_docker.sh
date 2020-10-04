#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=elnaggar3012/devops-proj4
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username elnaggar3012
docker tag devops-proj4 $dockerpath

# Step 3:
# Push image to a docker repository
docker push elnaggar3012/devops-proj4