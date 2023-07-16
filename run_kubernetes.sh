#!/bin/bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="macthanhca/price-prediction:latest"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run price-prediction\
    --image=$dockerpath\
    --port=80 --labels app=price-predictione

# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/price-prediction --address 0.0.0.0 8000:80