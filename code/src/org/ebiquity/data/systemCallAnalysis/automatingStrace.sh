#!/bin/bash
# Install the app
installationResult=`adb install -r $1`

if [[ $installationResult == *"Failure"* ]]
then
	echo "Failure"
	exit 1
else
	# Extract package and launcher activity information
	package=$(aapt dump badging $1|awk -F" " '/package/ {print $2}'|awk -F"'" '/name=/ {print $2}')
	activity=$(aapt dump badging $1|awk -F" " '/launchable-activity/ {print $2}'|awk -F"'" '/name=/ {print $2}')

	# Start package using ActivityManager in order to determine the process Id of the app
	adb shell am start -n $package/$activity
	processId=$(adb shell ps | awk -v pattern="$package" -F" " '$0 ~ pattern { print $2 }')
	outputFile=$(echo "/sdcard/"$package".out")
	# Verifying the variables (for Debug)
	echo $package
	echo $activity
	echo $processId
	echo $outputFile
	adb shell touch $outputFile

	# Starting the trace process on the app's process id. This is assuming that we have the root shell
	adb shell "nohup strace -p $processId -o $outputFile &> /sdcard/nohup.out&"

	# Output directory creation for $package
	outDir="out/"$package
	mkdir -p $outDir
	cd $outDir

	# Using monkey to generate a certain number of pseudo-random events
	adb shell monkey -p $package -v 1000 > "$package"monkey.out
	# adb shell monkey -p $package --pct-touch 95 -v 1000 > "$package"monkey.out
	# adb shell monkey -p $package -c android.intent.category.LAUNCHER 1000

	# strace is still running so we just make a copy of the out file
	# straceOutFilePath=$(echo "/sdcard/"$package"Strace.out")
	# adb shell "cp $outputFile $straceOutFilePath"

	# Extract the out file containing the output of strace
	adb pull $outputFile
	sleep 10
	cd -
	
	# Uninstall the app
	adb uninstall $package

	echo "Success";
	exit 0
fi
