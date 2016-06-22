#!/bin/bash
adb start-server
emulator -avd nexus6 &
#-wipe-data