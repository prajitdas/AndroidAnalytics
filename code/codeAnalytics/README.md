#Project: Running Flowdroid
Flowdroid is used for static code analysis.

##Step one: Using Android Studio download all the Android SDK version.
**DO NOT FORGET TO CLICK THE BOX TO DOWNLOAD ALL THE OBSOLETE SDK'S ALSO

## Step two: Setting up other input files
* Make sure soot-trunk.jar:soot-infoflow.jar, soot-infoflow-android.jar, slf4j-api-1.7.5.jar:slf4j-simple-1.7.5.jar and axml-2.0.jar exist. 
* Also make sure that files SourcesAndSinks.txt and EasyTaintWrapperSource.txt exist in the current directory.

## Step three: Run the tool using the following command 
```
java -Xmx4g -cp soot-trunk.jar:soot-infoflow.jar:soot-infoflow-android.jar:slf4j-api-1.7.5.jar:slf4j-simple-1.7.5.jar:axml-2.0.jar soot.jimple.infoflow.android.TestApps.Test "<Application APK>" <platforms directory> >& <outputfile>
   <Application APK>: The Application APK file which need to be statically analyzed. 
   <platforms directory>: Android Platform directory (normally ~/Android/Sdk/platforms)
   <outputfile>: File to store the output of Flowdroid analysis
eg : java -Xmx4g -cp soot-trunk.jar:soot-infoflow.jar:soot-infoflow-android.jar:slf4j-api-1.7.5.jar:slf4j-simple-1.7.5.jar:axml-2.0.jar soot.jimple.infoflow.android.TestApps.Test "TestApps/com.customermobile.att.htc.m8.apk" ~/Android/Sdk/platforms >& com_customermobile_att_htc_m8_apk.txt
``` 