#!/usr/bin/env bash
# Created by Manfred
# Date: 18.07.26 at 09:28 pm
# Changed by Jens at 19.07.2026
# Changed by Manfred at 20.07.2026
# Bitte installiert yad
#
#sudo apt install yad -y
#
DEBUGFILE=$HOME/Git/Jens/debug.log
BUTTON1="scrcpy --video-source=camera --camera-facing=front --camera-fps=30 --camera-size=1920x1080 --no-audio --orientation=270 --background-color=#000 -w" #Front Kamera
BUTTON2="scrcpy --video-source=camera --camera-facing=back --camera-fps=30 --camera-size=1920x1080 --no-audio --orientation=90 --background-color=#000 -w" #Back Kamera
BUTTON3="scrcpy --video-source=camera --camera-id=1 --camera-fps=30 --camera-size=1920x1080 --no-audio --orientation=0 -w" #Horizontale Kamera
BUTTON4="scrcpy --display-id=0 --new-display=800x600/160 --video-codec=av1 -x -w -f" # Android Desktop
BUTTON5="scrcpy --display-id=0 --new-display=800x600/160 --video-codec=av1 --start-app=com.alphainventor.filemanager -x -w -f" #Dateimanager
BUTTON6="scrcpy --display-id=0 --new-display=800x600/160 --video-codec=av1 --start-app=com.android.settings -x -w -f" #Android Einstellungen
BUTTON7="scrcpy --display-id=0 --max-fps=60 --print-fps -w" #Capture SmartPhone Screen
BUTTON8="scrcpy --video-source=camera --camera-fps=30 --camera-facing=front --capture-orientation=270 --camera-size=1920x1080 --v4l2-sink=/dev/video0 --no-playback" # Webcam
BUTTON9="scrcpy --display-id=0 --new-display=800x600/160 --turn-screen-off --disable-screensaver --show-touches --video-codec=av1 --start-app=com.weawow -x -w -f" #Wetter
BUTTON10="xfce4-terminal -e 'man /usr/local/scrcpy-linux-x86_64-v4.0/scrcpy.1'" # Scrcpy Manpage 
BUTTON11="xfce4-terminal" # xfce4 Terminal
BUTTON12="gnome-terminal" # Gnome Terminal
BUTTON13="firefox https://meet.jit.si/scrpcymmannemaus" # Gnome Terminal

yad --title "Scrcpy Menu" --text "     Benutze deine Handykamera und mehr ..." --width 350 --height 250 --form --columns 2 \
    --field="Front Kamera":fbtn "$BUTTON1" \
    --field="Back Kanmera":fbtn "$BUTTON2" \
    --field="Horiz. Kamera":fbtn "$BUTTON3" \
    --field="Android Desktop":fbtn "$BUTTON4" \
    --field="Dateimanager":fbtn "$BUTTON5" \
    --field="Android Setup":fbtn "$BUTTON6" \
    --field="Handy Screen":fbtn "$BUTTON7" \
    --field="Webcam":fbtn "$BUTTON8" \
    --field="Wetter":fbtn "$BUTTON9" \
    --field="Scrcpy Manpage":fbtn "$BUTTON10" \
    --field="XFCE4 Terminal":fbtn "$BUTTON11" \
    --field="GNOME Terminal":fbtn "$BUTTON12" \
    --field="VC mit Manne Maus":fbtn "$BUTTON13" \
    --button="Ende:0" \
    &>/dev/null&
exit 0

