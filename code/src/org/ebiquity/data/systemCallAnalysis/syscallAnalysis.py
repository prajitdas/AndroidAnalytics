'''
Created on April 25,2016
@author: Prajit Kumar Das

Usage: python syscallAnalysis.py username api_key realOrFake howManyTimes\n

Syscall analysis code.
'''
import time
import sys
import os
import platform
from ConfigParser import SafeConfigParser
import subprocess as s
import processFile as pf
#import initClustering as initCl
import executeTestScenarioForAndroidMonkey as exAndMon
import getAppInstalledForExperiments as AI
import logging
logging.basicConfig(filename='syscall.log',level=logging.DEBUG)

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
		logging.debug('The current OS is not supported at the moment. Try Windows,Linux or OS X.')
		sys.exit(1)
	return outputDirectoryPath

def runExperimentsGoogleEmulator(currentPath,outputDirectoryPath,apkDict,realOrFake='fake',googleOrGenymotion='google',username='prajitdas',api_key='15irk8yvf3'):
	for key in apkDict.keys():
		logging.debug('Working on runExperiments for the app: '+apkDict[key])
		# For each app execution start emulator for AVD nexus6,in wiped mode.
		# Make sure you have created the AVD first.
		emulatorStartCmd = 'bash startEmulator.sh'
		s.call(emulatorStartCmd.split())
		# Executing the test scenario for Android monkey for a particular app apk
		try:
			exAndMon.executeTestScenarioForAndroidMonkey(apkDict[key],realOrFake,googleOrGenymotion)
		except exAndMon.RunExpException:
			logging.debug('Experiments failed for: '+apkDict[key])
			# Experiments are not working delete the apk name from the execution list
			del apkDict[key]
			# After finishing with one app's experiments,we kill the emulator,wipe it and start it again
			emulatorKillCmd = 'bash killEmulator.sh'
			s.call(emulatorKillCmd.split())
			continue
		# After finishing with one app's experiments,we kill the emulator,wipe it and start it again
		emulatorKillCmd = 'bash killEmulator.sh'
		s.call(emulatorKillCmd.split())
		# At this point we have to process the results and extract the features of an app,to run ml algorithms later.
		logging.debug('Finished running experiments, extracting features for the app: '+key)
		pf.extractFeatures(currentPath,outputDirectoryPath,key)
		logging.debug('Done with extracing features for the app: '+key+' onto the next app!')
		time.sleep(30)

	# After all the apps have been processed and features extracted,we may run the ML algos.
	#initCl.initClustering(username,api_key,currentPath)

def runExperimentsGenyMotionEmulator(currentPath,outputDirectoryPath,apkDict,realOrFake='fake',googleOrGenymotion='genymotion',username='prajitdas',api_key='15irk8yvf3'):
	for key in apkDict.keys():
		logging.debug('Working on runExperiments for the app: '+apkDict[key])
		# For each app execution start emulator for AVD nexus6,in wiped mode.
		# Make sure you have created the AVD first.
		# emulatorStartCmd = 'bash startEmulator.sh'
		# s.call(emulatorStartCmd.split())
		# Executing the test scenario for Android monkey for a particular app apk
		# AI.installApp(key)
		try:
			exAndMon.executeTestScenarioForAndroidMonkey(apkDict[key],realOrFake,googleOrGenymotion)
		except exAndMon.RunExpException:
			logging.debug('Experiments failed for: '+apkDict[key])
			# Experiments are not working delete the apk name from the execution list
			# del apkDict[key]
			# After finishing with one app's experiments,we kill the emulator,wipe it and start it again
			# emulatorKillCmd = 'bash killEmulator.sh'
			# s.call(emulatorKillCmd.split())
			continue
		# After finishing with one app's experiments,we kill the emulator,wipe it and start it again
		# emulatorKillCmd = 'bash killEmulator.sh'
		# s.call(emulatorKillCmd.split())
		# At this point we have to process the results and extract the features of an app,to run ml algorithms later.
		logging.debug('Finished running experiments, extracting features for the app: '+key)
		pf.extractFeatures(currentPath,outputDirectoryPath,key)
		logging.debug('Done with extracing features for the app: '+apkDict[key]+' onto the next app!')
		time.sleep(30)

	# After all the apps have been processed and features extracted,we may run the ML algos.
	#initCl.initClustering(username,api_key,currentPath)

def doTask(username,api_key,realOrFake,googleOrGenymotion,howManyTimes):
	apkDict = {}
	currentPath = os.getcwd()
	apkFolderPath = getApkFolderPath()
	if '[' in apkFolderPath:
		logging.debug('Fix the config file!')
		return
	else:
		apkDict = findAllFilesWithExtension(apkFolderPath,'.apk')
	outputDirectoryPath = getOutputDirectoryPath(currentPath)

	for i in range(0,int(howManyTimes)):
		if googleOrGenymotion == 'google':
			runExperimentsGoogleEmulator(currentPath,outputDirectoryPath,apkDict,realOrFake,googleOrGenymotion,username,api_key)
		else:
			runExperimentsGenyMotionEmulator(currentPath,outputDirectoryPath,apkDict,realOrFake,googleOrGenymotion,username,api_key)

def main(argv):
	if len(sys.argv) != 6:
		sys.stderr.write('Usage: python syscallAnalysis.py username api_key realOrFake googleOrGenymotion howManyTimes\n')
		sys.exit(1)

	username = sys.argv[1]
	api_key = sys.argv[2]
	realOrFake = sys.argv[3]
	googleOrGenymotion = sys.argv[4]
	howManyTimes = sys.argv[5]

	startTime = time.time()
	doTask(username,api_key,realOrFake,googleOrGenymotion,howManyTimes)
	executionTime = str((time.time()-startTime)*1000)
	logging.debug('Execution time was: '+executionTime+' ms')

if __name__ == "__main__":
	sys.exit(main(sys.argv))
