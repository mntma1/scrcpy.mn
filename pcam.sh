#!/usr/bin/env bash
# Erstellt von: Manfred
# Am: 09.07.2026
# Geändert am: von:

PROG=scrcpy
TERMINAL=xfce4-terminal
BROWSER1=firefox
URL1='https://github.com/Genymobile/scrcpy'
URL2='https://meet.jit.si/scrpcymmannemaus'
# Colors
source /usr/local/bin/colors.env
touch /tmp/debug.log 
function scrcpy-menu {
while true; do
clear;
echo -e "$BLUB                    Viel Spaß beim Testen $CL"
echo -e "$GNB
  Bitte wähle:: 
   a = Android Desktop (in Vollbild)
   f = Front Kamera
   b = Rückw. Kamera
   h = Horizontale Kamera
   d = Dateimanager(Startet den Filebrowser)
   e = Android Einstellungen
   s = Display erfassen
   m = Scrcpy Man Page
   t = XFCE4 Terminal
   w = Webcam
   z = weaWOW Wetter APP
   g = scrcpy (v4.1) Github Projekt-Seite
   l = Show Log
   v = Video Chat mit Manne Maus
 x,q = Beendet das Script
$CL"

	read -p "Bitte wählen (a/f/b/h/d/e/s/m/t/w/z/g/l/x,q): " Menu
    case $Menu in
   [a]* ) $PROG --display-id=0 --new-display=800x600/160 --video-codec=av1 -x -w -f &>/tmp/debug.log& # Android Desktop
	;; # Android Desktop(Fullscreen)
   [f]* ) $PROG --video-source=camera --camera-facing=front --camera-fps=30 --camera-size=1920x1080 --no-audio --orientation=270 --background-color=#000 -w &>/tmp/debug.log& #Front Kamera
   ;; # Frobt Camera
	[b]* ) $PROG --video-source=camera --camera-facing=back --camera-fps=30 --camera-size=1920x1080 --no-audio --orientation=90 --background-color=#000 -w &>/tmp/debug.log& #Back Kamera
   ;; # Back Camera
	[h]* ) $PROG --video-source=camera --camera-id=1 --camera-fps=30 --camera-size=1920x1080 --no-audio --orientation=0 -w -f&>/tmp/debug.log& #Horizontale Kamera 
   ;; # Horizl. Camera
   [d]* ) $PROG --display-id=0 --new-display=800x600/160 --video-codec=av1 --start-app=com.alphainventor.filemanager -x -w -f&>/tmp/debug.log& #Dateimanager
   ;; # Dateimanager
	[e]* ) $PROG --display-id=0 --new-display=800x600/160 --video-codec=av1 --start-app=com.android.settings -x -w -f&>/tmp/debug.log& #Android Einstellungen
   ;; # Andorid Einstellungen 
	[s]* ) $PROG --display-id=0 --max-fps=60 --print-fps -w&>/tmp/debug.log& #Capture SmartPhone Screen
   ;; # Display erfassen (Capture)
	[m]* ) $TERMINAL -e 'man /usr/local/scrcpy-linux-x86_64-v4.1/scrcpy.1'&
   ;; # Scrcly Manpage
   [t]* ) $TERMINAL&
   ;; # XFCE4 Terminal
   [w]* ) $PROG --video-source=camera --camera-fps=30 --camera-facing=front --capture-orientation=270 --camera-size=1920x1080 --v4l2-sink=/dev/video0&>/tmp/debug.log&
          echo -e "$CYNB  .....Jetzt sogar mit Ton.  $CL ";sleep 5;    
   ;; # Cell Phone as Webcam
   [z]* ) $PROG --display-id=0 --new-display=800x600/160 --turn-screen-off --disable-screensaver --show-touches --video-codec=av1 --start-app=com.weawow -x -w -f&>/tmp/debug.log&
   ;; # Weather Appp weaWOW
   [g]* ) $BROWSER1 $URL1&
   ;; # scrcpy (v4.1) Github Projekt Seite 
   [l]* ) $TERMINAL -e 'tail -n80 -f /tmp/debug.log'
   ;;
   [v]* ) $BROWSER1 $URL2&
   ;; # Video Chat mit Manne Maus 
  [xq]* ) exit 0
   ;; # Exit this Script
     
        * ) clear;
echo -e "$CYNB  Taste: [$Menu] 
  ist noch nicht belegt!$CL"

echo -e "$RDB
  Bitte wähle stattdesen: 
     a = Android Desktop (in Vollbild)
     f = Front Kamera
     b = Rüchw. Kamera
     h = Horizontale Kamera
     d = Dateimanager
     e = Einstellungen
     s = Display erfassen (Capture)
     m = Scrcpy Man Page
     t = XFCE4 Terminal
     w = Webcam
     g = scrcpy (v4.1) Github Projekt-Seite
     v = Video Chat mit Manne Maus
   x,q = Exit / Quit (Beendet das Script) 
$CL";sleep 3;;
    esac
done
}
### Startet das Menü ###
scrcpy-menu
exit 0
