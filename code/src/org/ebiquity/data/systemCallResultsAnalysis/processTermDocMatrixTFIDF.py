'''
Created on April 26,2016
@author: Prajit Kumar Das

Usage: python processTermDocMatrixTFIDF.py\n

Process files for feature generation in syscall analysis.
'''
import time
import sys
import json
import logging

def getAggregateInfo(app,key,aggregateDict,masterDict,syscallList):
	annotated_category = masterDict[key][1]
	# google_play_category = masterDict[key][0]
	callFrequencies = masterDict[key][2]

	count = 0
	callDict = {}
	if annotated_category in aggregateDict:
		callDict = aggregateDict[annotated_category]
		for call in syscallList:
			callDict[call] += callFrequencies[count]
			count += 1
	else:
		for call in syscallList:
			callDict[call] = callFrequencies[count]
			count += 1

	aggregateDict[annotated_category] = callDict
	return aggregateDict

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python processTermDocMatrixTFIDF.py\n')
		sys.exit(1)

	startTime = time.time()

	masterDict = json.loads(open("termDocMatrix.json",'r').read())
	syscallList = masterDict["allSystemCalls"]
	aggregateDict = {}

	for info in masterDict:
		if info == "allSystemCalls":
			continue
		else:
			app = info.split('.SatJan7')[0]
			aggregateDict = getAggregateInfo(app,info,aggregateDict,masterDict,syscallList)

	open("tfidfFromTermDocMatirx.json","w").write(json.dumps(aggregateDict,indent=4,sort_keys=True))

	executionTime = str((time.time()-startTime)*1000)
	logging.debug('Execution time was: '+executionTime+' ms')

if __name__ == "__main__":
	main(sys.argv)