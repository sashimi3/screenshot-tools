#!/bin/bash
timestamp=$(date +"%Y%m%d%I%M%S")
adb shell screencap -p /sdcard/${timestamp}.png
adb pull /sdcard/${timestamp}.png
adb shell rm /sdcard/${timestamp}.png
