#!/bin/bash
# Builds the Docker image and tags it with the current Git commit SHA

GIT_SHA=$(git rev-parse --short HEAD)
IMAGE_NAME="sample-app"

echo "Building image $IMAGE_NAME:$GIT_SHA..."

docker build \
  -t ${IMAGE_NAME}:latest \
  -t ${IMAGE_NAME}:${GIT_SHA} \
  -f Dockerfile \
  ../../05-github-actions/sample-app

echo "Build complete! Run 'docker images' to verify."
