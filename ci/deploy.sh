#!/bin/sh

set -e

apk add --update --no-cache openssh sshpass

sshpass -p $DEPLOYMENT_TARGET_PASSWORD scp -r Builds/$BUILD_TARGET/$BUILD_NAME/Build $DEPLOYMENT_TARGET_USER@$DEPLOYMENT_TARGET_ADDRESS:$DEPLOYMENT_TARGET_PATH
