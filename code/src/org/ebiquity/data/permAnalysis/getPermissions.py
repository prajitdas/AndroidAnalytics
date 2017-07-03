import os
import time
import sys
import subprocess as s
import json

def isAPKPermissionsAlreadyInTable(dbHandle,pkgName):
	cursor = dbHandle.cursor()
	sqlStatement = "SELECT COUNT(a.app_id) FROM `appperm` a, `appdata` b WHERE a.app_id = b.id AND b.app_pkg_name = '"+pkgName+"';"
	try:
		cursor.execute(sqlStatement)
		queryOutput = cursor.fetchall()
		for row in queryOutput:
			if row[0] > 0:
				return True
			return False
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise
	
def getAppId(dbHandle,sqlStatement,pkgName):
	cursor = dbHandle.cursor()
	try:
		cursor.execute(sqlStatement)
		if cursor.rowcount > 0:
			queryOutput = cursor.fetchall()
			for row in queryOutput:
				appId = row[0]
		else:
			print "Probably the app data for: "+pkgName+" has not been collected because we could not find that app in the database:", sys.exc_info()[0]
			return -1
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise
	return appId

def getPermissionId(dbHandle,sqlStatement,permissionName):
	cursor = dbHandle.cursor()
	try:
		cursor.execute(sqlStatement)
		if cursor.rowcount > 0:
			# If permission is found permission table great, just return the permission id to be inserted into the appperm table
			queryOutput = cursor.fetchall()
			for row in queryOutput:
				permissionId = row[0]
		else:
			# If permission is NOT found permission table then insert it in the table and return the permission id to be inserted into the appperm table
			# We are inserting protection level as signature by default.
			# The data quality can be improved further by analyzing the apks or 
			# by carrying out post analysis on the `AndroidManifest.xml file <https://raw.githubusercontent.com/android/platform_frameworks_base/master/core/res/AndroidManifest.xml>`_
			sqlStatement = "INSERT INTO `permissions`(`name`,`protection_level`) VALUES ('"+permissionName+"','signature');"
			permissionId = databaseHandler.dbManipulateData(dbHandle, sqlStatement)
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise
	return permissionId

def find_element_in_list(element,list_element):
	try:
		index_element=list_element.index(element)
		return index_element
	except ValueError:
		return -1

#	This is a hard coded loop. A more elegant solution would be preferred.
def getGSFId(currentId):
	if not listOfGSFIds:
		parser = SafeConfigParser()
		parser.read('androidIdConfig.ini')
		#Can we do a for loop here for the line count on the config file? Let's try this eventually.
		listOfGSFIds.append(parser.get('androidIdConfig', 'id1'))
		listOfGSFIds.append(parser.get('androidIdConfig', 'id2'))
		listOfGSFIds.append(parser.get('androidIdConfig', 'id3'))
		listOfGSFIds.append(parser.get('androidIdConfig', 'id4'))
		listOfGSFIds.append(parser.get('androidIdConfig', 'id5'))
		listOfGSFIds.append(parser.get('androidIdConfig', 'id6'))
	else:
		newIndex = 0
		if currentId != "":
			currentIdIndex = find_element_in_list(currentId,listOfGSFIds)
			newIndex = (currentIdIndex+1)%6
#		Used this code for the random index thing. It still gets blocked by Google so just cycling through the indexes.
# 		while(newIndex == currentIdIndex):
# 			newIndex = randint(0,5)
		return listOfGSFIds[newIndex]

def extractPermissionsInfo(dbHandle,pkgName,GSFId):
	if isAPKPermissionsAlreadyInTable(dbHandle,pkgName) == True:
		print "Moving on to extracting permissions for the next app. This one is already in the database."
	else:
		# Extract permissions using the API and store in the DB
		pkgNameList=[]
		pkgNameList.append(pkgName)
		# API call to unofficial Google Play API written in Python by egirault
		listOfPermissions = permissions.getPackagePermission(pkgNameList,GSFId)
#		print listOfPermissions
		
		for permissionName in listOfPermissions:
			dbHandle = databaseHandler.dbConnectionCheck()
	
			# See if the permission is in the table if not insert it and get its id
			sqlStatementPermName = "SELECT id FROM `permissions` WHERE `name` = '"+permissionName+"';"
			permissionId = getPermissionId(dbHandle,sqlStatementPermName,permissionName)
	
			# Find the App's Id in the DB
			# Assumption is that the crawlURL has already extracted all information about the app and the same is in the appdata table
			# If that is not true this step will fail and we will have to skip and go to the next app
			sqlStatementAppPkgName = "SELECT id FROM `appdata` WHERE `app_pkg_name` = '"+pkgName+"';"
			appId = getAppId(dbHandle,sqlStatementAppPkgName,pkgName)
				
			if appId > 0:
				# Insert the App_Id and corresponding Perm_Id in to the DB
				sqlStatement = "INSERT INTO `appperm`(`app_id`,`perm_id`) VALUES ("+str(appId)+","+str(permissionId)+");"
				print sqlStatement
				databaseHandler.dbManipulateData(dbHandle, sqlStatement)
			else:
				print "Moving on to the next app. This app has not been extracted from Google Play Store."

def extractBulkPermissions(dbHandle,pkgNameList):
	for pkgName in pkgNameList:
		if isAPKPermissionsAlreadyInTable(dbHandle,pkgName) == True:
			print "Moving on to decompiling the next app. This one is already in the database."
			pkgNameList.remove(pkgName)
	print pkgNameList
	# Extract permissions using the API and store in the DB
	permissionListDict = permissions.getPackagePermission(pkgNameList)
	
	for appName, permissionList in permissionListDict.iteritems():
		print appName, permissionList
# 		dbHandle = databaseHandler.dbConnectionCheck()
# 
# 		# See if the permission is in the table if not insert it and get its id
# 		sqlStatementPermName = "SELECT id FROM `permissions` WHERE `name` = '"+permissionName+"';"
# 		permissionId = getPermissionId(dbHandle,sqlStatementPermName,permissionName)
# 
# 		# Find the App's Id in the DB
# 		# Assumption is that the crawlURL has already extracted all information about the app and the same is in the appdata table
# 		# If that is not true this step will fail and we will
# 		sqlStatementAppPkgName = "SELECT id FROM `appdata` WHERE `app_pkg_name` = '"+pkgName+"';"
# 		appId = getAppId(dbHandle,sqlStatementAppPkgName,pkgName)
# 		if appId > 0:
# 			# Insert the App_Id and corresponding Perm_Id in to the DB
# 			sqlStatement = "INSERT INTO `appperm`(`app_id`,`perm_id`) VALUES ("+str(appId)+","+str(permissionId)+");"
# 			databaseHandler.dbManipulateData(dbHandle, sqlStatement)
# 		else:
# 			print "Moving on to the next app"

# Update "perm_extracted" column to mark permissions have been extracted
def updatePermExtracted(dbHandle, tableId):
	sqlStatement = "UPDATE `appurls` SET `perm_extracted`=1 WHERE `id`="+str(tableId)+";"
	databaseHandler.dbManipulateData(dbHandle, sqlStatement)

def findCountOfLoopsForURLsToBeParsed(cursor):
	sqlStatement = "SELECT count(`app_pkg_name`) FROM `appurls` WHERE `perm_extracted` = 0;"
	try:
		cursor.execute(sqlStatement)
		queryOutput = cursor.fetchall()
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise
	for row in queryOutput:
		return row[0]/150
	
def olderDoTask():
	currentId = ""
	dbHandle = databaseHandler.dbConnectionCheck() # DB Open
# TEST CODE FOR ONE APP
# 	extractPermissionsInfo(dbHandle,"a.a.a.A")
# 	extractPermissionsInfo(dbHandle,"com.expedia.bookings")
#	extractPermissionsInfo(dbHandle,"com.ioob.openmovies")
#	sys.exit(0)
# TEST CODE FOR ONE APP

	cursor = dbHandle.cursor()
	loopcount = findCountOfLoopsForURLsToBeParsed(cursor)
	for counter in range(0,loopcount):
		currentId = getGSFId(currentId)
		sqlStatement = "SELECT `id`, `app_pkg_name` FROM `appurls` WHERE `perm_extracted` = 0 LIMIT 150;"
		try:
			cursor.execute(sqlStatement)
			queryOutput = cursor.fetchall()
		except:
			print "Unexpected error:", sys.exc_info()[0]
			raise
		pkgNameList = []
		print "loop: ",counter
		for row in queryOutput:
			pkgNameList.append(row[1])
			extractPermissionsInfo(dbHandle,row[1],currentId)
			updatePermExtracted(dbHandle,row[0])
		time.sleep(1800) # Sleep for 30 minutes every GSF ID call for 150 app's permission extraction request
	# 	print pkgNameList

'''
Bulk permissions extraction code might get complicated. 
We will have to see this later.
'''
#	extractBulkPermissions(dbHandle,pkgNameList)
def makeSurePathExists(path):
	if os.path.exists(path):
		return True
	return False

def runShellCmdGetOutput(cmd):
	p = s.Popen(cmd.split(), stdout=s.PIPE, stderr=s.PIPE)
	out, err = p.communicate()
	return out.strip(), err.strip()

def doTask(inpath,benignMal):
#	#	Run analysis
#	dbHandle = databaseHandler.dbConnectionCheck()
	jsonFile=os.getcwd()+"/"+benignMal+'.json'
	bigAppDict = {}
	if makeSurePathExists(inpath):
		os.chdir(inpath)
		count=0
		for apkFile in os.listdir(os.getcwd()):
			appDict={}
			if apkFile.endswith(".apk"):
				abspath=os.getcwd()+"/"+apkFile
				packageNameCommand="aapt dump badging "+abspath+" | awk -F\" \" '/package/ {print $2}'|awk -F\"'\" '/name=/ {print $2}'"
				appDict["pkgName"]=runShellCmdGetOutput(packageNameCommand)
				versionCodeCommand="aapt dump badging "+abspath+" | awk -F\" \" '/package/ {print $3}'|awk -F\"'\" '/versionCode=/ {print $2}'"
				appDict["verCode"]=runShellCmdGetOutput(versionCodeCommand)
				versionNameCommand="aapt dump badging "+abspath+" | awk -F\" \" '/package/ {print $4}'|awk -F\"'\" '/versionName=/ {print $2}'"
				appDict["verName"]=runShellCmdGetOutput(versionNameCommand)
				platformBuildVersionNameCommand="aapt dump badging "+abspath+" | awk -F\" \" '/package/ {print $5}'|awk -F\"'\" '/platformBuildVersionName=/ {print $2}'"
				appDict["platformVer"]=runShellCmdGetOutput(platformBuildVersionNameCommand)
				usesFeatureCommand="aapt dump badging "+abspath+" | awk -F\" \" '/uses-feature/ {print $2}'|awk -F\"'\" '/name=/ {print $2}'"
				featuresList=runShellCmdGetOutput(usesFeatureCommand)[0]
				features=[]
				for feature in featuresList.split("\n"):
					features.append(feature)
				appDict["features"]=features
				usesPermissionCommand="aapt dump badging "+abspath+" | awk -F\" \" '/uses-permission/ {print $2}'|awk -F\"'\" '/name=/ {print $2}'"
				permList=runShellCmdGetOutput(usesPermissionCommand)[0]
				permissions=[]
				for permission in permList.split("\n"):
					permissions.append(permission)
				appDict["permissions"]=permissions
				appDict["benignMal"]=benignMal
			bigAppDict[appDict["pkgName"]]=appDict
			count+=1
			if(count%100 == 0):
				print str(count), " apps done"
	open(jsonFile,'w').write(json.dumps(bigAppDict,indent=4))

def main(argv):
	if len(sys.argv) != 3:
		sys.stderr.write('Usage: python getPermissions.py folderPathApk benignOrMalware\n')
		sys.exit(1)
		
	startTime = time.time()
	doTask(sys.argv[1],sys.argv[2])
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	main(sys.argv)
