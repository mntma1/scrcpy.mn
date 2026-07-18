#!/usr/bin/env bash
# Erstellt von: Manfred
# Am: 09.07.2026
# Geändert am: von:

PROG=scrcpy
TERMINAL=xfce4-terminal
# Colors
source /usr/local/bin/colors.env

function scrcpy-menu {
while true; do
clear;
echo -e "$BLUB                    Viel Spaß beim Testen $CL"
echo -e "$GNB
  Bitte wähle:: 

   a = Android Desktop(Fullscreen)
   f = Font Kamera
   b = Back Kamera
   h = Horizontal Kamera
   d = Dateimanager(Startet den Filebrowser)
   e = Einstellungen
   s = scrcpy (Capture only)
   m = scrcpy Manual Page
   t = Lokales Terminal
   w = Webcam
 x,q = Beendet das Script 


$CL"

	read -p "Bitte wählen (a/f/b/h/d/e/s/m/t/w/x,q): " Menu
    case $Menu in
   [a]* ) $PROG --display-id=0 --new-display=800x600/160 --video-codec=av1 -x -w -f &>/dev/null& # Android Desktop
	;;
   [f]* ) $PROG --video-source=camera --camera-facing=front --camera-fps=30 --camera-size=1920x1080 --no-audio --orientation=270 --background-color=#000 -w &>/dev/null& #Front Kamera
   ;;
	[b]* ) $PROG --video-source=camera --camera-facing=back --camera-fps=30 --camera-size=1920x1080 --no-audio --orientation=90 --background-color=#000 -w &>/dev/null& #Back Kamera
   ;;
	[h]* ) $PROG --video-source=camera --camera-id=1 --camera-fps=30 --camera-size=1920x1080 --no-audio --orientation=0 -w &>/dev/null& #Horizontale Kamera 
   ;;
   [d]* ) $PROG --display-id=0 --new-display=800x600/160 --video-codec=av1 --start-app=com.alphainventor.filemanager -x -w -f &>/dev/null& #Dateimanager
   ;;
	[e]* ) $PROG --display-id=0 --new-display=800x600/160 --video-codec=av1 --start-app=com.android.settings -x -w -f &>/dev/null& #Android Einstellungen
   ;;
	[s]* ) $PROG --display-id=0 --max-fps=60 --print-fps -w &>/dev/null& #Capture SmartPhone Screen
   ;;    
	[m]* ) $TERMINAL -e 'man /usr/local/scrcpy-v4.0/scrcpy.1' &
   ;;
   [t]* ) $TERMINAL &
   ;;
   [w]* ) echo -e  "$CYNB 
              
   ....coming soon => mobile Phone as Webcam :-)
              
           $CL";sleep 3 # FP4 als WebCam    
   ;;
	[xq]* ) exit 0
   ;;
     
        * ) clear;
echo -e "$GNB  Taste: [$Menu] 
  ist noch nicht belegt!$CL"

echo -e "$RDB
  Bitte wähle stattdesen: 
 
     a = Android Desktop(Fullscreen)
     f = Font Kamera
     b = Back Kamera
     h = Horizontale Kamera
     d = Dateimanager
     e = Einstellungen
     s = scrcpy (Capture only)
     m = scrcpy Manual Page
     t = Lokales Terminal
     w = Webcam
   x,q = Exit / Quit (Beendet das Script) 
$CL";sleep 3 ;;
    esac
done
}
### Startet das Menü ###
scrcpy-menu
exit 0
