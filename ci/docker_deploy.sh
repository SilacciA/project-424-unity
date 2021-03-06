#!/usr/bin/env bash

set -e

docker run \
  -e DEPLOYMENT_TARGET_USER \
  -e DEPLOYMENT_TARGET_ADDRESS \
  -e DEPLOYMENT_TARGET_PATH \
  -e BUILD_TARGET \
  -e BUILD_NAME \
  -w /build \
  -v $(pwd):/build/ \
  $IMAGE_NAME \
  scp -r Builds/$BUILD_TARGET/$BUILD_NAME/Build $DEPLOYMENT_TARGET_USER@$DEPLOYMENT_TARGET_ADDRESS:$DEPLOYMENT_TARGET_PATH
