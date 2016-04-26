## Instructions for System call analysis Project
* apkconfig.ini - File that contains the path to the "APK sources" folder to be read by ConfigParser in the master script.
```
	[apkconfig]
	apkLocation = [folderLocation]
```
* startEmulator.sh: Script to start the emulator "nexus6". We use this emulator name everywhere to maintain consistency and for simplicity.
* killEmulator.sh - Script to kill the emulator.
* automatingStrace.sh - Script to run strace on device using monkey to generate a certain number of pseudo-random events and extracting output of execution.
* syscallAnalysis.py - Python master script that is replacing the "runExperimentsOnEmulator.sh" shell script. This master script, unlike the shell script, also includes the code for processing the output and running clustering algorithms.
* runExperimentsOnEmulator.sh - Master script to execute all apk straces on the AVD and storing output in the "out" directory.
* attach.sh, debugging.sh, commands.txt - These are old scripts that we are no longer using.