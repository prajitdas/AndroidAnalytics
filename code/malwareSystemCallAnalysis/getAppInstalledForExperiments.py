'''
Created on June 25,2016
@author: Prajit Kumar Das

Usage: python getAppInstalledForExperiments.py\n

Install app on GenyMotion emulator.
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
import logging
logging.basicConfig(filename='getAppInstalledForExperiments.log',level=logging.DEBUG)

def installApp(app_pkg_name):
	print app_pkg_name
	
def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python getAppInstalledForExperiments.py\n')
		sys.exit(1)

	startTime = time.time()
	executionTime = str((time.time()-startTime)*1000)
	logging.debug('Execution time was: '+executionTime+' ms')

if __name__ == "__main__":
	main(sys.argv)