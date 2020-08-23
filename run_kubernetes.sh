#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="joannasprott/clouddevops"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run clouddevops\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=8000 --labels app=clouddevops


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward clouddevops 8000:80

