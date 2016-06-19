for entry in "$1"*.apk
do
	#filename=`"$entry" | cut -f6 -d '/'`
	newName=`aapt dump badging "$entry"|awk -F" " '/package/ {print $2}'|awk -F"'" '/name=/ {print $2}'`.apk
	mv "$entry" "$newName"
done