#!/usr/bin/env bash
# Created by Manfred
# Datum: 19.07.26 
# Um: 21:00 Uhr
# Bitte installiert yad
# sudo apt install yad 

#BUTTON8="scrcpy --video-source=camera --camera-fps=30 --camera-facing=front --capture-orientation=0 --camera-size=1920x1080 --v4l2-sink=/dev/video0 --no-playback" # Webcam
BUTTON8="scrcpy --video-source=camera --camera-fps=30 --camera-facing=front  --capture-orientation=0 --v4l2-sink=/dev/video0 --no-playback" # Webcam

yad --title="Scrcpy Menu" \
    --button="Webcam:$BUTTON8" \
    --button="Ende:1" \
    &>/dev/null&
#sleep 3
#vlc v4l2:///dev/video0&
exit 0

