#!/bin/bash
docker rm -f my-nginx-v2 2>/dev/null
docker build -t docker-nginx-hello .
docker run -d --name my-nginx-v2 -p 8090:80 docker-nginx-hello
