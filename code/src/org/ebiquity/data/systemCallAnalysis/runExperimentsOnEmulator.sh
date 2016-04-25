#!/bin/bash
# Apps to test
# syscall stats using
# cat <app_pkg_name>.out | cut -f1 -d"(" | sort | uniq -c | sort -r
# get permissions using
# aapt d permissions <app_apk_file_name>
testAppDirName=`cat apkconfig.ini | grep apkLocation | cut -f2 -d'=' | tr -d '"'`"/*.apk"
outputDir="out/"
mkdir -p out
if [ "$testAppDirName" != "[*" ]
then
    for file in $testAppDirName
    do
        emulator -avd nexus6 -wipe-data &
        while true
        do
            sleep 30
            result="emptyString"
            result=`adb shell getprop init.svc.bootanim | tr -d '\n' | tr -d '\r'`
            echo $result
            if [ "$result" == "stopped" ]
            then
                echo "AVD is ready"
                bash automatingStrace.sh $file
                echo "Processing file: "$file
                break;
            fi;
        done;
        adb emu kill
    done
else
    echo "fix the config file"
fi