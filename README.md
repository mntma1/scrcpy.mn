# scrcpy - Script: pcam.sh 
### Ermöglicht die Anzeige und Steuerung von über USB oder WLAN (über TCP/IP) angeschlossenen Android-Geräten. Es ist kein Root-Zugriff erforderlich.

**scrcpy (v4.0) Projekt-Seite** ***[hier](https://github.com/Genymobile/scrcpy)***

- **Videoanleitung** [hier](https://www.youtube.com/watch?v=c3ypUzVSYdQ)
- EKIWI-BLOG [hier](https://ekiwi-blog.de/20466/android-bildschirmuebertragung-mit-scrcpy-ueber-usb-oder-wlan/)
- **Download:** [scrcpy-linux-x86_64-v4.0.tar.gz](https://github.com/Genymobile/scrcpy/releases/download/v4.0/scrcpy-linux-x86_64-v4.0.tar.gz)


```bash
# mit wget im Terminal:
wget https://github.com/Genymobile/scrcpy/releases/download/v4.0/scrcpy-linux-x86_64-v4.0.tar.gz
```

<img width="334" height="190" alt="grafik" src="https://github.com/user-attachments/assets/dcd0ea38-aac1-4d49-94b0-6875ba95d368" />
<img width="334" height="190" alt="grafik" src="https://github.com/user-attachments/assets/140fb496-564d-4284-a025-e97b016cdbba" />

```
        1. Konsole Menü                           2. App Dateimanger
```

<img width="411" height="321" alt="grafik" src="https://github.com/user-attachments/assets/f6d7ef22-2a21-48c6-a8ca-1ea0b38ffd6a" />
<img width="358" height="324" alt="pcam-yad1" src="https://github.com/user-attachments/assets/2228d4af-3e8a-4115-be14-b422c4b87b1f" />

```
            3. Android Desktop                                  4.YAD Menü**
```  

## 1. Als User: Das Repository klonen und **scrcpy** installieren 
```
git clone https://github.com/mntma1/scrcpy.mn

cd scrcpy.mn
./install.sh
```
## Das wars :-)  


#### Oder das **pcam.sh**(scrcpy Menü) von Hand installieren 
nano install.sh
```bash
#!/usr/bin/env bash
# Created by Manfred

git clone https://github.com/mntma1/scrcpy.mn
cd scrcpy.mn
sudo cp -v pcam.sh colors.env /usr/local/bin;
cd ~/Downlad
wget https://github.com/Genymobile/scrcpy/releases/download/v4.0/scrcpy-linux-x86_64-v4.0.tar.gz;
tar xvzf scrcpy-linux-x86_64-v4.0.tar.gz;
sudo cp -av scrcpy-linux-x86_64-v4.0 /usr/local;
sudo ln -s /usr/local/scrcpy-linux-x86_64-v4.0/scrcpy /usr/local/bin/scrcpy
cd ~/
/usr/local/bin/pcam.sh
exit 0
```

## 2. Starte das Menü 
```bash
# Im Terminal feuere ab:
Benutzer$: pcam.sh
```
## 3. Apps starten: Von Hand im Terminal:
```bash
scrcpy --display-id=0 --new-display=800x600/160 --video-codec=av1 --start-app=com.android.settings -x -w
```
## 4. Apps auflisten
```bash
scrcpy --list-apps
```

----
## 5. Gerät über WLAN verbinden
##### Hierzu muß das USB-Kabel eingesteckt sein 
```bash
adb tcpip 5555
adb connect 192.168.1.xxx
# WLAN IP des Handy
```
## 6. Überprüfe die adb-Verbindungen
```bash
adb devices
```
Ergebnis:
```text
List of devices attached
fff95c0b	device
192.168.1.xxx:5555	device
# WLAN IP des Handy
```
## 8. Ziehe jetzt das USB-Kabel ab
```bash
adb devices
```
Ergebnis:
```text
List of devices attached
192.168.1.xxx:5555 device 
# WLAN IP des Handy
```
### Nun ist das Handy mit scrcpy über WLAN erreichbar  
