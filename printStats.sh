#!/bin/bash
jsonlc=`find . -iname *.json -exec cat {} + | wc -l`
echo "Number of lines of json code: "$jsonlc
pythonlc=`find . -iname *.py -exec cat {} + | wc -l`
echo "Number of lines of python code: "$pythonlc
javalc=`find . -iname *.java -exec cat {} + | wc -l`
echo "Number of lines of java code: "$javalc
xmllc=`find . -iname *.xml -exec cat {} + | wc -l`
echo "Number of lines of xml code: "$xmllc
echo "Total lines of code in project: "$(( $javalc+$xmllc+$pythonlc+$jsonlc ))
