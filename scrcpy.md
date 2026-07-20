# Android Bildschirmübertragung mit scrcpy über USB oder WLAN

## **scrcpy (v4.0)**

- **Projekt-Seite** **[hier](https://github.com/Genymobile/scrcpy)**
- **Videoanleitung** [hier](https://www.youtube.com/watch?v=c3ypUzVSYdQ)
- EKIWI-BLOG [hier](https://ekiwi-blog.de/20466/android-bildschirmuebertragung-mit-scrcpy-ueber-usb-oder-wlan/)
- **Download:** [scrcpy-linux-x86_64-v4.0.tar.gz](https://github.com/Genymobile/scrcpy/releases/download/v4.0/scrcpy-linux-x86_64-v4.0.tar.gz)

Im Terminal:

```bash
wget https://github.com/Genymobile/scrcpy/releases/download/v4.0/scrcpy-linux-x86_64-v4.0.tar.gz
```

## Hier sind weitere Beispiele::

```text
# Starte die Android-Einstellungen in einem Fenster
scrcpy --new-display=1024x768/160 --start-app=com.android.settings --flex-display

#-x entspricht --flex-display
scrcpy --new-display=1024x768/160 --start-app=com.android.settings -x

# Standardmäßig beträgt die Anzeigegröße/dpi 1280 x 960/160
scrcpy --new-display --start-app=com.android.settings --flex-display
```

&nbsp;

## Camera Recording

```bash
## Record to myfile.mp4 ##
scrcpy --video-source=camera --camera-id=1 --camera-fps=30 --camera-size=1920x1080 --no-audio -r myfile.mp4

## No recording, only capture ##
scrcpy --video-source=camera --camera-id=1 --camera-fps=30 --camera-size=1920x1080 --no-audio --orientation=0 -w

## -> Phone horizontal --orientation=0
## -> Phone vertikal   --orientation=270
## Specify the camera capture frame rate ##
--camera-fps=30 

## Record ##
-r file.mp4 
--record=file.mp4
```

## Screen Cupture

```bash
scrcpy --display-id=0 --new-display=720x400/160 --video-codec=av1 -x -w

--max-fps=60
--camera-fps=30 # Camera capture frame rate
--print-fps
--v4l2-sink=/dev/video0
--video-source= (display or camera)

-w, --stay-awake
       Läst das Gerät eingeschaltet, während scrcpy ausgeführt wird, wenn das Gerät angeschlossen ist.
       
-x, --flex-display
       Past die Größe der virtuellen Anzeige kontinuierlich an das Fenster an.

MOD+q  Quit

MOD+f, F11
  In den Vollbildmodus wechseln
```

## pcam.sh:  [Click to open this file](pcam.sh)

```bash
#!/usr/bin/env bash

# Colors
source ~/bin/colors.env

clear;
echo;
function orientation {
while true; do
    read -p "Die Orientierung bitte (h/v/m/x): " Ausrichtung
    case $Ausrichtung in
        [h]* ) scrcpy --video-source=camera --camera-id=1 --camera-fps=30 --camera-size=1920x1080 --no-audio --orientation=0 -w;; 
        [v]* ) scrcpy --video-source=camera --camera-id=1 --camera-fps=30 --camera-size=1920x1080 --no-audio --orientation=270 -w;;
        [m]* ) man scrcpy;;
        [x]* ) exit;;
        * ) clear; 
echo -e "$GNB 

 Bitte antworte mit: 
 
   h = Horizontal 
   v = Vertikal
   m = scrcpy Manual Page
   x = Exit (Beendet das Script) 

$CL"
    esac
done
}
orientation
exit 0
```

&nbsp;

## SHORTCUTS

```text
In the following list, MOD is the shortcut modifier. By default, it's (left) Alt or (left) Super, but it can be configured by --shortcut-mod (see above).

       MOD+q  Quit

       MOD+f, F11
              Switch fullscreen mode

       MOD+Left
              Rotate display left

       MOD+Right
              Rotate display right

       MOD+Shift+Left, MOD+Shift+Right
              Flip display horizontally

       MOD+Shift+Up, MOD+Shift+Down
              Flip display vertically

       MOD+z  Pause or re-pause display

       MOD+Shift+z
              Unpause display

       MOD+Shift+r
              Reset video capture/encoding

       MOD+g  Resize window to 1:1 (pixel-perfect)

       MOD+w, Double-click on black borders
              Resize window to remove black borders

       MOD+h, Home, Middle-click
              Click on HOME

       MOD+b, MOD+Backspace, Right-click (when screen is on)
              Click on BACK

       MOD+s  Click on APP_SWITCH

       MOD+m  Click on MENU

       MOD+Up Click on VOLUME_UP

       MOD+Down
              Click on VOLUME_DOWN

       MOD+p  Click on POWER (turn screen on/off)

       Right-click (when screen is off)
              Turn screen on

       MOD+o  Turn device screen off (keep mirroring)

       MOD+Shift+o
              Turn device screen on

       MOD+r  Rotate device screen

       MOD+n  Expand notification panel

       MOD+Shift+n
              Collapse notification panel

       Mod+c  Copy to clipboard (inject COPY keycode, Android >= 7 only)

       Mod+x  Cut to clipboard (inject CUT keycode, Android >= 7 only)

       MOD+v  Copy computer clipboard to device, then paste (inject PASTE keycode, Android >= 7 only)

       MOD+Shift+v
              Inject computer clipboard text as a sequence of key events

       MOD+k  Open keyboard settings on the device (for HID keyboard only)

       MOD+i  Enable/disable FPS counter (print frames/second in logs)
       
       Ctrl+click-and-move
              Pinch-to-zoom and rotate from the center of the screen

       Shift+click-and-move
              Tilt vertically (slide with 2 fingers)

       Ctrl+Shift+click-and-move
              Tilt horizontally (slide with 2 fingers)

       Drag & drop APK file
              Install APK from computer

       Drag & drop non-APK file
              Push file to device (see --push-target)

       MOD+t  Turn on the camera torch (camera mode only)

       MOD+Shift+t
              Turn off the camera torch (camera mode only)

       MOD+Up Zoom camera in (camera mode only)

       MOD+Down
              Zoom camera out (camera mode only)
```
