#!/bin/bash
whattorun=$(sudo docker images -q | head -n 1)
sudo docker run -i -d -p 19126:19126 $whattorun
echo "run ./docker_bash.sh to enter the container "
