#/bin/bash
`find -name "* *" -type f | rename 's/ /_/g'`
list=`find . -name "*.apk"`
for entry in $list
do
	echo "$entry"
	newName=`aapt dump badging "$entry"|awk -F" " '/package/ {print $2}'|awk -F"'" '/name=/ {print $2}'`.apk
	mv "$entry" "$newName"
done