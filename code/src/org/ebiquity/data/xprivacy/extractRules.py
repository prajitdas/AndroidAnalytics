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
import databaseHandler as db

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

	open("policy.json",'w').write(json.dumps(policyDict,sort_keys=True,indent=4))
		
def insertIntoDB():
	policyDict=json.loads(open("policy.json",'r').read())
	appList=policyDict.keys()
	dbHandle=db.dbConnectionCheck()
	cursor=dbHandle.cursor(buffered=True)
	for app in appList:
		appStr=str(app)
		sqlStatement="SELECT a.review_count, a.review_rating, c.url FROM appdata a, appcategories c WHERE a.app_category_id = c.id AND a.app_pkg_name = '"+appStr+"';"
		playCategory='unknown'
		reviewRating=0.0
		reviewCount=0
		try:
			cursor.execute(sqlStatement)
			resultSet = cursor.fetchall()
			for row in resultSet:
				reviewCount=int(row[0])
				reviewRating=float(row[1])
				playCategory=str(row[2])
				playCategory=(((playCategory.replace("https://play.google.com/store/apps/category/","")).lower()).replace("_and_","_n_")).replace("game_","")
		except:
			print('Unexpected error: '+str(sys.exc_info()[0]))

		sqlStatement="SELECT annotated_category FROM annotations WHERE app_pkg_name = '"+appStr+"';"
		annotatedCategory='unknown'
		try:
			cursor.execute(sqlStatement)
			resultSet = cursor.fetchall()
			for row in resultSet:
				annotatedCategory=str(row[0])
		except:
			print('Unexpected error: '+str(sys.exc_info()[0]))

		accounts = "1"
		browser = "1"
		calendar = "1"
		calling = "1"
		clipboard = "1"
		contacts = "1"
		dic = "1"
		email = "1"
		identification = "1"
		internet = "1"
		ipc = "1"
		location = "1"
		media = "1"
		messages = "1"
		network = "1"
		nfc = "1"
		notifications = "1"
		overlay = "1"
		phone = "1"
		sensors = "1"
		shell = "1"
		storage = "1"
		system = "1"
		webview = "1"

		if "accounts" in policyDict[app]:
			if str(policyDict[app]["accounts"]["rule"]) == "allow":
				accounts="0"
		if "browser" in policyDict[app]:
			if str(policyDict[app]["browser"]["rule"]) == "allow":
				browser="0"
		if "calendar" in policyDict[app]:
			if str(policyDict[app]["calendar"]["rule"]) == "allow":
				calendar="0"
		if "calling" in policyDict[app]:
			if str(policyDict[app]["calling"]["rule"]) == "allow":
				calling="0"
		if "clipboard" in policyDict[app]:
			if str(policyDict[app]["clipboard"]["rule"]) == "allow":
				clipboard="0"
		if "contacts" in policyDict[app]:
			if str(policyDict[app]["contacts"]["rule"]) == "allow":
				contacts="0"
		if "dictionary" in policyDict[app]:
			if str(policyDict[app]["dictionary"]["rule"]) == "allow":
				dic="0"
		if "email" in policyDict[app]:
			if str(policyDict[app]["email"]["rule"]) == "allow":
				email="0"
		if "identification" in policyDict[app]:
			if str(policyDict[app]["identification"]["rule"]) == "allow":
				identification="0"
		if "internet" in policyDict[app]:
			if str(policyDict[app]["internet"]["rule"]) == "allow":
				internet="0"
		if "ipc" in policyDict[app]:
			if str(policyDict[app]["ipc"]["rule"]) == "allow":
				ipc="0"
		if "location" in policyDict[app]:
			if str(policyDict[app]["location"]["rule"]) == "allow":
				location="0"
		if "media" in policyDict[app]:
			if str(policyDict[app]["media"]["rule"]) == "allow":
				media="0"
		if "messages" in policyDict[app]:
			if str(policyDict[app]["messages"]["rule"]) == "allow":
				messages="0"
		if "network" in policyDict[app]:
			if str(policyDict[app]["network"]["rule"]) == "allow":
				network="0"
		if "nfc" in policyDict[app]:
			if str(policyDict[app]["nfc"]["rule"]) == "allow":
				nfc="0"
		if "notifications" in policyDict[app]:
			if str(policyDict[app]["notifications"]["rule"]) == "allow":
				notifications="0"
		if "overlay" in policyDict[app]:
			if str(policyDict[app]["overlay"]["rule"]) == "allow":
				overlay="0"
		if "phone" in policyDict[app]:
			if str(policyDict[app]["phone"]["rule"]) == "allow":
				phone="0"
		if "sensors" in policyDict[app]:
			if str(policyDict[app]["sensors"]["rule"]) == "allow":
				sensors="0"
		if "shell" in policyDict[app]:
			if str(policyDict[app]["shell"]["rule"]) == "allow":
				shell="0"
		if "storage" in policyDict[app]:
			if str(policyDict[app]["storage"]["rule"]) == "allow":
				storage="0"
		if "system" in policyDict[app]:
			if str(policyDict[app]["system"]["rule"]) == "allow":
				system="0"
		if "webview" in policyDict[app]:
			if str(policyDict[app]["webview"]["rule"]) == "allow":
				webview="0"

		insertStatement="INSERT INTO policy (app_pkg_name, review_rating, review_count, google_play_category, annotated_category, accounts, browser, calendar, calling, clipboard, contacts, dict, email, identification, internet, ipc, location, media, messages, network, nfc, notifications, overlay, phone, sensors, shell, storage, system, webview) VALUES ('"+appStr+"',"+str(reviewRating)+","+str(reviewCount)+",'"+playCategory+"','"+annotatedCategory+"',"+accounts+","+browser+","+calendar+","+calling+","+clipboard+","+contacts+","+dic+","+email+","+identification+","+internet+","+ipc+","+location+","+media+","+messages+","+network+","+nfc+","+notifications+","+overlay+","+phone+","+sensors+","+shell+","+storage+","+system+","+webview+");"
		rowid=db.dbManipulateData(dbHandle,insertStatement)

		text_file = open("insert.sql", "w")
		text_file.write(insertStatement)
		text_file.close()
		
		if rowid%111 == 0:
			print "Inserted data for", app, "row:", rowid

	cursor.close
	dbHandle.close()

# def checkList():
# 	policyDict=json.loads(open("applist.json",'r').read())
# 	list=policyDict['appNames']
# 	string="'"+'\',\''.join(list)+"'"
# 	sqlStatement="SELECT a.app_pkg_name, a.review_count, a.review_rating, c.name FROM appdata a, appcategories c WHERE a.app_category_id = c.id AND a.app_pkg_name in ("+string+");"
# 	print sqlStatement
# 	print len(list)
# 	# sqlStatement="INSERT INTO policy(id, app_id, accounts, browser, calendar, calling, clipboard, contacts, dict, email, identification, internet, ipc, location, media, messages, network, nfc, notifications, overlay, phone, sensors, shell, storage, system, webview, dt_modified) VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6],[value-7],[value-8],[value-9],[value-10],[value-11],[value-12],[value-13],[value-14],[value-15],[value-16],[value-17],[value-18],[value-19],[value-20],[value-21],[value-22],[value-23],[value-24],[value-25],[value-26],[value-27])"

# def checkWhatsMissing():
# 	policyDict=json.loads(open("compare.json",'r').read())
# 	list1=policyDict["list1"]
# 	list2=policyDict["list2"]
# 	output=set(list1) - set(list2)
# 	appDict={}
# 	appDict["appNames"] = list(output)
# 	open("applist.json",'w').write(json.dumps(appDict,sort_keys=True,indent=4))

def main(argv):
	startTime = time.time()
	# checkWhatsMissing()
	# checkList()
	# generatePolicyJson()
	insertIntoDB()
	executionTime = str((time.time()-startTime)/60)
	print 'Execution time was: '+executionTime+' minutes'

if __name__ == "__main__":
	main(sys.argv)