#!/bin/bash


echo "Please enter the input node of the touch screen"

if [ $# -ne 1 ];then
  echo "$0 parameter number failed"
  exit 0
fi

sudo rm -rf $(pwd)/calibration.txt 2>/dev/null

eventX=$1


sudo TSLIB_FBDEVICE=/dev/fb0 TSLIB_TSDEVICE=$eventX TSLIB_CALIBFILE=/etc/pointercal TSLIB_CONFFILE=/etc/ts.conf TSLIB_PLUGINDIR=/usr/local/lib/ts ts_calibrate > $(pwd)/calibration.txt

file=$(pwd)/calibration.txt

if [ ! -f $file ];then
	echo "Calibration file does not exist"
	exit 0
fi

topFlag="Top"
botFlag="Bot"
coordinate=(0)
count=0
xMax=0
xMin=0
yMax=0
yMin=0
xOffset=426
yOffset=640

while read line
do
  result=$(echo $line | grep "${topFlag}")
  if [[ $result != "" ]];then
    for val in $result
	do
		if [ $val -gt 0 ] 2>/dev/null;then
			coordinate[$count]=$val
			let count=count+1
		fi
	done
  fi
done < $file

while read line
do
  result=$(echo $line | grep "${botFlag}")
  if [[ $result != "" ]];then
    for val in $result
	do
		if [ $val -gt 0 ] 2>/dev/null;then
			coordinate[$count]=$val
			let count=count+1
		fi
	done
  fi
done < $file


let xMax=coordinate[2]+coordinate[4]
let xMax=xMax/2+xOffset

let xMin=coordinate[0]+coordinate[6]
let xMin=xMin/2-xOffset

let yMax=coordinate[1]+coordinate[3]
let yMax=yMax/2+yOffset

let yMin=coordinate[5]+coordinate[7]
let yMin=yMin/2-yOffset

if [ $xMax -gt 4096 ];then
	xMax=4000
fi

if [ $yMax -gt 4096 ];then
	yMax=4000
fi

if [ $yMin -lt 0 ];then
	yMin=50
fi

if [ $xMin -lt 0 ];then
	xMin=50
fi

sudo cp ./boot/config-normal.txt ./boot/config.txt.bak
sudo echo "hdmi_force_hotplug=1" >> ./boot/config.txt.bak
sudo echo "dtparam=spi=on" >> ./boot/config.txt.bak
sudo echo "hdmi_group=2" >> ./boot/config.txt.bak
sudo echo "hdmi_mode=1" >> ./boot/config.txt.bak
sudo echo "hdmi_mode=87" >> ./boot/config.txt.bak
sudo echo "hdmi_cvt 480 320 60 6 0 0 0" >> ./boot/config.txt.bak
sudo echo "hdmi_drive=2" >> ./boot/config.txt.bak
str="dtoverlay=ucts_180,xmin=$xMin,ymin=$yMax,xmax=$xMax,ymax=$yMin"
sudo echo $str >> ./boot/config.txt.bak
sudo cp -rf ./boot/config.txt.bak /boot/config.txt
sudo rm -rf $(pwd)/calibration.txt 2>/dev/null

sleep 1
echo "reboot now"
sudo reboot