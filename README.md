#Docker container for making cvescan binary from https://github.com/canonical/sec-cvescan No spapd, no dependencies, only one binary file.

1) docker build --tag name:test - < Dockerfile
2) docker run -d id
3) CONTAINER_ID=$(docker ps -alq)
4) docker cp $CONTAINER_ID:dist/cvescan /tmp/
