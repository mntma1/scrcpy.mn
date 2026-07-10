#!/bin/env bash

sudo cp -v pcam.sh  colors.env /usr/local/bin;
wget https://github.com/Genymobile/scrcpy/releases/download/v4.0/scrcpy-linux-x86_64-v4.0.tar.gz;
tar xvzf scrcpy-linux-x86_64-v4.0.tar.gz;
sudo cp -av scrcpy-linux-x86_64-v4.0 /usr/local;
sudo ln -s /usr/local/scrcpy-v4.0/scrcpy /usr/local/bin/scrcpy
cd ~/
#pcam.sh
exit 0
