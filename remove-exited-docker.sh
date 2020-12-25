#!/bin/bash
EXITEDCONTAINERS=`docker ps -a | grep Exited | cut -d ' ' -f1`
echo $EXITEDCONTAINERS
for EXITEDCONTAINER in $EXITEDCONTAINERS ; do
    docker rm $EXITEDCONTAINER
done
