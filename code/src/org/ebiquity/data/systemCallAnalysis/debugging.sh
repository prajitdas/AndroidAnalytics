#!/bin/bash
while true; do
	sleep 4
	adb shell 'su -c sh /system/bin/attach.sh' strace.log 2>&1
done