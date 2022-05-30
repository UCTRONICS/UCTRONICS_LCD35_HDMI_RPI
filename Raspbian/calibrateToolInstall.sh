#!/bin/bash

path=$(pwd)

sudo apt-get update
sudo apt-get install libts-bin
sudo cp -r  $path/CalibrateTool/bin/*  /usr/local/bin/
sudo chmod +x /usr/local/bin/*
sudo cp -r  $path/CalibrateTool/lib/*  /usr/local/lib/
sudo cp -P /usr/local/lib/libts* /usr/lib/arm-linux-gnueabihf/
