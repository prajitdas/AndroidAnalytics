import sys
import time
import json

def writecsv():
	resultsDict=json.loads(open("processedResults.json","r").read())
	with open("results.csv", "wb") as file:
		for key in resultsDict:
			line=key+","+str(resultsDict[key])
			file.write(line)
			file.write('\n')

def processData():
	resultsDict=json.loads(open("results.json","r").read())
	dataDict=resultsDict["results"]["TFIDFResults"]
	result={}
	featureType="tfidf"
	for data in dataDict:
		if data.startswith("my"):
			prefix="my"
		else:
			prefix="google"
		grams=data.split("-")[1]
		for ncomps in dataDict[data]:
			for algo in dataDict[data][ncomps]:
				for test in dataDict[data][ncomps][algo]:
					if test.startswith("test") and not test.endswith("Report"):
						result[prefix+","+featureType+","+grams+","+ncomps.split("c")[0]+","+algo+","+test.split("est")[1]]=dataDict[data][ncomps][algo][test]
	dataDict=resultsDict["results"]["NGramResults"]
	ncomps="all"
	for data in dataDict:
		if data.startswith("1"):
			grams="uni"
		elif data.startswith("2"):
			grams="bi"
		else:
			grams="tri"
		for prefix in dataDict[data]:
			for featureType in dataDict[data][prefix]:
				for algo in dataDict[data][prefix][featureType]:
					for test in dataDict[data][prefix][featureType][algo]:
						if test.startswith("test") and not test.endswith("Report"):
							result[prefix+","+featureType+","+grams+","+ncomps+","+algo+","+test.split("est")[1]]=dataDict[data][prefix][featureType][algo][test]
	open("processedResults.json","w").write(json.dumps(result, sort_keys=True, indent=4))

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python readResultsJSON.py')
		sys.exit(1)

	startTime = time.time()
	processData()
	writecsv()
	executionTime = str((time.time()-startTime)*1000)
	print 'Execution time was: '+executionTime+' ms'

if __name__ == "__main__":
	main(sys.argv)