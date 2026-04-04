#!/bin/bash
docker rm -f my-nginx-project 2>/dev/null
docker run -d --name my-nginx-project -p 8090:80 -v "$(pwd)/index.html:/usr/share/nginx/html/index.html:ro" nginx
