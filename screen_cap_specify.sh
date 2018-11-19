#!/bin/bash
timestamp=$(date +"%Y%m%d%I%M%S")
adb -s $1 shell screencap -p /sdcard/${timestamp}.png
adb -s $1 pull /sdcard/${timestamp}.png
adb -s $1 shell rm /sdcard/${timestamp}.png
