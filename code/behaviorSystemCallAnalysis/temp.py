# -*- coding: utf-8 -*-
"""
Spyder Editor

This is a temporary script file.
"""
#import json
#import databaseHandler as db
#import sys

from sklearn import svm
import numpy as np
X = np.asarray([[0, 0], [1, 1], [1, 0], [0, 1]])
y = np.asarray([0, 1, 1, 0])
clf = svm.SVC()
clf.fit(X, y)
clf.predict([[2., 2.]])
print X.shape, y.shape
#appDict=json.loads(open("1gram534.json","r").read())
#print dic
##dic=json.loads(open("newcategory.json",'r').read())
#
#for key in dic.keys():
#    if "annotated_category" in dic[key]:
#        if dic[key]["annotated_category"] == '':
#            print key
#
#print dic.keys()
#print len(dic.keys())

#dbHandle=db.dbConnectionCheck()
#cursor=dbHandle.cursor(buffered=True)
#appList=appDict["packages"]
#for app in appList:
#    sqlStatement="SELECT c.name as category FROM appdata a, appcategories c WHERE a.app_category_id = c.id AND a.app_pkg_name = '"+app+"';"
#    try:
#        cursor.execute(sqlStatement)
#        playCategory=cursor.fetchone()[0]
#        insertStatement="INSERT INTO annotations (app_pkg_name, google_play_category) VALUES ('"+app+"', '"+playCategory+"');"
#        print insertStatement
#        sys.exit(1)
#    except:
#        print('Unexpected error in test:'+str(sys.exc_info()[0]))
#        raise
#
#cursor.close()
#dbHandle.close() #DB Close 
#
#callList=[]
#minval=-sys.maxint-1
#for app in appDict:
#	if len(appDict[app]["syscallNGrams"]) > minval:
#		minval = len(appDict[app]["syscallNGrams"])
#		callList = appDict[app]["syscallNGrams"].keys()
#
#syscallList=json.loads(open("knownSyscalls.json","r").read())["knownSyscalls"]
#print len(syscallList)
#
#syscallVector=['_exit', '_llseek', 'accept', 'arch_prctl', 'bind', 'brk', 'chdir', 'clock_gettime', 'clone', 'close', 'connect', 'dup', 'epoll_create', 'epoll_ctl', 'epoll_pwait', 'eventfd', 'execve', 'exit_group', 'faccessat', 'fchmod', 'fchmodat', 'fcntl', 'fdatasync', 'flock', 'fstat', 'fstatat', 'fsync', 'ftruncate', 'futex', 'getcwd', 'getdents', 'getegid', 'geteuid', 'getgid', 'getpgid', 'getppid', 'getpriority', 'getrlimit', 'getsockname', 'getsockopt', 'gettid', 'gettimeofday', 'getuid', 'inotify_add_watch', 'inotify_init', 'inotify_rm_watch', 'ioctl', 'kill', 'listen', 'lseek', 'madvise', 'mincore', 'mkdirat', 'mmap', 'modify_ldt', 'mprotect', 'msync', 'munmap', 'nanosleep', 'newfstatat', 'openat', 'personality', 'pipe', 'ppoll', 'prctl', 'pread', 'pselect', 'pwrite', 'read', 'readlinkat', 'recvfrom', 'recvmsg', 'renameat', 'restart_syscall', 'rt_sigaction', 'rt_sigprocmask', 'rt_sigreturn', 'rt_sigtimedwait', 'sched_getparam', 'sched_getscheduler', 'sched_yield', 'sendmsg', 'sendto', 'set_thread_area', 'set_tid_address', 'setitimer', 'setpgid', 'setpriority', 'setresuid', 'setrlimit', 'setsockopt', 'shutdown', 'sigaction', 'sigaltstack', 'sigreturn', 'socket', 'socketpair', 'statfs', 'tgkill', 'ugetrlimit', 'umask', 'uname', 'unlinkat', 'utimensat', 'wait', 'write', 'writev']
#print len(syscallVector)
#
##print len(set(['clock_gettime', 'setitimer', 'rt_sigaction', 'epoll_ctl', 'rt_sigtimedwait', 'ugetrlimit', 'inotify_init', 'setsockopt', 'pselect', 'getpgid', 'brk', 'flock', 'futex', 'newfstatat', 'tgkill', 'openat', 'epoll_create', 'getdents', 'getpriority', 'sigreturn', 'rt_sigprocmask', 'inotify_add_watch', 'arch_prctl', 'ppoll', 'faccessat', 'setpriority', '_llseek', 'sigaltstack', 'recvmsg', 'inotify_rm_watch', 'sched_getparam', 'set_tid_address', 'mprotect', 'setrlimit', 'personality', 'fcntl', 'getsockopt', 'restart_syscall', 'modify_ldt', 'fchmodat', 'setpgid', 'sched_yield', 'clone', 'getcwd', 'sched_getscheduler', 'rt_sigreturn', 'ioctl', 'exit_group', 'nanosleep', 'sigaction', 'getrlimit', 'unlinkat', 'wait', 'set_thread_area', 'readlinkat', 'chdir', 'renameat', 'madvise', 'setresuid', 'fstatat', 'eventfd', 'gettimeofday', 'epoll_pwait', 'utimensat', 'statfs', '_exit', 'mkdirat', 'sendmsg']))
#
#modifiedsyscallList=list(set(syscallList+syscallVector))
#print set(modifiedsyscallList).difference(set(syscallVector))
#print len(modifiedsyscallList)

#aDict = {}
#aDict["knownSyscalls"] = sorted(modifiedsyscallList)
#open("knownSyscalls.json","w").write(json.dumps(aDict, indent=4))