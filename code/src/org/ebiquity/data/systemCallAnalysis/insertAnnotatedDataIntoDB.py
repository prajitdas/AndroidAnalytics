# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""
import json
import databaseHandler as db
import sys

appDict=json.loads(open("newcategory.json","r").read())
appList=appDict.keys()

dbHandle=db.dbConnectionCheck()
cursor=dbHandle.cursor(buffered=True)
errorList=[]
mismatchList=[]
playCategory=''
for app in appList:
	sqlStatement="SELECT c.url as category FROM appdata a, appcategories c WHERE a.app_category_id = c.id AND a.app_pkg_name = '"+app+"';"
	try:
		cursor.execute(sqlStatement)
		if cursor.rowcount == 1:
			playCategory=str(cursor.fetchone()[0])
			playCategory=(((playCategory.replace("https://play.google.com/store/apps/category/","")).lower()).replace("_and_","_n_")).replace("game_","")
			annotatedCategory=str(appDict[app]["annotated_category"])
			if playCategory == appDict[app]["google_play_category"]:				
				insertStatement="INSERT INTO annotations (app_pkg_name, google_play_category, annotated_category) VALUES ('"+app+"', '"+playCategory+"', '"+annotatedCategory+"');"
				rowid=db.dbManipulateData(dbHandle,insertStatement)
				print "Inserted data for", app, "row:", rowid
			else:
				if appDict[app]["google_play_category"] == '':
					insertStatement="INSERT INTO annotations (app_pkg_name, google_play_category, annotated_category) VALUES ('"+app+"', '"+playCategory+"', '"+annotatedCategory+"');"
					rowid=db.dbManipulateData(dbHandle,insertStatement)
					print "Inserted data for", app, "row:", rowid
				else:
#					print "Mismatch occurred: ", app, playCategory, appDict[app]["google_play_category"]
#					print cursor.rowcount
					mismatchList.append(app)
		else:
			errorList.append(app)
	except:
		print('Unexpected error: '+str(sys.exc_info()[0]))

print "errorList", errorList
print "mismatchList", mismatchList
cursor.close()
dbHandle.close() #DB Close 
