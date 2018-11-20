#!/bin/bash
#adb kill-server
device_ip=`adb shell ip a | grep wlan0 | grep -oE '([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})' | head -n 1`
adb tcpip 5555
adb connect ${device_ip}
adb devices
