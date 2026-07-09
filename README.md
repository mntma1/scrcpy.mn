# scrcpy.mn
### Scrcpy - Anzeige und Steuerung Deines Android Geräts

# Android Bildschirmübertragung mit scrcpy über USB oder WLAN

## **scrcpy (v4.0)**

- **Projekt-Seite** **[hier](https://github.com/Genymobile/scrcpy)**
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

1. Als User: Das Repository klonen
```
git clone https://github.com/mntma1/scrcpy.mn
```
2. Installier >>scrcpy<<
```
Bescheibung ....
```
3. Kopiere die Datein
```
sudo cp pcam.sh colors.env /usr/local/bin 
```
4. Starte das Menü 
```
# Im Terminaleuere ab:
Username$: pcam.sh
```
5. Starte Apps auf deinem Phone von Hand im Terminal:
```
scrcpy --display-id=0 --new-display=800x600/160 --video-codec=av1 --start-app=com.android.settings -x -w
```
6. Apps auflisten
```
scrcpy --list-apps
```
...weiter


