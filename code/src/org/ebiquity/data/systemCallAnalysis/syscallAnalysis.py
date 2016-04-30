'''
Created on April 25,2016
@author: Prajit Kumar Das

Usage: python syscallAnalysis.py username api_key\n

Syscall analysis code.
'''
import time
import sys
import os
import platform
from ConfigParser import SafeConfigParser
import subprocess as s
import processFile as pf
import initClustering as initCl

class RunExpException(Exception):
	pass

def getApkFolderPath():
	parser = SafeConfigParser()
	parser.read('apkconfig.ini')

	path = parser.get('apkconfig','apkLocation')
	return path

def findAllFilesWithExtension(root,ext):
	files = os.listdir(root)
	apkDict = {}
	for file in files:
		if file.endswith(ext):
			apkDict[file.split('.apk')[0]] = os.path.join(root,file)
	return apkDict

def getOutputDirectoryPath(currentPath):
	osInfo = platform.system()
	if osInfo == 'Windows':
		outputDirectoryPath = currentPath + "\\out"
	elif osInfo == 'Linux' or 'Darwin':
		outputDirectoryPath = currentPath + "/out"
	else:
		print "The current OS is not supported at the moment. Try Windows,Linux or OS X."
		sys.exit(1)
	return outputDirectoryPath

def isBootAnimationComplete():
	time.sleep(10)
	cmd = 'adb shell getprop init.svc.bootanim'
	output = []
	try:
		output = s.check_output(cmd.split()).split('\r\n')
	except:
		output.append("Device must be offline")
	return output[0]

def executeTestScenarioForAndroidMonkey(pathToApk):
	while True:
		result = "emptyString"
		result = isBootAnimationComplete()
		print result
		if result == "":
			print "Something went wrong,probably can't start emulator for some reason! \nCheck if AVD exists or not. Or maybe something else is wrong. Check output of 'sudo kvm-ok'"
			return
		elif result == "stopped":
			print "AVD is ready"
			# Executing the test scenario for Android monkey
			runExperimentsCmd = 'bash automatingStrace.sh '+pathToApk
			print runExperimentsCmd
			try:
				s.check_output(runExperimentsCmd.split())
			except:
				print "Error in running experiments for: "+pathToApk.split("/")[-1].split(".apk")[0]
				raise RunExpException(pathToApk.split("/")[-1].split(".apk")[0])
			return
		else:
			print "Still waiting for emulator to complete stage: "+result
			continue

def runExperimentsOnEmulator(username,api_key,currentPath,apkFolderPath,outputDirectoryPath,apkDict):
	for key in apkDict.keys():
		# For each app execution start emulator for AVD nexus6,in wiped mode.
		# Make sure you have created the AVD first.
		emulatorStartCmd = 'bash startEmulator.sh'
		s.call(emulatorStartCmd.split())
		# Executing the test scenario for Android monkey for a particular app apk
		try:
			executeTestScenarioForAndroidMonkey(apkDict[key])
		except RunExpException:
			del apkDict[key]
			# After finishing with one app's experiments,we kill the emulator,wipe it and start it again
			emulatorKillCmd = 'bash killEmulator.sh'
			s.call(emulatorKillCmd.split())
			continue
		# After finishing with one app's experiments,we kill the emulator,wipe it and start it again
		emulatorKillCmd = 'bash killEmulator.sh'
		s.call(emulatorKillCmd.split())
		# At this point we have to process the results and extract the features of an app,to run ml algorithms later.
		pf.extractFeatures(currentPath,outputDirectoryPath,key)

	# After all the apps have been processed and features extracted,we may run the ML algos.
	#initCl.initClustering(username,api_key,currentPath)

def doTask(username,api_key):
	currentPath = os.getcwd()
	apkFolderPath = getApkFolderPath()
	if '[' in apkFolderPath:
		print "Fix the config file!"
		return
	else:
		apkDict = findAllFilesWithExtension(apkFolderPath,'.apk')
	outputDirectoryPath = getOutputDirectoryPath(currentPath)
	runExperimentsOnEmulator(username,api_key,currentPath,apkFolderPath,outputDirectoryPath,apkDict)

def main(argv):
	if len(sys.argv) != 3:
		sys.stderr.write('Usage: python syscallAnalysis.py username api_key\n')
		sys.exit(1)

	username = sys.argv[1]
	api_key = sys.argv[2]

	startTime = time.time()
	doTask(username,api_key)
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))
