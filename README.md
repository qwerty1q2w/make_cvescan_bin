#ww
1) docker build --tag name:test - < Dockerfile
2) docker run -d id
3) CONTAINER_ID=$(docker ps -alq)
4) docker cp $CONTAINER_ID:dist/cvescan /tmp/
