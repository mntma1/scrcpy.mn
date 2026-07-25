#!/usr/bin/env bash
# Created by Manfred
# Date: 10.07.26 at 02:45 am
source ./colors.env

sudo apt install adb fastboot yad -y;
sudo cp -fv pcam-yad1.sh pcam-yad-long.sh webcam-yad.sh pcam.sh colors.env /usr/local/bin;
cd /tmp
wget https://github.com/Genymobile/scrcpy/releases/download/v4.1/scrcpy-linux-x86_64-v4.1.tar.gz;
tar xvzf scrcpy-linux-x86_64-v4.1.tar.gz;
sudo cp -afv /tmp/scrcpy-linux-x86_64-v4.1/ /usr/local/;
sudo ln -sf /usr/local/scrcpy-linux-x86_64-v4.1/scrcpy /usr/local/bin/scrcpy;
rm -rfv /tmp/scrcpy-linux-x86_64-v4.1*;
cd ~/;
/usr/local/bin/pcam-yad1.sh;
sleep 2;
clear;
echo -e "$CYNB

  Die Installation ist  abgeschlossen :-)

           Gruß Manne Maus


     Starten der GUI: 
   
        pcam-yad1.sh
       
    oder der Terminal Version:
     
        pcam.sh
$CL"

echo -e "$GNB  
  
  
 Weitere Dokumentationen findet ihr in meinem Git Repo
_____________________________________________________________
   
 https://github.com/mntma1/scrcpy.mn/blob/main/README.md

 https://github.com/mntma1/scrcpy.mn/blob/main/scrcpy.md

$CL"
exit 0
