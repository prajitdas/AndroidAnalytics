import sys
import time
import json

classifiers = ["Nearest Neighbors",
"Linear SVM",
"RBF SVM",
"Decision Tree",
"Random Forest",
"Neural Net",
"AdaBoost",
"Naive Bayes",
"Logistic Regression",
"Dummy"]

def writecsv():
	resultsDict=json.loads(open("processedResults.json","r").read())
	with open("results.csv", "wb") as file:
		for key in resultsDict:
			line=key+","+str(resultsDict[key])
			file.write(line)
			file.write('\n')

def processData():
	resultsDict=json.loads(open("results.json","r").read())
	for classifier in classifiers:
		dataDict=resultsDict[classifier]
		result={}
		for data in dataDict:
			if data.startswith("test") and not data.endswith("Report"):
				result[classifier+","+data.split("test")[1]]=dataDict[data]
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