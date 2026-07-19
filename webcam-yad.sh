#!/usr/bin/env bash
# Created by Manfred
# Datum: 19.07.26 
# Um: 21:00 Uhr
# Bitte installiert yad
# sudo apt install yad 

### Cell phone as webcam ###
BUTTON8="scrcpy \
          --window-title=Webcam \
          --video-source=camera \
          --camera-fps=30 \
          --camera-facing=front \
          --capture-orientation=0 \
          --v4l2-sink=/dev/video0 \
          --no-playback"

## YAD Button  ##
yad --title=" Webcam" \
    --button="Webcam:$BUTTON8" \
    --button="Ende:1" \
    &>/dev/null&
exit 0

