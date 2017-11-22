#!/bin/bash

echo 'Stoppint all containers'
docker stop $(docker ps -aq)

echo 'removing all containers'
docker rm $(docker ps -aq)

echo 'deleating all images'
docker rmi -f $(docker images -q)

echo 'Removing Networks'

docker network rm $(docker network ls -q)
echo 'done.'
