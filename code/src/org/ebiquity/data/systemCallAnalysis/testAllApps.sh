#!/bin/bash
# Apps to test
# syscall stats using
# cat <app_pkg_name>.out | cut -f1 -d"(" | sort | uniq -c | sort -r
# get permissions using
# aapt d permissions <app_apk_file_name>

testAppDirName=`cat apkconfig.ini | grep apkLocation | cut -f2 -d'=' | tr -d '"'`"/*.apk"
if [ "$testAppDirName" != "[*" ]
then
	for file in $testAppDirName
	do
        bash automatingStrace.sh $file
        echo "Processing file: "$file
	done
else
	echo "fix the config file"
fi
