#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=elnaggar3012/devops-proj4
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run proj4 --generator=run-pod/v1 --image=$dockerpath --port=80
# Step 3:
# List kubernetes pods
kubectl list pods
# Step 4:
# Forward the container port to a host
kubectl port-forward pod/proj4 8000:80