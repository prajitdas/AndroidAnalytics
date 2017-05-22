import json

for jsonFile in ["1gram534.json", "2gram534.json", "3gram534.json"]:
	jsonDict=json.loads(open(jsonFile,"r").read())

	for app in jsonDict.keys():
		if jsonDict[app]["annotated_category"] in ['drink_recipes', 'video_playback', 'lunar_calendar']:
			jsonDict.pop(app)

	catList=[]
	for app in jsonDict.keys():
		catList.append(jsonDict[app]["annotated_category"])

	print jsonDict
#	open(jsonFile,"w").write(json.dumps(jsonDict))