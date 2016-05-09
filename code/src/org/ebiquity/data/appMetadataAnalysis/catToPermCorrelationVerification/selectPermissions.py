'''
Updated on May 9, 2016
@author: Prajit
Usage: python selectPermissions.py restrictionListSelection restrictionType
'''
import sys
import databaseHandler
import logging
logging.basicConfig(filename='permcat.log',level=logging.DEBUG)

def generatePermVector(dbHandle, appDict, sqlStatement):
	cursor = dbHandle.cursor()
	permissionSet = set()
	try:
		cursor.execute(sqlStatement)
		logging.debug('Extracting app permissions')
		if cursor.rowcount > 0:
			queryOutput = cursor.fetchall()
			for row in queryOutput:
				tempPermSet = set(appDict[row[0]]['permissions'])
				tempPermSet.add(row[2])
				permissionSet.add(row[2])
				appDict[row[0]]['permissions'] = list(tempPermSet)
	except:
		logging.debug('Unexpected error in generatePermVector: '+sys.exc_info()[0])
		raise
	logging.debug('generatePermVector complete')
	return appDict, list(permissionSet)

def getSQLStatement(appIdVector, permissionRestrictionList, restrictionType):
	appIdVectorSQLQueryList = databaseHandler.convertPythonListToSQLQueryList(appIdVector)
	permissionRestrictionSQLQueryList = databaseHandler.convertPythonListToSQLQueryList(permissionRestrictionList)
	if permissionRestrictionSQLQueryList == '':
		# Get the complete permissions vector and then use that as the vector rep for each app
		# If the app has requested said permission then mark that as 1 or else let the vetor index for a permission remain zero
		# Select no restrictions doesn't matter what restrictionType we have
		sqlStatement = "SELECT app.`app_pkg_name`, a.`perm_id`, p.`name` FROM `appperm` a, `permissions` p, `appdata` app WHERE a.`perm_id` = p.`id` AND a.`app_id` = app.`id` AND a.`app_id` IN ("+appIdVectorSQLQueryList+");"
		#sqlStatement = "SELECT app.`app_pkg_name`, a.`perm_id` FROM `appperm` a, `appdata` app WHERE a.`app_id` = app.`id` AND a.`app_id` IN ("+appIdVectorSQLQueryList+");"
	else:
		if restrictionType == 'allow':
			# Get the complete permissions vector and then use that as the vector rep for each app
			# If the app has requested said permission then mark that as 1 or else let the vetor index for a permission remain zero
			# Select only permissions which have been allowed
			sqlStatement = "SELECT app.`app_pkg_name`, a.`perm_id`, p.`name` FROM `appperm` a, `permissions` p, `appdata` app WHERE a.`perm_id` = p.`id` AND a.`app_id` = app.`id` AND a.`app_id` IN ("+appIdVectorSQLQueryList+") AND p.`name` IN ("+permissionRestrictionSQLQueryList+");"
		else:
			# Get the complete permissions vector and then use that as the vector rep for each app
			# If the app has requested said permission then mark that as 1 or else let the vetor index for a permission remain zero
			# Select only permissions which have not been restricted
			sqlStatement = "SELECT app.`app_pkg_name`, a.`perm_id`, p.`name` FROM `appperm` a, `permissions` p, `appdata` app WHERE a.`perm_id` = p.`id` AND a.`app_id` = app.`id` AND a.`app_id` IN ("+appIdVectorSQLQueryList+") AND p.`name` NOT IN ("+permissionRestrictionSQLQueryList+");"
	
	logging.debug('getSQLStatement returns: '+sqlStatement)
	
	return sqlStatement
