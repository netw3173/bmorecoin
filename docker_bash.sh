#!/bin/bash
whattodebug=$(sudo docker ps | awk -v f=1 '$f ~ /^[[:alnum:]]{12}$/ { print $f }')
sudo docker exec -ti $whattodebug bash
