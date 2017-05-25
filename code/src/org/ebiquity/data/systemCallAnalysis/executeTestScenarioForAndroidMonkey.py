'''
Created on May 3,2016
@author: Prajit Kumar Das

Usage: python executeTestScenarioForAndroidMonkey.py pathToApk realOrFake\n

good help: https://devmaze.wordpress.com/2011/12/12/starting-and-stopping-android-emulators/

Syscall analysis code.
'''
import time
import sys
import subprocess as s
# import initClustering as initCl
import shutil
import logging
logging.basicConfig(filename='syscall.log',level=logging.DEBUG)

class RunExpException(Exception):
	pass

def isBootAnimationComplete():
	time.sleep(10)
	cmd = 'adb shell getprop init.svc.bootanim'
	output = []
	try:
		output = s.check_output(cmd.split()).split('\r\n')
	except:
		output.append("Device must be offline")
	return output[0]

def runOnGenyMotionDevice(pathToApk):
	logging.debug('AVD is ready')
	# Executing the test scenario for Android monkey
	# runExperimentsCmd = 'bash automatingStrace.sh genymotion '+pathToApk
	runExperimentsCmd = 'bash automatingStrace.sh '+pathToApk
	print runExperimentsCmd
	try:
		s.check_output(runExperimentsCmd.split())
	except s.CalledProcessError:
		logging.debug('Error in running experiments for: '+pathToApk.split('.apk')[0])
		# Even if there is an exception in running experiments, remove the file to the other folder
		movePath = '/'.join(pathToApk.split('/')[:-2])+'/bkp/'
		logging.debug('moving file to '+movePath)
		print pathToApk
		print movePath
		shutil.move(pathToApk,movePath)
		raise RunExpException(pathToApk.split("/")[-1].split(".apk")[0])
	movePath = '/'.join(pathToApk.split('/')[:-2])+'/bkp/'
	logging.debug('moving file to '+movePath)
	shutil.move(pathToApk,movePath)
	return

def runOnDevice(pathToApk):
	logging.debug('AVD is ready')
	# Executing the test scenario for Android monkey
	runExperimentsCmd = 'bash automatingStrace.sh '+pathToApk
	print runExperimentsCmd
	try:
		s.check_output(runExperimentsCmd.split())
	except s.CalledProcessError:
		logging.debug('Error in running experiments for: '+pathToApk.split("/")[-1].split('.apk')[0])
		# Even if there is an exception in running experiments, remove the file to the other folder
		movePath = '/'.join(pathToApk.split('/')[:-2])+'/bkp/'
		logging.debug('moving file to '+movePath)
		print pathToApk
		print movePath
		shutil.move(pathToApk,movePath)
		raise RunExpException(pathToApk.split("/")[-1].split(".apk")[0])
	movePath = '/'.join(pathToApk.split('/')[:-2])+'/bkp/'
	logging.debug('moving file to '+movePath)
	shutil.move(pathToApk,movePath)
	return

def runOnAVD(pathToApk):
	while True:
		result = "emptyString"
		result = isBootAnimationComplete()
		print result
		if result == "":
			logging.debug('Something went wrong,probably can\'t start emulator for some reason! \nCheck if AVD exists or not. Or maybe something else is wrong. Check output of "sudo kvm-ok"')
			return
		elif result == "stopped":
			logging.debug('AVD is ready')
			# Executing the test scenario for Android monkey
			runExperimentsCmd = 'bash automatingStrace.sh '+pathToApk
			print runExperimentsCmd
			try:
				s.check_output(runExperimentsCmd.split())
			except:
				logging.debug('Error in running experiments for: '+pathToApk.split("/")[-1].split('.apk')[0])
				# Even if there is an exception in running experiments, remove the file to the other folder
				# movePath = '/'.join(pathToApk.split('/')[:-2])+'/bkp/'
				# logging.debug('moving file to '+movePath)
				# print pathToApk
				# print movePath
				# shutil.move(pathToApk,movePath)
				raise RunExpException(pathToApk.split("/")[-1].split(".apk")[0])
			#command="mv "+pathToApk+" ../other"
			#logging.debug('moving file "+command
			#s.call(command.split())
			# movePath = '/'.join(pathToApk.split('/')[:-2])+'/bkp/'
			# logging.debug('moving file to '+movePath)
			#sys.exit(1)
			# shutil.move(pathToApk,movePath)
			return
		else:
			logging.debug('Still waiting for emulator to complete stage: '+result)
			continue

def executeTestScenarioForAndroidMonkey(pathToApk,realOrFake,googleOrGenymotion):
	if googleOrGenymotion == 'google':
		if realOrFake == 'real':
			runOnDevice(pathToApk)
		else:
			runOnAVD(pathToApk)
	else:
		runOnGenyMotionDevice(pathToApk)

def doTask(pathToApk,realOrFake):
	executeTestScenarioForAndroidMonkey(pathToApk,realOrFake)

def main(argv):
	if len(sys.argv) != 3:
		sys.stderr.write('Usage: python executeTestScenarioForAndroidMonkey.py pathToApk realOrFake\n')
		sys.exit(1)

	pathToApk = sys.argv[1]
	realOrFake = sys.argv[2]

	startTime = time.time()
	doTask(pathToApk,realOrFake)
	executionTime = str((time.time()-startTime)*1000)
	logging.debug('Execution time was: '+executionTime+' ms')

if __name__ == "__main__":
	main(sys.argv)

# #!/bin/bash
# # Apps to test
# # syscall stats using
# # cat <app_pkg_name>.out | cut -f1 -d"(" | sort | uniq -c | sort -r
# # get permissions using
# # aapt d permissions <app_apk_file_name>
# testAppDirName=`cat apkconfig.ini | grep apkLocation | cut -f2 -d'=' | tr -d '"'`"/*.apk"
# outputDir="out/"
# mkdir -p out
# if [ "$testAppDirName" != "[*" ]
# then
# 	for file in $testAppDirName
# 	do
# 		echo "Processing file: "$file
# 		emulator -avd nexus6 -wipe-data &
# 		while true
# 		do
# 			sleep 30
# 			result="emptyString"
# 			result=`adb shell getprop init.svc.bootanim | tr -d '\n' | tr -d '\r'`
# 			if [ "$result" == "" ]
# 			then
# 				echo "Something went wrong, probably can't start emulator for some reason!"
# 				echo "Check if AVD exists or not. Or maybe something else is wrong. Check output of 'sudo kvm-ok'"
# 				exit
# 			elif [ "$result" == "stopped" ]
# 			then
# 				echo "AVD is ready"
# 				bash automatingStrace.sh $file
# 				break;
# 			fi;
# 		done;
# 		adb emu kill
# 	done
# else
# 	echo "fix the config file"
# fi
