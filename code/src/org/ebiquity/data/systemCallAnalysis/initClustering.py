'''
Created on April 27, 2016
@author: Prajit Kumar Das

Usage: python initClustering.py username api_key appCategoryListSelection restrictionListSelection restrictionType

appCategoryListSelection = [med|hea|hmd|hmdtop|fabra|top|all]
	med: medical apps
	hea: health & fitness apps
	hmd: health & fitness and medical apps
	hmdtop: health & fitness and medical top apps
	fabra: family brain games apps
	top: top Google apps
	all: all apps
	cattop: category wise top app selection

restrictionListSelection = [int|top25|google]
	int: internet permissions
	top25: top 25 permissions
	google: google permissions

restrictionType = [allow|""]
	allow: allow selection
	"": deny
'''
import sys
import time
import databaseHandler
#import io
import runClustering as runCl
import selectApps
import selectPermissions as sp
import PathDetails as pd

def getPermMatrix(dbHandle, appDict, permissionRestrictionList, restrictionType):
	appIdVector = []
	for appId in appDict.itervalues():
		appIdVector.append(str(appId))#Convert the appids to string as we want to ensure that the concatenation in convertPythonListToSQLQueryList() works
	
	'''
	Extract the permissions vector for all the appIds
	The app matrix returned is a big one and it has some columns with only zero values we have to remove them if possible
	This is where dimensionality reduction will probably help!
	Return app vector appMatrix will be read from File
	'''
	return sp.generatePermVector(dbHandle, sp.getSQLStatement(dbHandle, appIdVector, permissionRestrictionList, restrictionType))

#generate the permission matrix for category list apps
def generateAppMatrixCatApps(dbHandle, appCategoryList, permissionRestrictionList, restrictionType):
	print "in generateAppMatrixCatApps"
	#select the apps to be processed
	appDict = selectApps.getCategoryApps(dbHandle, appCategoryList)
	return getPermMatrix(dbHandle, appDict, permissionRestrictionList, restrictionType)

#generate the permission matrix for hmd category list apps
def generateAppMatrixHMDTopApps(dbHandle, appCategoryList, permissionRestrictionList, restrictionType):
	print "in generateAppMatrixHMDTopApps"
	#select the apps to be processed
	#Since the execution is not working for more than a few thousand probably we are going to run this for a few thousand
	appDict = selectApps.getHMDAppsTopFewThousands(dbHandle, appCategoryList)
	return getPermMatrix(dbHandle, appDict, permissionRestrictionList, restrictionType)

#generate the permission matrix for category wise list apps
def generateAppMatrixCatTopApps(dbHandle, permissionRestrictionList, restrictionType):
	print "in generateAppMatrixCatTopApps"
	#select the apps to be processed
	#Since the execution is not working for more than a few thousand probably we are going to run this for a few thousand
	appDict = selectApps.getCategoryAppsTopFewThousands(dbHandle)
	return getPermMatrix(dbHandle, appDict, permissionRestrictionList, restrictionType)

#generate the permission matrix for all apps
def generateAppMatrixAllApps(dbHandle, permissionRestrictionList, restrictionType):
	print "in generateAppMatrixAllApps"
	#select the apps to be processed
	appDict = selectApps.getTopApps(dbHandle)
	return getPermMatrix(dbHandle, appDict, permissionRestrictionList, restrictionType)

#generate the permission matrix for top apps
def generateAppMatrixTopApps(dbHandle, permissionRestrictionList, restrictionType):
	print "in generateAppMatrixTopApps"
	#select the apps to be processed
	appDict = selectApps.getTopApps(dbHandle)
	return getPermMatrix(dbHandle, appDict, permissionRestrictionList, restrictionType)

#Initiate the clustering process
def initClustering(username, api_key, predictedClustersFile, appMatrixFile, appCategoryList, appCategoryListSelection, permissionRestrictionList, restrictionType):
	dbHandle = databaseHandler.dbConnectionCheck() #DB Open

	if appCategoryListSelection == 'top':
		#generate the permission matrix for top apps
		permissionsSet, permissionsDict = generateAppMatrixTopApps(dbHandle, permissionRestrictionList, restrictionType)
	elif appCategoryListSelection == 'all':
		#generate the permission matrix for all apps
		permissionsSet, permissionsDict = generateAppMatrixAllApps(dbHandle, permissionRestrictionList, restrictionType)
	elif appCategoryListSelection == 'cattop':
		#generate the permission matrix for category wise top apps
		permissionsSet, permissionsDict = generateAppMatrixCatTopApps(dbHandle, permissionRestrictionList, restrictionType)
	elif appCategoryListSelection == 'hmdtop':
		#generate the permission matrix for hmd top apps
		permissionsSet, permissionsDict = generateAppMatrixHMDTopApps(dbHandle, appCategoryList, permissionRestrictionList, restrictionType)
	else:
		#generate the permission matrix for category list apps
		permissionsSet, permissionsDict = generateAppMatrixCatApps(dbHandle, appCategoryList, permissionRestrictionList, restrictionType)

	runCl.runClustering(username, api_key, appCategoryListSelection, predictedClustersFile, permissionsSet, permissionsDict, appMatrixFile)

	dbHandle.close() #DB Close

def preProcess():
	ticks = time.time()
	uniformString = str(ticks).replace(".","")
	appMatrixFile = pd.getPath()+"appMatrix"+uniformString+".txt"
	text_file = open(appMatrixFile, "w")
	text_file.write("")
	text_file.close()
	
	predictedClustersFile = pd.getPath()+"predictedClusters"+uniformString+".json.gz"
	text_file = open(predictedClustersFile, "w")
	text_file.write("")
	text_file.close()
	
	return appMatrixFile, predictedClustersFile, appCategoryList, permissionRestrictionList

def main(argv):
	if len(sys.argv) != 6:
		sys.stderr.write('Usage: python initClustering.py username api_key appCategoryListSelection restrictionListSelection restrictionType\n\nappCategoryListSelection = [med|hea|hmd|hmdtop|fabra|top|all]\nmed: medical apps\nhea: health & fitness apps\nhmd: health & fitness and medical apps\nhmdtop: health & fitness and medical top apps\nfabra: family brain games apps\ntop: top Google apps\nall: all apps\n\nrestrictionListSelection = [int|top25|google]\nint: internet permissions\ntop25: top 25 permissions\ngoogle: google permissions\n\nrestrictionType = [allow|'']\nallow: allow selection\n"": deny\n')
		sys.exit(1)

	username = sys.argv[1]
	api_key = sys.argv[2]
	appCategoryListSelection = sys.argv[3]
	permissionRestrictionListSelection = sys.argv[4]
	restrictionType = sys.argv[5]

	appMatrixFile, predictedClustersFile, appCategoryList, permissionRestrictionList = preProcess(appCategoryListSelection, permissionRestrictionListSelection)
	startTime = time.time()
	#Initiate the clustering process
	initClustering(username, api_key, predictedClustersFile, appMatrixFile, appCategoryList, appCategoryListSelection, permissionRestrictionList, restrictionType)
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))
