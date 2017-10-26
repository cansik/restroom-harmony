#!/bin/bash

# install git
sudo apt-get install --yes git

# create folder and change to it
mkdir /home/pi/restroom-harmony-master
cd /home/pi/restroom-harmony-master

# create git repo
git clone git@github.com:cansik/restroom-harmony.git