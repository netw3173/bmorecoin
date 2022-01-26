#!/bin/bash
echo "Stopping Docker"
./docker_stop.sh
echo "Unsetting Permissions" 
chmod -x docker_install.sh
chmod -x docker_start.sh
chmod -x docker_stop.sh
chmod -x docker_bash.sh
chmod -x install.sh
chmod -x update.sh
echo "Updating Code"
git pull
echo "Setting Permissions" 
chmod +x docker_install.sh
chmod +x docker_start.sh
chmod +x docker_stop.sh
chmod +x docker_bash.sh
chmod +x install.sh
chmod +x update.sh
#!/bin/bash
x=30
while [ $x -gt 0 ]
do
sleep 1s
echo "$x seconds until building a new node and wallet, press crtl-c to stop to save current wallet then use ./docker_start.sh to restart current wallet."
x=$(( $x - 1 ))
done
docker build .
./docker_start.sh
