import json
import sys

# Returns True if the original syscall dict had more variety of calls or more number of total calls
# Presence of more syscalls (or words) has higher significance
# Presence of number of syscalls (or words) has lower significance
def hasMoreCallsSyscallDict(origSyscallDict,newSyscallDict):
	# origTotalCalls = 0
	# newTotalCalls = 0
	# for freq in origSyscallDict.itervalues():
	# 	origTotalCalls += freq
	# for freq in newSyscallDict.itervalues():
	# 	newTotalCalls += freq
	if len(origSyscallDict) >= len(newSyscallDict):
		return False
	return True

dict1 = json.loads(open('masterJsonOutputFile.json','r').read())
dict2 = json.loads(open('masterJsonOutputFileJust50.json','r').read())

for app2 in dict2.iterkeys():
	if app2 in dict1:
		if hasMoreCallsSyscallDict(dict1[app2],dict2[app2]) == True:
			dict1[app2] = dict2[app2]
	else:
		dict1[app2] = dict2[app2]

open('masterJsonOutputFile.json','w').write(json.dumps(dict1,indent=4,sort_keys=True))