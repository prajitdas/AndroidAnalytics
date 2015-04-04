#Project: PlayStoreDataCollection
API for Google Play store data collection and app permission analysis.

A wrapper code for the individual APIs do not exist right now. Such a wrapper would make using this API a lot easier. There are plans to do that eventually. At the moment the individual modules can be used to accomplish the necessary tasks. The first and mandatory step is to edit the dbConfig.ini file. Add your database host, database user name, database user password and database name in this file.

The following steps are in sequence and have dependencies on previous steps.

##Step one: Config file changes
* If the dbconfig.ini file does not exist in your src folder create it with a format as shown below:
```	
	[dbconfig]
	host = [hostname]
	user = [database_username]
	passwd = [database_user_password]
	db = [database_name]
```

* databaseHandler.py: This module is not to be executed on its own and should be used only to obtain the database handler for database operations or insert, update or delete from the database through other scripts as such:
```
	dbHandle = databaseHandler.dbConnectionCheck()
	dbHandle = databaseHandler.dbManipulateData(dbHandle, sqlStatement)
``` 
**DO NOT FORGET TO DO**
```
	dbHandle.close()
```

##Step two: Database creation
**BE CAREFUL WITH THIS CODE.**

**THIS CODE WILL DESTROY YOUR DATABASE, IF IT EXISTS, AND RECREATE IT!**
* createDatbase.py: This is the step where the database is created where your data will be stored.
	+ Usage: python createDatbase.py

##Step three: Start crawling
* crawURLs.py: This is the main crawling script for crawling the Google Play Store. It obtains urls for apps and parses and stores data about them. 
	+ Usage: python crawlURLs.py [i|m|a]
	+ Option i is for initial url extraction using a basic alphabetical search algorithm 
	+ Option m is for more url extraction from current urls 
	+ Option a is for getting apps data into the database

##Step four: Get the apk files
* downloadAPKs.py: Once a bit of crawling has been accomplished, this module is used to download the apks, for permission analysis, to the apps folder.
	+ Usage: python downloadAPKs.py

* extractApkFromMobile.py: This code will obtain app apks from a phone connected to your computer. Remember that you need the Android SDK setup on your computer for this and you also need the phone to be connected in debug mode through USB to your computer. If you don't know what that means then please read up on these steps [here](http://www.androidauthority.com/about-android-debug-bridge-adb-21510/).
	+ Usage: python extractApkFromMobile.py

##Step five: Decompile apks and extract permissions
* installApkTool.py: This module is a pre-requisite for apkDecompile.py module's execution. It carries out the setup for ApkTool. 
	+ Usage: python installApkTool.py

* apkDecompile.py: This is the last step where we obtain the last piece of information for gathering information about permissions used by Android apps. This code decompiles the apks from the apps folder and puts the Manifest.xml file for individual app in the data folder. Then it extracts all the permissions used by the app and the permissions provided by the app. If any of the permissions are not present in the permission table, it stores the same in the permission table and stores the permission usage information for the app in the database.
	+ Usage: python apkDecompile.py