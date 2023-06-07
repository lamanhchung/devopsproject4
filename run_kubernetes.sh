#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=chunglm/housing-prediction

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ${dockerpath} --image=housing-prediction --port=80

# Step 3:
# List kubernetes pods
kubectl get pod -o wide

# Step 4:
# Forward the container port to a host
kubectl port-forward ${dockerpath} 80:80
