'''
Created on March 10, 2017
@author: Prajit Kumar Das

Usage: python generateNGrams.py\n

Code to generate ngrams
'''
import json
import time
import sys
import os
import platform
import logging
logging.basicConfig(filename='generateNGrams.log',level=logging.DEBUG)

def getData(appPkgName):
	appPkgName = "com.onegogo.explorer"
	appDataDict = json.loads(open(os.path.join(os.path.join(os.getcwd(),"uni-bi-tri-seq-jsons"),appPkgName+".json"),'r').read())
	print type(appDataDict[appPkgName])
	print appDataDict[appPkgName]
	return appDataDict[appPkgName]["annotated_category"], appDataDict[appPkgName]["google_play_category"], appDataDict[appPkgName]

def find_ngrams(input_list, n):
	return zip(*[input_list[i:] for i in range(n)])

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python generateNGrams.py\n')
		sys.exit(1)

	startTime = time.time()

	appDict = json.loads(open("toprocess.json",'r').read())
	count = 0
	for appPkgName in appDict["packages"]:
		count += 1
		print "Processing app number: "+str(count)+" named: "+appPkgName
		annotated_category, google_play_category, input_list = getData(appPkgName)
		print type(input_list)
		# print find_ngrams(input_list,2)
		sys.exit(1)
	
	input_list = ['all', 'this', 'happened', 'more', 'or', 'less']
	print type(input_list)
	print find_ngrams(input_list,3)
	
	executionTime = str((time.time()-startTime)*1000)
	logging.debug('Execution time was: '+executionTime+' ms')

if __name__ == "__main__":
	sys.exit(main(sys.argv))
