'''
Created on May 8, 2016
@author: Prajit

Usage: python generateDataset.py appCategoryListSelection restrictionListSelection restrictionType

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
import selectApps as sa
import selectPermissions as sp
import PathDetails as pd

def getPermDictForApp(dbHandle, appDict, permissionRestrictionList, restrictionType):
	appIdVector = []
	for appInfoDict in appDict.itervalues():
		appIdVector.append(str(appInfoDict['appId']))
	#Convert the appids to string as we want to ensure that the concatenation in convertPythonListToSQLQueryList() works

	'''
	Extract the permissions vector for all the appIds
	The app matrix returned is a big one and it has some columns with only zero values we have to remove them if possible
	This is where dimensionality reduction will probably help!
	Return app vector appMatrix will be read from File
	'''
	return sp.generatePermVector(dbHandle, appDict, sp.getSQLStatement(appIdVector, permissionRestrictionList, restrictionType))

#generate the permission matrix for category list apps
def generateAppMatrixCatApps(dbHandle, appCategoryList, permissionRestrictionList, restrictionType):
	print "in generateAppMatrixCatApps"
	#select the apps to be processed
	appDict = sa.getCategoryApps(dbHandle, appCategoryList)
	return getPermDictForApp(dbHandle, appDict, permissionRestrictionList, restrictionType)

#generate the permission matrix for hmd category list apps
def generateAppMatrixHMDTopApps(dbHandle, appCategoryList, permissionRestrictionList, restrictionType):
	print "in generateAppMatrixHMDTopApps"
	#select the apps to be processed
	#Since the execution is not working for more than a few thousand probably we are going to run this for a few thousand
	appDict = sa.getHMDAppsTopFewThousands(dbHandle, appCategoryList)
	return getPermDictForApp(dbHandle, appDict, permissionRestrictionList, restrictionType)

#generate the permission matrix for category wise list apps
def generateAppMatrixCatTopApps(dbHandle, permissionRestrictionList, restrictionType):
	print "in generateAppMatrixCatTopApps"
	#select the apps to be processed
	#Since the execution is not working for more than a few thousand probably we are going to run this for a few thousand
	appDict = sa.getCategoryAppsTopFewThousands(dbHandle)
	return getPermDictForApp(dbHandle, appDict, permissionRestrictionList, restrictionType)

#generate the permission matrix for all apps
def generateAppMatrixAllApps(dbHandle, permissionRestrictionList, restrictionType):
	print "in generateAppMatrixAllApps"
	#select the apps to be processed
	appDict = sa.getTopApps(dbHandle)
	return getPermDictForApp(dbHandle, appDict, permissionRestrictionList, restrictionType)

#Generate the permission matrix for top apps
def generateAppMatrixTopApps(dbHandle, permissionRestrictionList, restrictionType):
	print "in generateAppMatrixTopApps"
	#select the apps to be processed
	appDict = sa.getTopApps(dbHandle)
	return getPermDictForApp(dbHandle, appDict, permissionRestrictionList, restrictionType)

#Generate permission vector for app
def getPermVector(appPermList, permissionList):
	tempVector = [0] * len(permissionList)
	for index in range(0, len(permissionList)):
		for permission in appPermList:
			if permission == permissionList[index]:
				tempVector[index] = 1
	return tempVector

#Generate app category vector
def getAppCategoryList(appDict):
	tempCatVector = set()
	for appInfoDict in appDict.itervalues():
		tempCatVector.add(appInfoDict['category'].replace(" ", "_"))
	return list(tempCatVector)

def getAppPermCatVector(appPkgName, appInfoDict, permissionList):
	appPermCatVector = []
	appPermCatVector = getPermVector(appInfoDict['permissions'], permissionList)
	appPermCatVector.append(appInfoDict['category'])
	return appPermCatVector

#Generate the ARFF file for weka to process
def generateArffFile(appMatrixFile, appDict, permissionList):
	arffFileContent="% 1. Title: Playstore Data Category Classification\n"
	arffFileContent+="% \n"
	arffFileContent+="% 2. Sources:\n"
	arffFileContent+="%      (a) Creator: P. K. Das\n"
	arffFileContent+="%      (b) Source: Google Play Store and Playdrone dataset\n"
	arffFileContent+="%      (c) Date: May, 2016\n"
	arffFileContent+="% \n"
	arffFileContent+="@RELATION playstore\n\n"
	for permission in permissionList:
		arffFileContent+="@ATTRIBUTE permission NUMERIC\n"
	arffFileContent+="@ATTRIBUTE class {"+",".join(getAppCategoryList(appDict))+"}\n\n"
	arffFileContent+="@DATA\n"
	# for appPkgName, appInfoDict in appDict.iteritems():
	# 	print appPkgName, appInfoDict['category'], appInfoDict['permissions'], getPermVector(appInfoDict['permissions'], permissionList)
	
	for appPkgName, appInfoDict in appDict.iteritems():
		print ",".join(str(getAppPermCatVector(appPkgName, appInfoDict, permissionList)))

#Generate the dataset for weka to process
def generateDataset(appMatrixFile, appCategoryList, appCategoryListSelection, permissionRestrictionList, restrictionType):
	dbHandle = databaseHandler.dbConnectionCheck() #DB Open

	if appCategoryListSelection == 'top':
		#generate the permission matrix for top apps
		appDict, permissionList = generateAppMatrixTopApps(dbHandle, permissionRestrictionList, restrictionType)
	elif appCategoryListSelection == 'all':
		#generate the permission matrix for all apps
		appDict, permissionList = generateAppMatrixAllApps(dbHandle, permissionRestrictionList, restrictionType)
	elif appCategoryListSelection == 'cattop':
		#generate the permission matrix for category wise top apps
		appDict, permissionList = generateAppMatrixCatTopApps(dbHandle, permissionRestrictionList, restrictionType)
	elif appCategoryListSelection == 'hmdtop':
		#generate the permission matrix for hmd top apps
		appDict, permissionList = generateAppMatrixHMDTopApps(dbHandle, appCategoryList, permissionRestrictionList, restrictionType)
	else:
		#generate the permission matrix for category list apps
		appDict, permissionList = generateAppMatrixCatApps(dbHandle, appCategoryList, permissionRestrictionList, restrictionType)

	generateArffFile(appMatrixFile, appDict, permissionList)

	dbHandle.close() #DB Close

def preProcess(appCategoryListSelection, permissionRestrictionListSelection):
	if appCategoryListSelection == 'med':
		appCategoryList = ['https://play.google.com/store/apps/category/MEDICAL']
	elif appCategoryListSelection == 'hea':
		appCategoryList = ['https://play.google.com/store/apps/category/HEALTH_AND_FITNESS']
	elif appCategoryListSelection == 'hmd':
		appCategoryList = ['https://play.google.com/store/apps/category/HEALTH_AND_FITNESS','https://play.google.com/store/apps/category/MEDICAL']
	elif appCategoryListSelection == 'hmdtop':
		appCategoryList = ['https://play.google.com/store/apps/category/HEALTH_AND_FITNESS','https://play.google.com/store/apps/category/MEDICAL']
	elif appCategoryListSelection == 'fabra':
		appCategoryList = ['https://play.google.com/store/apps/category/FAMILY_BRAINGAMES']
	elif appCategoryListSelection == 'top':
		appCategoryList = ['top']
	elif appCategoryListSelection == 'all':
		appCategoryList = ['all']
	elif appCategoryListSelection == 'cattop':
		appCategoryList = ['cattop']
	'''
	This is the full list:-
	appCategoryList = ['https://play.google.com/store/apps/category/APP_WALLPAPER','https://play.google.com/store/apps/category/APP_WIDGETS','https://play.google.com/store/apps/category/BOOKS_AND_REFERENCE','https://play.google.com/store/apps/category/BUSINESS','https://play.google.com/store/apps/category/COMICS','https://play.google.com/store/apps/category/COMMUNICATION','https://play.google.com/store/apps/category/EDUCATION','https://play.google.com/store/apps/category/ENTERTAINMENT','https://play.google.com/store/apps/category/FAMILY','https://play.google.com/store/apps/category/FAMILY?age=AGE_RANGE1','https://play.google.com/store/apps/category/FAMILY?age=AGE_RANGE2','https://play.google.com/store/apps/category/FAMILY?age=AGE_RANGE3','https://play.google.com/store/apps/category/FAMILY_ACTION','https://play.google.com/store/apps/category/FAMILY_BRAINGAMES','https://play.google.com/store/apps/category/FAMILY_CREATE','https://play.google.com/store/apps/category/FAMILY_EDUCATION','https://play.google.com/store/apps/category/FAMILY_MUSICVIDEO','https://play.google.com/store/apps/category/FAMILY_PRETEND','https://play.google.com/store/apps/category/FINANCE','https://play.google.com/store/apps/category/GAME','https://play.google.com/store/apps/category/GAME_ACTION','https://play.google.com/store/apps/category/GAME_ADVENTURE','https://play.google.com/store/apps/category/GAME_ARCADE','https://play.google.com/store/apps/category/GAME_BOARD','https://play.google.com/store/apps/category/GAME_CARD','https://play.google.com/store/apps/category/GAME_CASINO','https://play.google.com/store/apps/category/GAME_CASUAL','https://play.google.com/store/apps/category/GAME_EDUCATIONAL','https://play.google.com/store/apps/category/GAME_MUSIC','https://play.google.com/store/apps/category/GAME_PUZZLE','https://play.google.com/store/apps/category/GAME_RACING','https://play.google.com/store/apps/category/GAME_ROLE_PLAYING','https://play.google.com/store/apps/category/GAME_SIMULATION','https://play.google.com/store/apps/category/GAME_SPORTS','https://play.google.com/store/apps/category/GAME_STRATEGY','https://play.google.com/store/apps/category/GAME_TRIVIA','https://play.google.com/store/apps/category/GAME_WORD','https://play.google.com/store/apps/category/HEALTH_AND_FITNESS','https://play.google.com/store/apps/category/LIBRARIES_AND_DEMO','https://play.google.com/store/apps/category/LIFESTYLE','https://play.google.com/store/apps/category/MEDIA_AND_VIDEO','https://play.google.com/store/apps/category/MEDICAL','https://play.google.com/store/apps/category/MUSIC_AND_AUDIO','https://play.google.com/store/apps/category/NEWS_AND_MAGAZINES','https://play.google.com/store/apps/category/PERSONALIZATION','https://play.google.com/store/apps/category/PHOTOGRAPHY','https://play.google.com/store/apps/category/PRODUCTIVITY','https://play.google.com/store/apps/category/SHOPPING','https://play.google.com/store/apps/category/SOCIAL','https://play.google.com/store/apps/category/SPORTS','https://play.google.com/store/apps/category/TOOLS','https://play.google.com/store/apps/category/TRANSPORTATION','https://play.google.com/store/apps/category/TRAVEL_AND_LOCAL','https://play.google.com/store/apps/category/WEATHER']
	'''
	if permissionRestrictionListSelection == 'int':
		permissionRestrictionList = ['android.permission.INTERNET']
	elif permissionRestrictionListSelection == 'top25':
		permissionRestrictionList = ['android.permission.INTERNET','android.permission.ACCESS_COARSE_LOCATION','android.permission.ACCESS_FINE_LOCATION','android.permission.ACCESS_LOCATION_EXTRA_COMMANDS','android.permission.ACCESS_NETWORK_STATE','android.permission.ACCESS_WIFI_STATE','android.permission.CALL_PHONE','android.permission.CAMERA','android.permission.GET_ACCOUNTS','android.permission.GET_TASKS','android.permission.MODIFY_AUDIO_SETTINGS','android.permission.READ_CALL_LOG','android.permission.READ_CONTACTS','android.permission.READ_EXTERNAL_STORAGE','android.permission.READ_PHONE_STATE','android.permission.RECEIVE_BOOT_COMPLETED','android.permission.RECORD_AUDIO','android.permission.SEND_SMS','android.permission.VIBRATE','android.permission.WAKE_LOCK','android.permission.WRITE_EXTERNAL_STORAGE','com.android.vending.BILLING','com.android.vending.CHECK_LICENSE','com.google.android.c2dm.permission.RECEIVE','com.google.android.providers.gsf.permission.READ_GSERVICE']
	elif permissionRestrictionListSelection == 'google':
		permissionRestrictionList = ['android.permission.SEND_SMS','android.permission.SEND_RESPOND_VIA_MESSAGE','android.permission.RECEIVE_SMS','android.permission.RECEIVE_MMS','android.permission.CARRIER_FILTER_SMS','android.permission.RECEIVE_EMERGENCY_BROADCAST','android.permission.READ_CELL_BROADCASTS','android.permission.READ_SMS','android.permission.WRITE_SMS','android.permission.RECEIVE_WAP_PUSH','android.permission.RECEIVE_BLUETOOTH_MAP','android.permission.READ_CONTACTS','android.permission.WRITE_CONTACTS','android.permission.BIND_DIRECTORY_SEARCH','android.permission.READ_CALL_LOG','android.permission.WRITE_CALL_LOG','android.permission.READ_SOCIAL_STREAM','android.permission.WRITE_SOCIAL_STREAM','android.permission.READ_PROFILE','android.permission.WRITE_PROFILE','android.permission.BODY_SENSORS','android.permission.READ_CALENDAR','android.permission.WRITE_CALENDAR','android.permission.READ_USER_DICTIONARY','android.permission.WRITE_USER_DICTIONARY','com.android.browser.permission.READ_HISTORY_BOOKMARKS','com.android.browser.permission.WRITE_HISTORY_BOOKMARKS','com.android.alarm.permission.SET_ALARM','com.android.voicemail.permission.ADD_VOICEMAIL','com.android.voicemail.permission.WRITE_VOICEMAIL','com.android.voicemail.permission.READ_VOICEMAIL','android.permission.ACCESS_FINE_LOCATION','android.permission.ACCESS_COARSE_LOCATION','android.permission.ACCESS_MOCK_LOCATION','android.permission.ACCESS_LOCATION_EXTRA_COMMANDS','android.permission.INSTALL_LOCATION_PROVIDER','android.permission.HDMI_CEC','android.permission.LOCATION_HARDWARE','android.permission.INTERNET','android.permission.ACCESS_NETWORK_STATE','android.permission.ACCESS_WIFI_STATE','android.permission.CHANGE_WIFI_STATE','android.permission.READ_WIFI_CREDENTIAL','android.permission.ACCESS_WIMAX_STATE','android.permission.CHANGE_WIMAX_STATE','android.permission.SCORE_NETWORKS','android.permission.BLUETOOTH','android.permission.BLUETOOTH_ADMIN','android.permission.BLUETOOTH_PRIVILEGED','android.permission.BLUETOOTH_MAP','android.permission.BLUETOOTH_STACK','android.permission.NFC','android.permission.CONNECTIVITY_INTERNAL','android.permission.RECEIVE_DATA_ACTIVITY_CHANGE','android.permission.LOOP_RADIO','android.permission.NFC_HANDOVER_STATUS','android.permission.GET_ACCOUNTS','android.permission.AUTHENTICATE_ACCOUNTS','android.permission.USE_CREDENTIALS','android.permission.MANAGE_ACCOUNTS','android.permission.ACCOUNT_MANAGER','android.permission.CHANGE_WIFI_MULTICAST_STATE','android.permission.VIBRATE','android.permission.FLASHLIGHT','android.permission.WAKE_LOCK','android.permission.TRANSMIT_IR','android.permission.MODIFY_AUDIO_SETTINGS','android.permission.MANAGE_USB','android.permission.ACCESS_MTP','android.permission.HARDWARE_TEST','android.permission.ACCESS_FM_RADIO','android.permission.NET_ADMIN','android.permission.REMOTE_AUDIO_PLAYBACK','android.permission.TV_INPUT_HARDWARE','android.permission.CAPTURE_TV_INPUT','android.permission.OEM_UNLOCK_STATE','android.permission.ACCESS_PDB_STATE','android.permission.RECORD_AUDIO','android.permission.CAMERA','android.permission.CAMERA_DISABLE_TRANSMIT_LED','android.permission.PROCESS_OUTGOING_CALLS','android.permission.MODIFY_PHONE_STATE','android.permission.READ_PHONE_STATE','android.permission.READ_PRECISE_PHONE_STATE','android.permission.READ_PRIVILEGED_PHONE_STATE','android.permission.CALL_PHONE','android.permission.USE_SIP','android.permission.REGISTER_SIM_SUBSCRIPTION','android.permission.REGISTER_CALL_PROVIDER','android.permission.REGISTER_CONNECTION_MANAGER','android.permission.BIND_INCALL_SERVICE','android.permission.BIND_CONNECTION_SERVICE','android.permission.CONTROL_INCALL_EXPERIENCE','android.permission.READ_EXTERNAL_STORAGE','android.permission.WRITE_EXTERNAL_STORAGE','android.permission.WRITE_MEDIA_STORAGE','android.permission.MANAGE_DOCUMENTS','android.permission.DISABLE_KEYGUARD','android.permission.GET_TASKS','android.permission.REAL_GET_TASKS','android.permission.START_TASKS_FROM_RECENTS','android.permission.INTERACT_ACROSS_USERS','android.permission.INTERACT_ACROSS_USERS_FULL','android.permission.MANAGE_USERS','android.permission.GET_DETAILED_TASKS','android.permission.REORDER_TASKS','android.permission.REMOVE_TASKS','android.permission.MANAGE_ACTIVITY_STACKS','android.permission.START_ANY_ACTIVITY','android.permission.RESTART_PACKAGES','android.permission.KILL_BACKGROUND_PROCESSES','android.permission.SYSTEM_ALERT_WINDOW','android.permission.SET_WALLPAPER','android.permission.SET_WALLPAPER_HINTS','android.permission.SET_TIME','android.permission.SET_TIME_ZONE','android.permission.EXPAND_STATUS_BAR','android.permission.READ_SYNC_SETTINGS','android.permission.WRITE_SYNC_SETTINGS','android.permission.READ_SYNC_STATS','android.permission.SET_SCREEN_COMPATIBILITY','android.permission.ACCESS_ALL_EXTERNAL_STORAGE','android.permission.CHANGE_CONFIGURATION','android.permission.WRITE_SETTINGS','android.permission.WRITE_GSERVICES','android.permission.FORCE_STOP_PACKAGES','android.permission.RETRIEVE_WINDOW_CONTENT','android.permission.SET_ANIMATION_SCALE','android.permission.PERSISTENT_ACTIVITY','android.permission.GET_PACKAGE_SIZE','android.permission.SET_PREFERRED_APPLICATIONS','android.permission.RECEIVE_BOOT_COMPLETED','android.permission.BROADCAST_STICKY','android.permission.MOUNT_UNMOUNT_FILESYSTEMS','android.permission.MOUNT_FORMAT_FILESYSTEMS','android.permission.ASEC_ACCESS','android.permission.ASEC_CREATE','android.permission.ASEC_DESTROY','android.permission.ASEC_MOUNT_UNMOUNT','android.permission.ASEC_RENAME','android.permission.WRITE_APN_SETTINGS','android.permission.SUBSCRIBED_FEEDS_READ','android.permission.SUBSCRIBED_FEEDS_WRITE','android.permission.CHANGE_NETWORK_STATE','android.permission.CLEAR_APP_CACHE','android.permission.ALLOW_ANY_CODEC_FOR_PLAYBACK','android.permission.MANAGE_CA_CERTIFICATES','android.permission.RECOVERY','android.permission.BIND_JOB_SERVICE','android.permission.WRITE_SECURE_SETTINGS','android.permission.DUMP','android.permission.READ_LOGS','android.permission.SET_DEBUG_APP','android.permission.SET_PROCESS_LIMIT','android.permission.SET_ALWAYS_FINISH','android.permission.SIGNAL_PERSISTENT_PROCESSES','android.permission.DIAGNOSTIC','android.permission.STATUS_BAR','android.permission.STATUS_BAR_SERVICE','android.permission.FORCE_BACK','android.permission.UPDATE_DEVICE_STATS','android.permission.GET_APP_OPS_STATS','android.permission.UPDATE_APP_OPS_STATS','android.permission.INTERNAL_SYSTEM_WINDOW','android.permission.MANAGE_APP_TOKENS','android.permission.FREEZE_SCREEN','android.permission.INJECT_EVENTS','android.permission.FILTER_EVENTS','android.permission.RETRIEVE_WINDOW_TOKEN','android.permission.FRAME_STATS','android.permission.TEMPORARY_ENABLE_ACCESSIBILITY','android.permission.SET_ACTIVITY_WATCHER','android.permission.SHUTDOWN','android.permission.STOP_APP_SWITCHES','android.permission.GET_TOP_ACTIVITY_INFO','android.permission.READ_INPUT_STATE','android.permission.BIND_INPUT_METHOD','android.permission.BIND_ACCESSIBILITY_SERVICE','android.permission.BIND_PRINT_SERVICE','android.permission.BIND_NFC_SERVICE','android.permission.BIND_PRINT_SPOOLER_SERVICE','android.permission.BIND_TEXT_SERVICE','android.permission.BIND_VPN_SERVICE','android.permission.BIND_WALLPAPER','android.permission.BIND_VOICE_INTERACTION','android.permission.MANAGE_VOICE_KEYPHRASES','android.permission.BIND_REMOTE_DISPLAY','android.permission.BIND_TV_INPUT','android.permission.MODIFY_PARENTAL_CONTROLS','android.permission.BIND_DEVICE_ADMIN','android.permission.MANAGE_DEVICE_ADMINS','android.permission.SET_ORIENTATION','android.permission.SET_POINTER_SPEED','android.permission.SET_INPUT_CALIBRATION','android.permission.SET_KEYBOARD_LAYOUT','android.permission.INSTALL_PACKAGES','android.permission.CLEAR_APP_USER_DATA','android.permission.DELETE_CACHE_FILES','android.permission.DELETE_PACKAGES','android.permission.MOVE_PACKAGE','android.permission.CHANGE_COMPONENT_ENABLED_STATE','android.permission.GRANT_REVOKE_PERMISSIONS','android.permission.ACCESS_SURFACE_FLINGER','android.permission.READ_FRAME_BUFFER','android.permission.ACCESS_INPUT_FLINGER','android.permission.CONFIGURE_WIFI_DISPLAY','android.permission.CONTROL_WIFI_DISPLAY','android.permission.CONTROL_VPN','android.permission.CAPTURE_AUDIO_OUTPUT','android.permission.CAPTURE_AUDIO_HOTWORD','android.permission.MODIFY_AUDIO_ROUTING','android.permission.CAPTURE_VIDEO_OUTPUT','android.permission.CAPTURE_SECURE_VIDEO_OUTPUT','android.permission.MEDIA_CONTENT_CONTROL','android.permission.BRICK','android.permission.REBOOT','android.permission.DEVICE_POWER','android.permission.USER_ACTIVITY','android.permission.NET_TUNNELING','android.permission.FACTORY_TEST','android.permission.BROADCAST_PACKAGE_REMOVED','android.permission.BROADCAST_SMS','android.permission.BROADCAST_WAP_PUSH','android.permission.BROADCAST_NETWORK_PRIVILEGED','android.permission.MASTER_CLEAR','android.permission.CALL_PRIVILEGED','android.permission.PERFORM_CDMA_PROVISIONING','android.permission.CONTROL_LOCATION_UPDATES','android.permission.ACCESS_CHECKIN_PROPERTIES','android.permission.PACKAGE_USAGE_STATS','android.permission.BATTERY_STATS','android.permission.BACKUP','android.permission.CONFIRM_FULL_BACKUP','android.permission.BIND_REMOTEVIEWS','android.permission.BIND_APPWIDGET','android.permission.BIND_KEYGUARD_APPWIDGET','android.permission.MODIFY_APPWIDGET_BIND_PERMISSIONS','android.permission.CHANGE_BACKGROUND_DATA_SETTING','android.permission.GLOBAL_SEARCH','android.permission.GLOBAL_SEARCH_CONTROL','android.permission.READ_SEARCH_INDEXABLES','android.permission.SET_WALLPAPER_COMPONENT','android.permission.READ_DREAM_STATE','android.permission.WRITE_DREAM_STATE','android.permission.ACCESS_CACHE_FILESYSTEM','android.permission.COPY_PROTECTED_DATA','android.permission.CRYPT_KEEPER','android.permission.READ_NETWORK_USAGE_HISTORY','android.permission.MANAGE_NETWORK_POLICY','android.permission.MODIFY_NETWORK_ACCOUNTING','android.intent.category.MASTER_CLEAR.permission.C2D_MESSAGE','android.permission.PACKAGE_VERIFICATION_AGENT','android.permission.BIND_PACKAGE_VERIFIER','android.permission.SERIAL_PORT','android.permission.ACCESS_CONTENT_PROVIDERS_EXTERNALLY','android.permission.UPDATE_LOCK','android.permission.ACCESS_NOTIFICATIONS','android.permission.ACCESS_KEYGUARD_SECURE_STORAGE','android.permission.CONTROL_KEYGUARD','android.permission.TRUST_LISTENER','android.permission.PROVIDE_TRUST_AGENT','android.permission.LAUNCH_TRUST_AGENT_SETTINGS','android.permission.BIND_TRUST_AGENT','android.permission.BIND_NOTIFICATION_LISTENER_SERVICE','android.permission.BIND_CONDITION_PROVIDER_SERVICE','android.permission.BIND_DREAM_SERVICE','android.permission.INVOKE_CARRIER_SETUP','android.permission.ACCESS_NETWORK_CONDITIONS','android.permission.ACCESS_DRM_CERTIFICATES','android.permission.MANAGE_MEDIA_PROJECTION','android.permission.READ_INSTALL_SESSIONS','android.permission.REMOVE_DRM_CERTIFICATES','android.permission.BIND_CARRIER_MESSAGING_SERVICE']
	else:#Select no permission restriction as we did not choose any restriction list
		permissionRestrictionList = []

	ticks = time.time()
	uniformString = str(ticks).replace(".","_")
	appMatrixFile = pd.getPath()+"appMatrix"+uniformString+".arff"
	text_file = open(appMatrixFile, "w")
	text_file.write("")
	text_file.close()

	return appMatrixFile, appCategoryList, permissionRestrictionList

def main(argv):
	if len(sys.argv) != 4:
		sys.stderr.write('Usage: python generateDataset.py appCategoryListSelection restrictionListSelection restrictionType\n\nappCategoryListSelection = [med|hea|hmd|hmdtop|fabra|top|all]\nmed: medical apps\nhea: health & fitness apps\nhmd: health & fitness and medical apps\nhmdtop: health & fitness and medical top apps\nfabra: family brain games apps\ntop: top Google apps\nall: all apps\n\nrestrictionListSelection = [int|top25|google]\nint: internet permissions\ntop25: top 25 permissions\ngoogle: google permissions\n\nrestrictionType = [allow|'']\nallow: allow selection\n"": deny\n')
		sys.exit(1)

	appCategoryListSelection = sys.argv[1]
	permissionRestrictionListSelection = sys.argv[2]
	restrictionType = sys.argv[3]

	appMatrixFile, appCategoryList, permissionRestrictionList = preProcess(appCategoryListSelection, permissionRestrictionListSelection)
	startTime = time.time()
	#Initiate the clustering process
	generateDataset(appMatrixFile, appCategoryList, appCategoryListSelection, permissionRestrictionList, restrictionType)
	executionTime = str((time.time()-startTime)*1000)
	print "Execution time was: "+executionTime+" ms"

if __name__ == "__main__":
	sys.exit(main(sys.argv))
