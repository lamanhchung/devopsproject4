#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t housing-prediction .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
docker run -p 80:80 housing-prediction
