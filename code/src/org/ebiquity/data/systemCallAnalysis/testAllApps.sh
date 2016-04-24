#!/bin/sh
# Apps to test
# syscall stats using
# cat <app_pkg_name>.out  | cut -f1 -d"(" | sort | uniq -c | sort -r
# get permissions using
# aapt d permissions <app_apk_file_name>

value=`cat apkconfig.ini | grep apkLocation | cut -f2 -d'='`

echo $value

if [ $value != *[* ]
then
	echo "I came here!"
else
	echo "fix the config file"
fi
