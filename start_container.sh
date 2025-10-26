#!/bin/bash
set -e

# Define variables
IMAGE_NAME="rameshkr423/static-web-app"
CONTAINER_NAME="static-web-app"

# Stop and remove any existing container
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
  echo "Stopping existing container..."
  docker stop $CONTAINER_NAME
  docker rm $CONTAINER_NAME
fi

# Pull latest image from Docker Hub (or ECR)
echo "Pulling latest image..."
docker pull $IMAGE_NAME:latest

# Run the new container
echo "Starting new container..."
docker run -d -p 8080:80 --name $CONTAINER_NAME $IMAGE_NAME:latest

echo "Static website container started successfully."
