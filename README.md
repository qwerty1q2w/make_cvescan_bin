Docker container for making cvescan binary from https://github.com/canonical/sec-cvescan No spapd, no dependencies, only one binary file.
---
1) docker build --tag name:cvescan - < Dockerfile
2) IMAGE_ID=$(docker images | grep cvescan | awk {'print $3'})
2) docker run -d $IMAGE_ID
3) CONTAINER_ID=$(docker ps -al | grep $IMAGE_ID | awk {'print $1'})
4) docker cp $CONTAINER_ID:dist/cvescan /tmp/
