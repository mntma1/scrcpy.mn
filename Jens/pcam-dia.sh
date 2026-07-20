#!/usr/bin/env bash
# Created by Manfred
# Date: 18.07.26 at 09:28 pm
# Changed by Jens at 19.07.2026
# Bitte installiert dialog
# sudo apt install dialog

BUTTON1="scrcpy --video-source=camera --camera-facing=front --camera-fps=30 --camera-size=1920x1080 --no-audio --orientation=270 --background-color=#000 -w" #Front Kamera
BUTTON2="scrcpy --video-source=camera --camera-facing=back --camera-fps=30 --camera-size=1920x1080 --no-audio --orientation=90 --background-color=#000 -w" #Back Kamera
BUTTON3="scrcpy --video-source=camera --camera-id=0 --camera-fps=30 --camera-size=1920x1080 --no-audio --orientation=0 -w" #Horizontale Kamera
BUTTON4="scrcpy --display-id=0 --new-display=800x600/160 --video-codec=av1 -x -w -f" # Android Desktop
BUTTON5="scrcpy --display-id=0 --new-display=800x600/160 --video-codec=av1 --start-app=com.alphainventor.filemanager -x -w -f" #Dateimanager
BUTTON6="scrcpy --display-id=0 --new-display=800x600/160 --video-codec=av1 --start-app=com.android.settings -x -w -f" #Android Einstellungen
BUTTON7="scrcpy --display-id=0 --max-fps=60 --print-fps -w" #Capture SmartPhone Screen
BUTTON8="scrcpy --video-source=camera --camera-fps=30 --camera-facing=front --capture-orientation=270 --camera-size=1920x1080 --v4l2-sink=/dev/video0 --no-playback" # Webcam
BUTTON9="scrcpy --display-id=0 --new-display=800x600/160 --turn-screen-off --disable-screensaver --show-touches --video-codec=av1 --start-app=com.weawow -x -w -f" #Wetter
BUTTON10="gnome-terminal -- man scrcpy" #  Scrcpy Manpage 
BUTTON11="gnome-terminal" # Terminal




anzeige=$(dialog --stdout --backtitle "scrcpy - Spiegel deinen Bildschitm und benutze deine Handykameras " --radiolist "Bitte auswählen:" 19 40 12 \
	1 Frontkamera on  \
	2 Rückkamera off \
	3 "Horizontale Kamera" off \
	4 Androiddesktop off \
	5 Dateimanager off \
	6 Einstellungen off \
	7 "Bildschirm spiegeln" off \
	8 Webcam off \
	9 Wetter off \
	10 "Scrcpy ManPage" off \
	11 Terminal off \
	12 Beenden off) \
	
	case "$anzeige" in
        1) $BUTTON1
            ;;
        2) $BUTTON2
            ;;
        3) $BUTTON3
            ;;
        4) $BUTTON4
            ;;
        5) $BUTTON5
            ;;
        6) $BUTTON6
            ;;
        7) $BUTTON7
            ;;
        8) $BUTTON8
            ;;
        9) $BUTTON9
            ;;
       10) $BUTTON10
            ;;
       11) $BUTTON11
            ;;
       12) exit 1
            ;;            
        *) e1="ende"
            ;;
	esac

if [ "$e1" == "ende" ]
then

exit 1


