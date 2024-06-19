version=v$(npm run env | grep "npm_package_version" | cut -d "=" -f2)

docker build -t ayusha2599/user-service-node:latest -t ayusha2599/user-service-node:$version .
docker push ayusha2599/user-service-node:latest