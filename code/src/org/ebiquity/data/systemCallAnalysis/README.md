## Instructions for System call analysis Project
* syscallAnalysis.py - Python master script that is replacing the "runExperimentsOnEmulator.sh" shell script. This master script, unlike the shell script, also includes the code for processing the output and running clustering algorithms.
	* Requires the apkconfig.ini to be setup properly 
	* apkconfig.ini - File that contains the path to the "APK sources" folder to be read by ConfigParser in the master script.
	```
		[apkconfig]
		apkLocation = [folderLocation]
	```
* processFile.py - Python script to extract the features to be used by ML algos.
* runClustering.py - Python script to run clustering algos on the output of strace.

* startEmulator.sh: Helper script to start the emulator "nexus6". We use this emulator name everywhere to maintain consistency and for simplicity.
	* Requires the "nexus6" AVD to be created using the createAVD.sh helper script.
* killEmulator.sh - Helper script to kill the emulator.
* deleteAVD.sh - Helper script to delete the AVD.

* automatingStrace.sh - Helper script to run strace on device using monkey to generate a certain number of pseudo-random events and extracting output of execution.

* Old Scripts that we are no longer using:
	* attach.sh
	* debugging.sh
	* commands.txt
	* runExperimentsOnEmulator.sh - Master script to execute all apk straces on the AVD and storing output in the "out" directory.