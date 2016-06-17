#!/bin/bash
adb start-server
emulator -avd nexus6 -wipe-data &
adb push data/* /storage/emulated/0/Download/*