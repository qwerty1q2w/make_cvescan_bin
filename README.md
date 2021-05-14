# make_cvescan_bin
docker build --tag name:test - < Dockerfile
docker run -d id
CONTAINER_ID=$(docker ps -alq)
docker cp $CONTAINER_ID:dist/cvescan /tmp/
