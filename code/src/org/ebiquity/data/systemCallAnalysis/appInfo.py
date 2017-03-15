import subprocess
import json

perm_dict={}
command="adb shell pm list packages -f | awk -F'=' '{ print $NF }' | uniq | sort"
p1=subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
for line in p1.stdout.readlines():
	app=line.strip()
	all_perm_command="adb shell dumpsys package "+app+" | tr -d ' ' | sort | awk '/\.permission\./' | awk -F':' '{ print $1 }' | grep -v '{' | grep -v '\[' | uniq"
	# adb shell dumpsys package com.facebook.katana | tr -d ' ' | sort | awk '/\.permission\./' | awk -F':' '{ print $1 }' | grep -v '{' | grep -v '\[' | uniq
	p2=subprocess.Popen(all_perm_command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
	# app_perm={}
	app_perm=[]
	for newline in p2.stdout.readlines():
		# app_perm[newline.strip()]=0
		app_perm.append(newline.strip())

	# perm_granted_command="adb shell dumpsys package "+app+" | tr -d ' ' | sort | awk '/granted=true/' | awk -F':' '{ print $1 }' | uniq"
	# # adb shell dumpsys package com.facebook.katana | tr -d ' ' | sort | awk '/\.permission\./' | awk -F':' '{ print $1 }' | grep -v '{' | grep -v '\[' | uniq
	# p3=subprocess.Popen(perm_granted_command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
	# for newapp in p3.stdout.readlines():
	# 	app_perm[newapp.strip()]=1
	
	perm_dict[app]=app_perm

open("perm_dict.json","w").write(json.dumps(perm_dict, indent=4, sort_keys=True))