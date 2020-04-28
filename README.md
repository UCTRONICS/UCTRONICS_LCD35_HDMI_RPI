
# Raspbian
- Step1: Download the driver
```bash
git clone https://github.com/UCTRONICS/UCTRONICS_LCD35_HDMI_RPI.git
```
![image](Raspbian/data/1.png)
- Step2: Go to the driver path 
```bash
cd UCTRONICS_LCD35_HDMI_RPI/Raspbian/
```
![image](Raspbian/data/2.png)
- Step3: Get the permisson 
```
sed -i -e 's/\r$//' *.sh
chmod +x *.sh
```
- Step4: install the driver
 
![image](Raspbian/data/3.png)
- Rotation 0
```bash
sudo ./install_uc_touch_0.sh
```
- Rotation 180
```bash
sudo ./install_uc_touch_180.sh
```
- Notice: When the rotation button is pressed, the touch driver does not support synchronous rotation.
  You should install the touch driver mannually.