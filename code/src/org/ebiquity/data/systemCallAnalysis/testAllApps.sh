# Apps to test
sh automatingStrace.sh goldenshorestechnologies.brightestflashlight.free.apk
# syscall stats from cat goldenshorestechnologies.brightestflashlight.free.out  | cut -f1 -d"(" | sort | uniq -c
# #OfCalls	syscall
# 568	clock_gettime
# 480	ioctl
# 245	writev
# 222	futex
# 199	mmap2
# 135	rt_sigprocmask
# 122	openat
# 100	close
# 89	munmap
# 81	pread64
# 73	mprotect
# 72	getuid32
# 72	recvfrom
# 40	prctl
# 40	sendto
# 37	epoll_pwait
# 34	clone
# 30	madvise
# 29	fstatat64
# 24	write
# 23	read
# 20	_llseek
# 11	fstat64
# 9	dup
# 6	gettimeofday
# 5	--- SIGSEGV {si_signo=SIGSEGV, si_code=SEGV_MAPERR, si_addr=0} ---
# 5	epoll_ctl
# 5	rt_sigreturn
# 4	fcntl64
# 3	getsockopt
# 2	faccessat
# 1	+++ killed by SIGKILL +++
# 1	readlinkat

	
#Permissions requested
# uses-permission: name='android.permission.CAMERA'
# uses-permission: name='android.permission.FLASHLIGHT'
# uses-permission: name='android.permission.STATUS_BAR'
# uses-permission: name='android.permission.WAKE_LOCK'
# uses-permission: name='android.permission.ACCESS_COARSE_LOCATION'
# uses-permission: name='android.permission.ACCESS_FINE_LOCATION'
# uses-permission: name='android.permission.ACCESS_NETWORK_STATE'
# uses-permission: name='android.permission.INTERNET'
# uses-permission: name='android.permission.READ_PHONE_STATE'
# uses-permission: name='android.permission.WRITE_EXTERNAL_STORAGE'
# uses-permission: name='android.permission.ACCESS_WIFI_STATE'
# uses-permission: name='com.android.launcher.permission.INSTALL_SHORTCUT'
# uses-permission: name='com.android.launcher.permission.UNINSTALL_SHORTCUT'
# uses-permission: name='com.android.launcher.permission.READ_SETTINGS'
# uses-permission: name='com.htc.launcher.permission.READ_SETTINGS'
# uses-permission: name='com.motorola.launcher.permission.READ_SETTINGS'
# uses-permission: name='com.motorola.dlauncher.permission.READ_SETTINGS'
# uses-permission: name='com.fede.launcher.permission.READ_SETTINGS'
# uses-permission: name='com.lge.launcher.permission.READ_SETTINGS'
# uses-permission: name='org.adw.launcher.permission.READ_SETTINGS'
# uses-permission: name='com.motorola.launcher.permission.INSTALL_SHORTCUT'
# uses-permission: name='com.motorola.dlauncher.permission.INSTALL_SHORTCUT'
# uses-permission: name='com.lge.launcher.permission.INSTALL_SHORTCUT'

#Privacy Grade analysis: Grade B
# THIRD PARTY LIBRARIES USED BY THIS APP 
# LIBRARY	USAGE
# Jumptap	Targeted ad libraries allows developers to monetize their app by allowing their app to serve advertisments to app users.
# Millennialmedia	Targeted ad libraries allows developers to monetize their app by allowing their app to serve advertisments to app users.

#sh automatingStrace.sh com.rvappstudios.flashlight.apk
# syscall stats from cat com.rvappstudios.flashlight.out | cut -f1 -d"(" | sort | uniq -c
# #OfCalls	syscall
# 17581	clock_gettime
# 4904	futex
# 3538	recvfrom
# 2869	write
# 2706	getuid32
# 2541	epoll_pwait
# 2150	ioctl
# 664	read
# 362	sendto
# 317	writev
# 275	rt_sigprocmask
# 231	mmap2
# 193	close
# 172	openat
# 136	pread64
# 67	gettimeofday
# 65	sched_yield
# 36	madvise
# 24	sendmsg
# 22	faccessat
# 20	epoll_ctl
# 20	fstatat64
# 15	munmap
# 13	fcntl64
# 13	mprotect
# 12	clone
# 10	dup
# 6	nanosleep
# 3	prctl
# 2	fstat64
# 2	fsync
# 2	getsockopt
# 2	socketpair
# 1	--- SIGRT_1 {si_signo=SIGRT_1, si_code=SI_TKILL, si_pid=2111, si_uid=10056} ---
# 1	+++ killed by SIGKILL +++  
# 1	readlinkat
# 1	rt_sigreturn
# 1	ugetrlimit


#Permissions requested
# uses-permission: name='android.permission.CAMERA'
# uses-permission: name='android.permission.ACCESS_WIFI_STATE'
# uses-permission: name='android.permission.ACCESS_COARSE_LOCATION'
# uses-permission: name='android.permission.ACCESS_FINE_LOCATION'
# uses-permission: name='android.permission.RECORD_AUDIO'
# uses-permission: name='android.permission.SYSTEM_ALERT_WINDOW'
# uses-permission: name='android.permission.WRITE_EXTERNAL_STORAGE'
# uses-permission: name='android.permission.INTERNET'
# uses-permission: name='android.permission.ACCESS_NETWORK_STATE'
# uses-permission: name='com.google.android.providers.gsf.permission.READ_GSERVICES'
# uses-permission: name='com.android.vending.BILLING'
	
#Privacy Grade analysis: Grade D
# THIRD PARTY LIBRARIES USED BY THIS APP 
# LIBRARY	USAGE
# Flurry	Mobile analytics libraries allow app developers to gather usage data about their app. It might gather data on how often an app user uses the app or in what ways is the app being used. Say for example usage data on a map app could be exemplified by a user using the map app twice a day in the morning and evening to find the quickest way to and from work with regards of the effects of traffic on certain roads.
# Facebook	Social networking services libraries allow app developers to utilize services from social networking sites such as Facebook, Twitter, etc.
# Twitter4j	Social networking services libraries allow app developers to utilize services from social networking sites such as Facebook, Twitter, etc.
# Chartboost	Targeted ad libraries allows developers to monetize their app by allowing their app to serve advertisments to app users.
# Inmobi	Targeted ad libraries allows developers to monetize their app by allowing their app to serve advertisments to app users.
# Millennialmedia	Targeted ad libraries allows developers to monetize their app by allowing their app to serve advertisments to app users.
# Mopub	Targeted ad libraries allows developers to monetize their app by allowing their app to serve advertisments to app users.

# sh automatingStrace.sh com.andronicus.torchscreenonly.apk
# sh automatingStrace.sh com.surpax.ledflashlight.panel.apk
# sh automatingStrace.sh com.asus.flashlight.apk
