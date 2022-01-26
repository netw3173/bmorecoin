#!/bin/bash
echo "Updating Code"
git pull
echo "Setting Permissions"
chmod +x docker_install.sh
chmod +x docker_start.sh
chmod +x docker_stop.sh
chmod +x docker_bash.sh
chmod +x update.sh
echo "Installing startup and shutdown scripts"
sudo cp /home/ubuntu/bmorecoin/docs/start_bmorecoind.service /etc/systemd/system/start_bmorecoind.service
sudo cp /home/ubuntu/bmorecoin/docs/stop_bmorecoind.service /etc/systemd/system/stop_bmorecoind.service
sudo systemctl daemon-reload
sudo systemctl enable start_bmorecoind.service
sudo systemctl enable stop_bmorecoind.service
echo "Installing Docker"
./docker_install.sh
