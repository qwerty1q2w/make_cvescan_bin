Docker container for making cvescan binary from https://github.com/canonical/sec-cvescan No spapd, no dependencies, only one binary file. And for making debian package with cvescan + my scripts for enriching cvescan report + cron.d task and logrotate.d task
---
1) git clone https://github.com/qwerty1q2w/make_cvescan_bin
2) docker build --tag name:cvescan - < make_cvescan_bin/Dockerfile
4) IMAGE_ID=$(docker images | grep cvescan | awk {'print $3'})
5) docker run -d $IMAGE_ID
6) CONTAINER_ID=$(docker ps -al | grep $IMAGE_ID | awk {'print $1'})
7) docker cp $CONTAINER_ID:dist/cvescan /tmp/
8) docker cp $CONTAINER_ID:ext-cvescan.deb /tmp    ### deb_package with cvescan and script https://github.com/qwerty1q2w/cvescan_handler/blob/master/cvescan_handler and task in cron.d and logrotate.d

or use https://github.com/qwerty1q2w/make_cvescan_bin/releases/

