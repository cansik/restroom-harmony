#!/bin/bash

wget -qO- https://github.com/cansik/restroom-harmony/archive/master.zip | jar xvf /dev/stdin
chmod +x restroom-harmony-master/install/install-dep.sh restroom-harmony-master/install/install-processing.sh restroom-harmony-master/install/install-accesspoint.sh restroom-harmony-master/install/startup.sh
mv restroom-harmony-master /home/pi
/home/pi/restroom-harmony-master/install/install-dep.sh
/home/pi/restroom-harmony-master/install/install-processing.sh
/home/pi/restroom-harmony-master/install/install-accesspoint.sh