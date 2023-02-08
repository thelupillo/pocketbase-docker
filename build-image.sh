#!/bin/bash

BASE_TAG="thelupillo/pocketbase"
LATEST_VERSION=$(cat ./Dockerfile | grep "ARG PB_VERSION=" | cut -d "=" -f2-)

docker build -t ${BASE_TAG}:latest -t ${BASE_TAG}:${LATEST_VERSION} .
