'''
Created on July 4,2016
@author: Prajit Kumar Das

Usage: python simpleSVDOnSyscalls.py\n

SVD on syscall output
'''
import time
import sys
import computeDistance as cd
import logging
import json
logging.basicConfig(filename='simpleSVDOnSyscalls.log',level=logging.DEBUG)

def doSVD(numberOfApps, termDocMatrix, appRunVector, allSyscallsVector):
	appList = []
	for appRun in appRunVector:
		appName = appRun.split('.run')[0]
		print appName
		appList.append(appName)

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python simpleSVDOnSyscalls.py\n')
		sys.exit(1)

	categoryDict = json.loads(open('category.json','r').read())
	jsonDict = json.loads(open('masterJsonOutputFile82Good.json','r').read())

	# print jsonDict['com.probcomp.filexplorer']

	# newDict = {}
	# for app in jsonDict:
	# 	runDict = {}
	# 	runDict['run1'] = jsonDict[app]
	# 	newDict[app] = runDict

	# print newDict['com.probcomp.filexplorer']
	# open('masterJsonOutputFile82Good.json','w').write(json.dumps(newDict, sort_keys=True, indent=4))

	startTime = time.time()
	doSVD(cd.createTermDocMatrix(jsonDict,categoryDict,'tfidf'))
	executionTime = str((time.time()-startTime)*1000)
	logging.debug('Execution time was: '+executionTime+' ms')

if __name__ == "__main__":
	sys.exit(main(sys.argv))
