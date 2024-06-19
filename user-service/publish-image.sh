#!/bin/bash

version=v$(npm run env | grep "npm_package_version" | cut -d "=" -f2)
img_name=user-service
region=us-central1
project_id=rising-lyceum-426405-n4
latest_tag=$img_name:latest
version_tag=$img_name:$version
gcp_url=gcr.io/$project_id/$version_tag

docker build -t $latest_tag -t $gcp_url .
docker push $gcp_url