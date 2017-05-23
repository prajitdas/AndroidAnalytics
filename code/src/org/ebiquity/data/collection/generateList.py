import json

data={}
data['appNames'] = ['air.Earlycouintingskills']

with open('applist.json', 'w') as outfile:
    json.dump(data, outfile)