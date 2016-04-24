#!/bin/bash
emulator -avd nexus6 &
while true
do
	sleep 15
	result="emptyString"
	result=`adb shell getprop init.svc.bootanim | tr -d '\n' | tr -d '\r'`
	echo $result
	if [ "$result" == "stopped" ]
    then
		echo "match"
		bash testAllApps.sh
        break;
    fi;
done;
adb emu kill
