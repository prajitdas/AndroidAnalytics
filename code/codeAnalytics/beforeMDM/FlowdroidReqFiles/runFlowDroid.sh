#!/bin/bash
java -Xmx120g -cp soot-trunk.jar:soot-infoflow.jar:soot-infoflow-android.jar:slf4j-api-1.7.5.jar:slf4j-simple-1.7.5.jar:axml-2.0.jar soot.jimple.infoflow.android.TestApps.Test $1 /tank/users/prajit/code/android-sdk-linux/platforms --aliasflowins --aplength 1 --nopaths
