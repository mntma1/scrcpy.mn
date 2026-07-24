#!/usr/bin/env bash
# Created by Manfred
# Date: 10.07.26 at 02:45 am
source ./colors.env
sudo apt install adb fastboot yad -y;
sudo cp -fv pcam-yad1.sh pcam-yad-long.sh webcam-yad.sh pcam.sh colors.env /usr/local/bin;
cd /tmp
wget https://github.com/Genymobile/scrcpy/releases/download/v4.0/scrcpy-linux-x86_64-v4.0.tar.gz;
tar xvzf scrcpy-linux-x86_64-v4.0.tar.gz;
sudo cp -afv scrcpy-linux-x86_64-v4.0/ /usr/local/;
sudo ln -sf /usr/local/scrcpy-linux-x86_64-v4.0/scrcpy /usr/local/bin/scrcpy;
rm -rfv /tmp/scrcpy-linux-x86_64-v4.0*
cd ~/;
/usr/local/bin/pcam-yad1.sh;
echo -e "$CYNB

      Installation abgeschlossen

         Gruß Manne Maus

$CL"
exit 0
