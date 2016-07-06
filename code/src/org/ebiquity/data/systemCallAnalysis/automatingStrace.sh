#!/bin/bash
echo "Got inputs: "$1","$2
if [[ $1 == "genymotion" ]]
then
	echo "Came to genymotion"
	package=$2
	apkLocationOnPhone=`adb shell pm path $2 | grep 'package' | cut -f2 -d':' | tr -d '\r'`
	echo $apkLocationOnPhone
	echo "APK location: "$apkLocationOnPhone
	apkFileName=$2".apk"
	echo "Executing on genymobile for: "$apkFileName
	# Get the apk from the phone
	echo "adb pull $apkLocationOnPhone $apkFileName"
	echo "Is something wrong?"
	adb devices
    adb pull $apkLocationOnPhone $apkFileName
	echo "Sleeping now!"
	sleep 10
    `sh shellSyscallExperiments.sh $apkFileName`
else
	echo "Came to google"
	# Install the app
	installationResult=`adb install -r $1`
	
	if [[ $installationResult == *"Failure"* ]]
	then
		echo "Error: Failure to install: "$1 >> error.log
		exit 1
	else
        `sh shellSyscallExperiments.sh $1`
	fi
fi