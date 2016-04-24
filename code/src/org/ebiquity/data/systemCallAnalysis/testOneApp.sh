#!/bin/bash
# Apps to test
# syscall stats using
# cat <app_pkg_name>.out  | cut -f1 -d"(" | sort | uniq -c | sort -r
# get permissions using
# aapt d permissions <app_apk_file_name>

bash automatingStrace.sh com.saranomy.flashlightHacked.apk
