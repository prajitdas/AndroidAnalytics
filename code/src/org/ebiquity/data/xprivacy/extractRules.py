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

def generatePolicyJson():
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

	open("policy.json",'w').write(json.dumps(policyDict,sort_keys=True))
		
def insertIntoDB():
	policyDict=json.loads(open("policy.json",'r').read())
	list=policyDict.keys()
	string="'"+'\',\''.join(list)+"'"
	sqlStatement="SELECT a.app_pkg_name, a.review_count, a.review_rating, c.name FROM appdata a, appcategories c WHERE a.app_category_id = c.id AND a.app_pkg_name in ("+string+");"
	print sqlStatement
	# sqlStatement="INSERT INTO `policy`(`id`, `app_id`, `accounts`, `browser`, `calendar`, `calling`, `clipboard`, `contacts`, `dict`, `email`, `identification`, `internet`, `ipc`, `location`, `media`, `messages`, `network`, `nfc`, `notifications`, `overlay`, `phone`, `sensors`, `shell`, `storage`, `system`, `webview`, `dt_modified`) VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6],[value-7],[value-8],[value-9],[value-10],[value-11],[value-12],[value-13],[value-14],[value-15],[value-16],[value-17],[value-18],[value-19],[value-20],[value-21],[value-22],[value-23],[value-24],[value-25],[value-26],[value-27])"

def checkWhatsMissing():
	policyDict=json.loads(open("compare.json",'r').read())
	list1=policyDict["list1"]
	list2=policyDict["list2"]
	output=set(list1) - set(list2)
	appDict={}
	appDict["appNames"] = list(output)
	open("applist.json",'w').write(json.dumps(appDict,sort_keys=True,indent=4))

def main(argv):
	startTime = time.time()
	# generatePolicyJson()
	#insertIntoDB()
	checkWhatsMissing()
	executionTime = str((time.time()-startTime)/60)
	print 'Execution time was: '+executionTime+' minutes'

if __name__ == "__main__":
	sys.exit(main(sys.argv))