'''
Created on April 23,2017
@author: Prajit Kumar Das

Usage: python extractRules.py\n

Extract XPrivacy rules
'''
import os
import json
import sys
import time
import fnmatch as fm

def doTask():
	dataFolder = os.path.join(os.getcwd(),"data")
	fileList = []
	for file in os.listdir(dataFolder):
		if fm.fnmatch(file,'*.json'):
			fileList.append(os.path.join(dataFolder,file))

	policyDict = {}
	for file in fileList:
		ruleDict = {}
		appDict = json.loads(open(file).read())
		ruleDict['url'] = appDict['url']
		versionList = appDict['versions'].keys()
		verDict = {}
		verDict = appDict['versions'][versionList[0]]
		for restriction in verDict['stats']:
			resDict = {}
			resDict = verDict['stats'][restriction]
			ruleDict[resDict['restriction']] = str(True if (resDict['all_allow']>resDict['all_deny']) else False)

		policyDict[appDict['id']] = ruleDict

	open("policy.json",'w').write(json.dumps(policyDict,indent=4))
		
def main(argv):
	startTime = time.time()
	doTask()
	executionTime = str((time.time()-startTime)*1000)
	print 'Execution time was: '+executionTime+' ms'

if __name__ == "__main__":
	sys.exit(main(sys.argv))