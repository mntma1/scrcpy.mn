# Skript pcam.sh 
### Ermöglicht die Anzeige und Steuerung von über USB oder WLAN (über TCP/IP) angeschlossenen Android-Geräten. Es ist kein Root-Zugriff erforderlich.

**scrcpy (v4.0) Projekt-Seite** ***[hier](https://github.com/Genymobile/scrcpy)***

- **Videoanleitung** [hier](https://www.youtube.com/watch?v=c3ypUzVSYdQ)
- EKIWI-BLOG [hier](https://ekiwi-blog.de/20466/android-bildschirmuebertragung-mit-scrcpy-ueber-usb-oder-wlan/)
- **Download:** [scrcpy-linux-x86_64-v4.0.tar.gz](https://github.com/Genymobile/scrcpy/releases/download/v4.0/scrcpy-linux-x86_64-v4.0.tar.gz)

Oder im Terminal:
```bash
wget https://github.com/Genymobile/scrcpy/releases/download/v4.0/scrcpy-linux-x86_64-v4.0.tar.gz
```

<img width="334" height="190" alt="grafik" src="https://github.com/user-attachments/assets/dcd0ea38-aac1-4d49-94b0-6875ba95d368" />
<img width="334" height="190" alt="grafik" src="https://github.com/user-attachments/assets/140fb496-564d-4284-a025-e97b016cdbba" />
<img width="228" height="492" alt="grafik" src="https://github.com/user-attachments/assets/04cea402-127c-49cb-b9e4-0ea8e0e50eac" />
<img width="411" height="321" alt="grafik" src="https://github.com/user-attachments/assets/f6d7ef22-2a21-48c6-a8ca-1ea0b38ffd6a" />

1.Als User: Das Repository klonen und **scrcpy** installieren 
```
git clone https://github.com/mntma1/scrcpy.mn

cd scrcpy.mn
./install.sh
```
Das wars :-)


1a. Oder **scrcpy** von Hand installieren 

nano install.sh
```
#!/usr/bin/env bash
# Created by Manfred
cd scrcpy.mn
sudo cp -v pcam.sh colors.env /usr/local/bin;
cd ~/Downlad
wget https://github.com/Genymobile/scrcpy/releases/download/v4.0/scrcpy-linux-x86_64-v4.0.tar.gz;
tar xvzf scrcpy-linux-x86_64-v4.0.tar.gz;
sudo cp -av scrcpy-linux-x86_64-v4.0 /usr/local;
sudo ln -s /usr/local/scrcpy-v4.0/scrcpy /usr/local/bin/scrcpy
cd ~/
exit 0
```

2. Starte das Menü 
```
# Im Terminal feuere ab:
Username$: pcam.sh
```
3. Apps starten: Von Hand im Terminal:
```
scrcpy --display-id=0 --new-display=800x600/160 --video-codec=av1 --start-app=com.android.settings -x -w
```
4. Apps auflisten
```
scrcpy --list-apps
```
5. Gerät über WLAN verbinden
##### Hierzu muß das USB-Kabel eingesteckt sein 
```
adb tcpip 5555
adb connect [dvice wlanIP]
Beispiel: adb connect 192.168.1.32 
```


