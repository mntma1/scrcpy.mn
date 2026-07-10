#!/usr/bin/env bash
# Erstellt von: Manfred
# Am: 09.07.2026
# Geändert am: von:

PROG=scrcpy
# Colors
source /usr/local/bin/colors.env

clear;
echo -e "$BLUB                    Viel Spaß beim Testen $CL"

echo -e "$GNB
 Bitte wähle mit: 
   f = Font Kamera
   b = Back Kamera
   h = Horizontal(Cam) 
   v = Vertikal(Cam)
   c = Screen Cupture
   d = Dateimanager(Startet den Filebrowser)
   e = Einstellungen
   s = scrcpy (Cupture only)
   m = scrcpy Manual Page
   x = Exit (Beendet das Script) 
$CL"

function scrcpy-menu {
while true; do
    read -p "Bitte wählen (f/bh/v/c/d/e/s/m/x): " Menu
    case $Menu in
        [f]* ) $PROG --video-source=camera  --camera-facing=front --camera-fps=30 --camera-size=1920x1080 --no-audio --orientation=270 -w &>/dev/null&;; # Front Cam
        
        [b]* ) $PROG --video-source=camera  --camera-facing=back --camera-fps=30 --camera-size=1920x1080 --no-audio --orientation=90 -w &>/dev/null&;; # Back  Cam
        
        [h]* ) $PROG --video-source=camera --camera-id=1 --camera-fps=30 --camera-size=1920x1080 --no-audio --orientation=0 -w &>/dev/null&;; 
        
        [v]* ) $PROG --video-source=camera --camera-id=0 --camera-fps=30 --camera-size=1920x1080 --no-audio --orientation=90 -w &>/dev/null&;;
        
        [c]* ) $PROG --display-id=0 --new-display=800x600/160 --video-codec=av1 -x -w &>/dev/null&;;
        
        [d]* ) $PROG --display-id=0 --new-display=800x600/160 --video-codec=av1 --start-app=com.alphainventor.filemanager -x -w &>/dev/null&;;
        
        [e]* ) $PROG --display-id=0 --new-display=800x600/160 --video-codec=av1 --start-app=com.android.settings -x -w &>/dev/null&;;
 
        [s]* ) $PROG --display-id=0 --max-fps=60 --print-fps -w &>/dev/null&;;
        
        [m]* ) xfce4-terminal -e 'man /usr/local/scrcpy-v4.0/scrcpy.1' &;;
        
        [x]* ) exit;;
     
        * ) clear; echo -e "$RDB

  Bitte antworte mit: 
 
     f = Font Kamera
     b = Back Kamera
     h = Horizontal
     v = Vertikal
     c = Screen Cupture
     d = Dateimanager
     e = Einstellungen
     s = scrcpy (Cupture only)
     m = scrcpy Manual Page
     x = Exit (Beendet das Script) 

$CL";;
    esac
done
}
scrcpy-menu
exit 0
