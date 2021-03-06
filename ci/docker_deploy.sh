#!/usr/bin/env bash

set -e

docker run \
  -e DEPLOYMENT_TARGET_USER \
  -e DEPLOYMENT_TARGET_ADDRESS \
  -e DEPLOYMENT_TARGET_PATH \
  -e DEPLOYMENT_TARGET_PASSWORD \
  -e BUILD_TARGET \
  -e BUILD_NAME \
  -w /build \
  -v $(pwd):/build/ \
  $IMAGE_NAME \
  ./ci/deploy.sh
