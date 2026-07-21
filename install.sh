#!/usr/bin/env bash
# Created by Manfred
# Date: 10.07.26 at 02:45 am

sudo apt install adb fastboot yad -y;
sudo cp -fv pcam-yad1.sh pcam-yad-long.sh webcam-yad.sh pcam.sh colors.env /usr/local/bin;
wget https://github.com/Genymobile/scrcpy/releases/download/v4.0/scrcpy-linux-x86_64-v4.0.tar.gz;
tar xvzf scrcpy-linux-x86_64-v4.0.tar.gz;
sudo cp -afv scrcpy-linux-x86_64-v4.0 /usr/local;
sudo ln -sf /usr/local/scrcpy-linux-x86_64-v4.0/scrcpy /usr/local/bin/scrcpy;
cd ~/;
/usr/local/bin/pcam-yad1.sh;
exit 0
