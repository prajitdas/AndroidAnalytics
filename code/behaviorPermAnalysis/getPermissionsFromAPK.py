import os
import time
import sys
import subprocess as s
import json
import databaseHandler as db

def isAPKPermissionsAlreadyInTable(dbHandle,pkgName):
	cursor = dbHandle.cursor(buffered=True)
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
	cursor.close()
	
def getAppId(dbHandle,sqlStatement,pkgName):
	cursor = dbHandle.cursor(buffered=True)
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
	cursor.close()
	return appId

def getPermissionId(dbHandle,sqlStatement,permissionName):
	cursor = dbHandle.cursor(buffered=True)
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
			permissionId = db.dbManipulateData(dbHandle, sqlStatement)
	except:
		print "Unexpected error:", sys.exc_info()[0]
		raise
	cursor.close()
	return permissionId

def find_element_in_list(element,list_element):
	try:
		index_element=list_element.index(element)
		return index_element
	except ValueError:
		return -1

def uploadPermInfoToDB(dbHandle,pkgName,listOfPermissions):
	if isAPKPermissionsAlreadyInTable(dbHandle,pkgName) == True:
		print "Moving on to extracting permissions for the next app. This one is already in the database."
	else:
		# Extract permissions using the API and store in the DB
		pkgNameList=[]
		pkgNameList.append(pkgName)
		
		for permissionName in listOfPermissions:	
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
				db.dbManipulateData(dbHandle, sqlStatement)
			else:
				print "Moving on to the next app. This app has not been extracted from Google Play Store."

def updatePermExtracted(dbHandle, tableId):
	sqlStatement = "UPDATE `appurls` SET `perm_extracted`=1 WHERE `id`="+str(tableId)+";"
	db.dbManipulateData(dbHandle, sqlStatement)

def makeSurePathExists(path):
	if os.path.exists(path):
		return True
	return False

def runShellCmdGetOutput(cmd):
	p = s.Popen(cmd.split(), stdout=s.PIPE, stderr=s.PIPE)
	out, err = p.communicate()
	return out.strip()

def doTask(inpath,benignMal):
	dbHandle = db.dbConnectionCheck()
	jsonFile=os.getcwd()+"/"+benignMal+'.json'
	if makeSurePathExists(inpath):
		os.chdir(inpath)
		count=0
		bigAppDict = {}
		for apkFile in os.listdir(os.getcwd()):
			appDict={}
			if apkFile.endswith(".apk"):
				abspath=os.getcwd()+"/"+apkFile
				packageData="aapt dump badging "+abspath
				packageOutput=runShellCmdGetOutput(packageData)
				features=[]
				permissions=[]
				for appLine in packageOutput.split("\n"):
					if "package" in appLine:
						pkgInfo=appLine.split("'")
						try:
							appDict["pkgName"]=pkgInfo[1]
							appDict["verCode"]=pkgInfo[3]
							appDict["verName"]=pkgInfo[5]
							appDict["platformVer"]=pkgInfo[7]
						except IndexError:
							print 'skipping index'
					elif "uses-feature" in appLine:
						features.append(appLine.split("'")[1])
					elif "uses-permission" in appLine:
						permissions.append(appLine.split("'")[1])
				appDict["features"]=features
				appDict["permissions"]=permissions
				uploadPermInfoToDB(dbHandle,pkgInfo[1],permissions)
				appDict["benignMal"]=benignMal
			if "pkgName" in appDict:
				bigAppDict[appDict["pkgName"]]=appDict
			count+=1
			if(count%100 == 0):
				print str(count), " apps done"
	open(jsonFile,'w').write(json.dumps(bigAppDict,indent=4))
	dbHandle.close()

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
