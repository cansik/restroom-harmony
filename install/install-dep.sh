#!/bin/bash
cd /home/pi/restroom-harmony-master/install

sudo apt-get install --yes gstreamer1.0 gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-gst-plugins-bad
sudo apt-get install --yes gstreamer1.0-libav
sudo apt-get install --yes gstreamer1.0-omx

# add autorun
sudo chmod +x /home/pi/restroom-harmony-master/run.sh

# change screen config (no sleep)
/bin/cp -rf system/lightdm.conf /etc/lightdm/lightdm.conf

# increase video memory
/bin/cp -rf system/config.txt /boot/config.txt