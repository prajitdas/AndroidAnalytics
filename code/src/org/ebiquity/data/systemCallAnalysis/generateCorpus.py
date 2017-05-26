# -*- coding: utf-8 -*-
"""
Created on Mon May 22 06:11:30 2017

@author: Prajit
"""
import json
import os

appDict = json.loads(open("toprocess.json","r").read())
data={}
corpus=[]
my=[]
google=[]
for appPkgName in appDict["packages"]:
	appDataDict = json.loads(open(os.path.join(os.path.join(os.getcwd(),"uni-bi-tri-seq-jsons"),appPkgName+".json"),'r').read())
	if appDataDict[appPkgName]["annotated_category"] not in ['drink_recipes', 'video_playback', 'lunar_calendar']:
		my.append(appDataDict[appPkgName]["annotated_category"])
		google.append(appDataDict[appPkgName]["google_play_category"])
		input_list = appDataDict[appPkgName]["syscalls"]
		corpus.append(' '.join(input_list))

data["my"] = my
data["google"] = google
data["corpus"] = corpus

open("corpus.json","w").write(json.dumps(data))
print "done generating corpus"
