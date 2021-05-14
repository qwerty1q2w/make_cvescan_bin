Docker container for making cvescan binary from https://github.com/canonical/sec-cvescan No spapd, no dependencies, only one binary file.
---
1) git clone https://github.com/qwerty1q2w/make_cvescan_bin
2) docker build --tag name:cvescan - < make_cvescan_bin/Dockerfile
4) IMAGE_ID=$(docker images | grep cvescan | awk {'print $3'})
5) docker run -d $IMAGE_ID
6) CONTAINER_ID=$(docker ps -al | grep $IMAGE_ID | awk {'print $1'})
7) docker cp $CONTAINER_ID:dist/cvescan /tmp/
