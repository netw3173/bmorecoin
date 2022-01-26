#!/bin/bash
whattostop=$(sudo docker ps | awk -v f=1 '$f ~ /^[[:alnum:]]{12}$/ { print $f }')
sudo docker stop -t 30 $whattostop
