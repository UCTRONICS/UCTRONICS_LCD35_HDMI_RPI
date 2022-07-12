#!/bin/bash
echo "installing..."
sudo ./backup.sh
sudo cp ./usr/ucts_90.dtb /boot/overlays/ucts_90.dtbo
sudo cp ./boot/config-normal.txt ./boot/config.txt.bak
sudo echo "hdmi_force_hotplug=1" >> ./boot/config.txt.bak
sudo echo "dtparam=spi=on" >> ./boot/config.txt.bak
sudo echo "dtoverlay=ucts_90" >> ./boot/config.txt.bak
sudo echo "hdmi_group=2" >> ./boot/config.txt.bak
sudo echo "hdmi_mode=1" >> ./boot/config.txt.bak
sudo echo "hdmi_mode=87" >> ./boot/config.txt.bak
sudo echo "hdmi_cvt 480 320 60 6 0 0 0" >> ./boot/config.txt.bak
sudo echo "hdmi_drive=2" >> ./boot/config.txt.bak
sudo echo "display_rotate=1" >> ./boot/config.txt.bak
sudo cp -rf ./boot/config.txt.bak /boot/config.txt
sleep 1
echo "reboot now"
sudo reboot
