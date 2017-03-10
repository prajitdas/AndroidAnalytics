#!/bin/bash
currDir=`pwd`
# python initClassification.py masterJsonOutputFile534.json
python initClassification.py 1gram534.json 1gram
python initClassification.py 2gram534.json 2gram
python initClassification.py 3gram534.json 3gram
