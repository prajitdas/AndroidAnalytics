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

def storeFeaturesInJsonFile(dataDict,appPkgName,n):
	masterJsonFile = os.path.join(os.getcwd(),str(n)+"gram534.json")
	jsonDict = {}
	try:
		jsonDict = json.loads(open(masterJsonFile).read())
	except:
		print "json was empty"
	jsonDict[appPkgName] = dataDict
	open(masterJsonFile,"w").write(json.dumps(jsonDict,sort_keys=True))
	# print jsonDict.keys()

def getData(appPkgName):
	appDataDict = json.loads(open(os.path.join(os.path.join(os.getcwd(),"uni-bi-tri-seq-jsons"),appPkgName+".json"),'r').read())
	return appDataDict[appPkgName]["annotated_category"], appDataDict[appPkgName]["google_play_category"], appDataDict[appPkgName]["syscalls"]

def find_ngrams(input_list, n):
	return zip(*[input_list[i:] for i in range(n)])

def createNGramDict(n, annotated_category, google_play_category, input_list):
	syscallNGramList = []
	for ngramsList in find_ngrams(input_list,n):
		syscallNGramList.append("_".join(ngramsList))

	syscallDict = {}
	for syscallNGram in syscallNGramList:
		if syscallNGram in syscallDict:
			syscallDict[syscallNGram] += 1
		else:
			syscallDict[syscallNGram] = 1
	
	runWrapperDict = {}
	runWrapperDict["syscallNGrams"] = syscallDict
	runWrapperDict["annotated_category"] = annotated_category
	runWrapperDict["google_play_category"] = google_play_category
	return runWrapperDict

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python generateNGrams.py\n')
		sys.exit(1)

	startTime = time.time()

	appDict = json.loads(open("toprocess.json",'r').read())

	count = 0
	n = 1
	for appPkgName in appDict["packages"]:
		count += 1
		print "Processing app number: "+str(count)+" named: "+appPkgName
		annotated_category, google_play_category, input_list = getData(appPkgName)
		storeFeaturesInJsonFile(createNGramDict(n, annotated_category, google_play_category, input_list), appPkgName, n)

	count = 0
	n = 2
	for appPkgName in appDict["packages"]:
		count += 1
		print "Processing app number: "+str(count)+" named: "+appPkgName
		annotated_category, google_play_category, input_list = getData(appPkgName)
		storeFeaturesInJsonFile(createNGramDict(n, annotated_category, google_play_category, input_list), appPkgName, n)

	count = 0
	n = 3
	for appPkgName in appDict["packages"]:
		count += 1
		print "Processing app number: "+str(count)+" named: "+appPkgName
		annotated_category, google_play_category, input_list = getData(appPkgName)
		storeFeaturesInJsonFile(createNGramDict(n, annotated_category, google_play_category, input_list), appPkgName, n)

	executionTime = str((time.time()-startTime)*1000)
	logging.debug('Execution time was: '+executionTime+' ms')

if __name__ == "__main__":
	sys.exit(main(sys.argv))
