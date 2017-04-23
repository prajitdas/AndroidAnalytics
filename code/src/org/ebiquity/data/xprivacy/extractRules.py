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

	appCount = 0
	remaining = len(fileList)

	policyDict = {}
	for file in fileList:
		appCount += 1
		remaining -= 1
		ruleDict = {}

		appDict = json.loads(open(file).read())
		app = appDict['id']
		ruleDict['url'] = appDict['url']

		versionList = appDict['versions'].keys()
		if (len(versionList) == 0):
			continue
		else:
			verDict = {}
			verDict = appDict['versions'][versionList[0]]
			for restriction in verDict['stats']:
				ruleResDict = {}
				resDict = {}
				resDict = verDict['stats'][restriction]
				ruleResDict['allow'] = resDict['all_allow']
				ruleResDict['deny'] = resDict['all_deny']
				ruleResDict['rule'] = "allow" if (resDict['all_allow']>resDict['all_deny']) else "deny"
				ruleDict[resDict['restriction']] = ruleResDict
			policyDict[app] = ruleDict

		if(appCount%111==0):
			print "Currently working on app %s, completed processing %d apps, %d apps to be processed"%(app, appCount, remaining)

	open("policy.json",'w').write(json.dumps(policyDict,indent=4))
		
def main(argv):
	startTime = time.time()
	doTask()
	executionTime = str((time.time()-startTime)*1000)
	print 'Execution time was: '+executionTime+' ms'

if __name__ == "__main__":
	sys.exit(main(sys.argv))