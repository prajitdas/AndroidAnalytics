import sys
import time
import json
import math

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
	resultsDict=json.loads(open("processedResultsAnnotated.json","r").read())
	with open("resultsAnnotated.csv", "wb") as file:
		for key in resultsDict:
			line=key+","+str(resultsDict[key])
			file.write(line)
			file.write('\n')
	resultsDict=json.loads(open("processedResultsGoogle.json","r").read())
	with open("resultsGoogle.csv", "wb") as file:
		for key in resultsDict:
			line=key+","+str(resultsDict[key])
			file.write(line)
			file.write('\n')

def processData(filename):
	outputFilename = "processedResults"+filename.split("results")[1]
	resultsDict=json.loads(open(filename,"r").read())
	result={}
	for classifier in classifiers:
		print "Processing results for:", classifier, "for:", filename.split("results")[1]
		dataDict=resultsDict[classifier]
		for data in dataDict:
			if data.startswith("test") and not data.endswith("Report"):
				if not data.endswith("ConfMat"):
					result[classifier+","+data.split("test")[1]]=dataDict[data]
				else:
					confMat = dataDict[data]
					lengthToProcess = len(dataDict[data])
					loopLength = int(round(math.sqrt(lengthToProcess)))
					indexJ = 0
					listofNums = []
					print lengthToProcess, loopLength
					for indexI in range(0,lengthToProcess):
						if indexJ < loopLength:
							listofNums.append(confMat[indexI])
							# print confMat[indexI]
							indexJ += 1
						else:
							result[classifier+","+data.split("test")[1]+str(indexI)] = listofNums
							indexJ = 0
							listofNums = []
							listofNums.append(confMat[indexI])
	open(outputFilename,"w").write(json.dumps(result, sort_keys=True, indent=4))
	# resultsDict=json.loads(open("resultsGoogle.json","r").read())
	# result={}
	# for classifier in classifiers:
	# 	print "Processing results for: ", classifier
	# 	dataDict=resultsDict[classifier]
	# 	for data in dataDict:
	# 		if data.startswith("test") and not data.endswith("Report"):
	# 			result[classifier+","+data.split("test")[1]]=dataDict[data]
	# open("processedResultsGoogle.json","w").write(json.dumps(result, sort_keys=True, indent=4))

def main(argv):
	if len(sys.argv) != 1:
		sys.stderr.write('Usage: python readResultsJSON.py')
		sys.exit(1)

	startTime = time.time()
	processData("resultsAnnotated.json")
	processData("resultsGoogle.json")
	writecsv()
	executionTime = str((time.time()-startTime)*1000)
	print 'Execution time was: '+executionTime+' ms'

if __name__ == "__main__":
	main(sys.argv)