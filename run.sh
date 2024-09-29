#!/usr/bin/env bash

docker stop $(docker ps -a --format '{{.Names}}')


docker rm $(docker ps -a --format ‘{{.Names}}’)


docker run -p 8082:80 -d --platform linux/x86_64 --pull=always cedarnet7/hello_world:main
