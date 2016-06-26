list=`find . -name "*.apk"`
for entry in $list
do
	newName=`aapt dump badging "$entry"|awk -F" " '/package/ {print $2}'|awk -F"'" '/name=/ {print $2}'`.apk
	mv "$entry" "$newName"
done