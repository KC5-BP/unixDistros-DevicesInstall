# ROTATTING Screen
## Process reference got from :
## '-> www.lcdwiki.com/MHS-3.5inch_RPi_Display

# Change directory to MY need (comment or modify this line to YOUR need):
echo "Go to cloned directory : path/where/it's/downloaded/LCD-show"
cd ~/Documents/AddOn_InstallDir/LCD-show

# Execute rotating script :
echo "Rotating process launched .."
sudo ./rotate.sh 90
#sudo ./rotate.sh 180
#sudo ./rotate.sh 270


# Calibrating screen (only for Resistance Touch Screen)
## Process reference got from :
## '-> www.lcdwiki.com/res/PublicFile/How_to_calibrate_the_resistance_touch_screen-V1.2.pdf

echo "Depackaging << Xinput >> from LCD-show's directory .."
cd ~/Documents/AddOn_InstallDir/LCD-show
sudo dpkg -i -B xinput-calibrator_0.7.5-1_armhf.deb

echo "Execute calibration .."
echo "After calib., memorize the 4 numbers in front of << Option \"Calibration\ >>"
echo "& 1 number in front of << Option \"SwapAxes\" >> to set them permanently after."
sleep 7s
DISPLAY=:0.0 xinput-calibrator

echo "Save calibration values .."
sudo nano /etc/X11/xorg.conf.d/99-calibration.conf

echo "System will reboot to apply changes !"
sleep 7s
sudo reboot
