#!/bin/bash
# apt
sudo apt install -y curl
# yum
sudo yum install -y curl
# Common
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo docker build .
whattorun=$(sudo docker images -q | head -n 1)
sudo docker run -i -d -p 19126:19126 $whattorun
whattodebug=$(sudo docker ps | awk -v f=1 '$f ~ /^[[:alnum:]]{12}$/ { print $f }')
sudo docker exec -ti $whattodebug bash
