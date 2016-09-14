#/bin/bash

devices=`adb devices | grep 'device' | sed '/List of devices attached/d'`
searchString='device'
numberofDevices=$(grep -o "$searchString" <<< "$devices" | wc -l)
if [[ $numberofDevices > 1 ]]
then
	echo "error, can't handle more than one device"
else
	device=`echo $devices | cut -f1 -d'd' | tr -d '\t' | tr -d '\n'`
	echo $device
fi