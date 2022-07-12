#!/bin/bash
#Just finished the system, no need to restore
sudo cp -rf ./boot/config-normal.txt /boot/config.txt
echo "The system has been restored"
echo "now reboot"
sleep 1
sudo reboot
