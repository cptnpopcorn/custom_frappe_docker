#!/bin/bash

ERPNEXT_VERSION=v12
FRAPPE_VERSION=version-12

docker build --build-arg=GIT_BRANCH=$FRAPPE_VERSION -t frappe-nginx:$ERPNEXT_VERSION . --file build/frappe-nginx/Dockerfile
docker build --build-arg=IMAGE_TAG=$ERPNEXT_VERSION --build-arg=GIT_BRANCH=$FRAPPE_VERSION . --file build/erpnext-nginx/Dockerfile
#docker build --build-arg=FRAPPE_BRANCH=$VERSION -t custom-erpnext-nginx:$TAG build/nginx
#docker build --build-arg=FRAPPE_BRANCH=$VERSION -t custom-erpnext-worker:$TAG build/worker
