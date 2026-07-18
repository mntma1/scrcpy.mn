#!/usr/bin/env bash
BUTTON1="scrcpy --video-source=camera --camera-facing=front --camera-fps=30 --camera-size=1920x1080 --no-audio --orientation=270 --background-color=#000 -w" #Front Kamera
BUTTON2="scrcpy --video-source=camera --camera-facing=back --camera-fps=30 --camera-size=1920x1080 --no-audio --orientation=90 --background-color=#000 -w" #Back Kamera
BUTTON3="scrcpy --video-source=camera --camera-id=1 --camera-fps=30 --camera-size=1920x1080 --no-audio --orientation=0 -w" #Horizontale Kamera
BUTTON4="scrcpy --display-id=0 --new-display=800x600/160 --video-codec=av1 -x -w -f" # Android Desktop
BUTTON5="scrcpy --display-id=0 --new-display=800x600/160 --video-codec=av1 --start-app=com.alphainventor.filemanager -x -w -f" #Dateimanager
BUTTON6="scrcpy --display-id=0 --new-display=800x600/160 --video-codec=av1 --start-app=com.android.settings -x -w -f" #Android Einstellungen
BUTTON7="scrcpy --display-id=0 --max-fps=60 --print-fps -w" #Capture SmartPhone Screen
BUTTON8="scrcpy --video-source=camera --camera-fps=30 --camera-facing=front --capture-orientation=270 --camera-size=1920x1080 --v4l2-sink=/dev/video0 --no-playback" # Webcam
BUTTON9="scrcpy --display-id=0 --new-display=800x600/160 --turn-screen-off --disable-screensaver --show-touches --video-codec=av1 --start-app=com.weawow -x -w -f" #Wetter
BUTTON10="xfce4-terminal -e 'man /usr/local/scrcpy-v4.0/scrcpy.1'" # Scrcpy Manpage 
BUTTON11="xfce4-terminal" # Terminal

#yad --center --undecorated --skip-taskbar \
yad --title="Scrcpy Menu" \
    --button="Front Kamera:$BUTTON1" \
    --button="Back Kanmera:$BUTTON2" \
    --button="Horiz. Kamera:$BUTTON3" \
    --button="Webcam:$BUTTON8" \
    --button="Android Desktop:$BUTTON4" \
    --button="Dateimanager:$BUTTON5" \
    --button="Android Setup:$BUTTON6" \
    --button="Handy Screen:$BUTTON7" \
    --button="Wetter:$BUTTON9" \
    --button="Scrcpy Manpage:$BUTTON10" \
    --button="Terminal:$BUTTON11" \
    --button="Ende:1" &>/dev/null&
exit 0

