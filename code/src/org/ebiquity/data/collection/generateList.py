import json

data={}
data['appNames'] = ['com.scientific.calc']

with open('applist.json', 'w') as outfile:
    json.dump(data, outfile)