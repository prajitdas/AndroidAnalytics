#!/system/bin/sh
strace -o /sdcard/strace.out am start -n com.google.android.apps.fitness/com.google.android.apps.fitness.welcome.WelcomeActivity
#/system/bin/sh
# start the browser
#am start -a android.intent.action.VIEW -d about:blank com.google.android.browser
# wait for it to start
#sleep 2
# attach gdbserver
#cd /data/local/tmp
#PID=`busybox pidof com.google.android.browser` # requires busybox
#gdbserver --attach tcp:31337 $PID