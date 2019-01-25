### Install the UCTRONICS_LCD35_HDMI_RPI is very easy.<br>
 ### Just run 
```Bash
wget https://raw.githubusercontent.com/UCTRONICS/UCTRONICS_LCD35_HDMI_RPI/master/install
```
```Bash
sudo chmod +x install
```
```Bash
sudo ./install 
```
### If you are using the old version UC430, you should run the below command to support it.
```bash
 sudo cp /home/pi/UCTRONICS_LCD35_HDMI_RPI/uctronics_hdmi/kernel_uc430.img /boot/kernel.img
 sudo cp /home/pi/UCTRONICS_LCD35_HDMI_RPI/uctronics_hdmi/kernel7_uc430.img /boot/kernel7.img
 sudo reboot
```
