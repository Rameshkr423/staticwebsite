#!/bin/bash
set -e

CONTAINER_NAME="static-web-app"

if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
  echo "Stopping container..."
  docker stop $CONTAINER_NAME
  docker rm $CONTAINER_NAME
  echo "Container stopped and removed."
else
  echo "No running container found."
fi
