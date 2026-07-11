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
  Bitte wähle:: 

   a = Desktop
   b = Back Kamera
   d = Dateimanager(Startet den Filebrowser)
   e = Einstellungen
   f = Font Kamera
   h = Horizontal Kamera
   s = scrcpy (Capture only)
   m = scrcpy Manual Page
 x/q = Beendet das Script 


$CL"

function scrcpy-menu {
while true; do
	read -p "Bitte wählen (f/b/h/v/a/d/e/s/m/x): " Menu
    case $Menu in
   [a]* ) $PROG --display-id=0 --new-display=800x600/160 --video-codec=av1 -x -w &>/dev/null&;;
        
	[b]* ) $PROG --video-source=camera --camera-facing=back --camera-fps=30 --camera-size=1920x1080 --no-audio --orientation=90 -w &>/dev/null&;; # Back  Cam
        
	[d]* ) $PROG --display-id=0 --new-display=800x600/160 --video-codec=av1 --start-app=com.alphainventor.filemanager -x -w &>/dev/null&;;
        
	[e]* ) $PROG --display-id=0 --new-display=800x600/160 --video-codec=av1 --start-app=com.android.settings -x -w &>/dev/null&;;
        
	[f]* ) $PROG --video-source=camera --camera-facing=front --camera-fps=30 --camera-size=1920x1080 --no-audio --orientation=270 -w &>/dev/null&;; # Front Cam
        
	[h]* ) $PROG --video-source=camera --camera-id=1 --camera-fps=30 --camera-size=1920x1080 --no-audio --orientation=0 -w &>/dev/null&;; 
        
	[s]* ) $PROG --display-id=0 --max-fps=60 --print-fps -w &>/dev/null&;;
        
	[m]* ) xfce4-terminal -e 'man /usr/local/scrcpy-v4.0/scrcpy.1' &;;
        
	[xq]* ) exit;;
     
        * ) clear;
echo -e "$GNB  Taste: [$Menu] 
  ist noch nicht belegt!$CL"

echo -e "$RDB
  Bitte wähle stattdesen: 
 
     a = Desktop
     b = Back Kamera
     d = Dateimanager
     e = Einstellungen
     f = Font Kamera
     h = Horizontale Kamera
     s = scrcpy (Capture only)
     m = scrcpy Manual Page
   x/q = Exit / Quit (Beendet das Script) 
$CL";;
    esac
done
}
### Startet das Menü ###
scrcpy-menu
exit 0
