#!/bin/bash
if [ ! -d "./.system_backup" ]; then
sudo mkdir ./.system_backup
fi
sudo rm -rf ./.system_backup/*
sudo cp -rf /boot/config.txt ./.system_backup
sudo cp -rf /boot/config.txt ./.system_backup/config.txt.bak
