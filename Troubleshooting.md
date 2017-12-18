# If you have any problems, please feel free to contact us and we will try our best to help you.

# Q1:Some zones working much better than others, the near edge zones seem the worst.

A1: 
You should recalibrate the touchscreen. 

> 1.Downloading our UCTRONICS_LCD35_HDMI_RPI package from https://github.com/UCTRONICS/UCTRONICS_LCD35_HDMI_RPI.git

> 2.Install calibration software for calibration

  > 2.1 cd UCTRONICS_LCD35_HDMI_RPI
  
  > 2.2 sudo unzip Xinput-calibrator_0.7.5-1_armhf.zip
  
  > 2.3. cd xinput-calibrator_0.7.5-1_armhf/
  
  > 2.4. sudo dpkg -i -B xinput-calibrator_0.7.5-1_armhf.deb
  
  ![Alt text](https://github.com/UCTRONICS/UCTRONICS_LCD35_HDMI_RPI/blob/master/image/1.jpeg)
  ![Alt text](https://github.com/UCTRONICS/UCTRONICS_LCD35_HDMI_RPI/blob/master/image/2.jpeg)
  ![Alt text](https://github.com/UCTRONICS/UCTRONICS_LCD35_HDMI_RPI/blob/master/image/3.jpeg)
  ![Alt text](https://github.com/UCTRONICS/UCTRONICS_LCD35_HDMI_RPI/blob/master/image/4.jpeg)
  
 # Q2: The screen sometimes has stripes
 
 A2:
 
 > Excessive hot plug will cause the hdmi initialization to be abnormal and it require restart
 
 # Q3: Flash screen occurs when starting up
 
 A3:
 
 > Don't worry, this is the normal initialization phenomenon.
 
 # Q4: What about the frame speed?
 
 A4:
 
 > Our HDMI frame speed can up to 60 fps.
 
 # Q5: The HDMI always display no signal 
 
 A5：
 
 > You should try reconnect the HDMI connector.
 
 # Q6: How to write UCTRONICS HDMI LCD3 5 Screen image to the SD card Windows?
 
 A6:
 
 [![IMAGE ALT TEXT](https://github.com/UCTRONICS/UCTRONICS_LCD35_HDMI_RPI/blob/master/image/5.jpeg)](https://youtu.be/EmP3AQAQk2o "How to write UCTRONICS SPI LCD3 5 Screen image to the SD card Windows The Raspberry Pi Beginners Guide")

# Q7: How to install the touchscreen driver for HDMI LCD35 

A7:
- Step1: Expand the sd card first

> sudo raspi-config choose Advanced Operations -> Expand Filesystem
>  sudo reboot

- Step2: Update your raspberry pi system

> sudo apt-get update

- Step3: Download the driver package

> sudo git clone https://github.com/UCTRONICS/UCTRONICS_LCD35_HDMI_RPI.git

- Step4: Come in the UCTRONICS_LCD35_HDMI_RPI

> cd UCTRONICS_LCD35_HDMI_RPI

- Step5: Get run permissions

> sudo chmod +x UCTRONICS_hdmi_backup
> sudo chmod +x UCTRONICS_hdmi_install
> sudo chmod +x UCTRONICS_hdmi_restore

- Step6: backup data

> sudo ./UCTRONICS_hdmi_backup

- Step7: install our UCTRONICS LCD35 HDMI driver

> sudo ./UCTRONICS_hdmi_install

wait a while the system will be installed and restarted automatically.

if you want to reuse the pre-installation system, you can use the below command

> sudo ./UCTRONICS_hdmi_restore


 
 
 
