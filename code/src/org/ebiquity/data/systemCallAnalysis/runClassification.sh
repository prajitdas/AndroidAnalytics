#!/bin/bash
python generateCorpus.py
python runClassification.py
git commit -am "uploading results.json"
git push origin master
python readResultsJSON.py
