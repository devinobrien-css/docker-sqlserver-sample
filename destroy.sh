#!/bin/bash

IMAGE_NAME="sqlserver-image"
CONTAINER_NAME="sqlserver-container"

echo "-----------------------------"

# Stop and remove the Docker container
if docker stop $CONTAINER_NAME; then
    echo "Docker container $CONTAINER_NAME stopped."
    docker rm $CONTAINER_NAME
    echo "Docker container $CONTAINER_NAME removed."
else
    echo "Docker container $CONTAINER_NAME not found or already stopped."
fi

# Remove the Docker image
if docker image rm $IMAGE_NAME; then
    echo "Docker image $IMAGE_NAME removed."
else
    echo "Docker image $IMAGE_NAME not found or in use."
fi