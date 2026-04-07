#!/bin/bash

# Variables
DOCKER_USERNAME="mahadhevant"
REPO_NAME="mybesant-web"
IMAGE_NAME="webimage"
TAG="v1"

echo "Building Image..."
docker build -t $IMAGE_NAME:$TAG .

echo "Tagging Image..."
docker tag $IMAGE_NAME:$TAG $DOCKER_USERNAME/$REPO_NAME:$TAG

echo "Logging into Docker Hub..."
docker login

echo "Pushing Image..."
docker push $DOCKER_USERNAME/$REPO_NAME:$TAG

echo "Done!"
