#!/usr/bin/env bash
IPADR=  #Trage hier die IP des Handys ein
adb tcpip 5555;
adb connect $IPADR
exit 0
