#!/bin/bash
currDir=`pwd`

python runClassification.py 1gram534.json my justc
python runClassification.py 1gram534.json my numoc
python runClassification.py 1gram534.json my tfidf

python runClassification.py 2gram534.json my justc
python runClassification.py 2gram534.json my numoc
python runClassification.py 2gram534.json my tfidf

python runClassification.py 3gram534.json my justc
python runClassification.py 3gram534.json my numoc
python runClassification.py 3gram534.json my tfidf

python runClassification.py 1gram534.json google justc
python runClassification.py 1gram534.json google numoc
python runClassification.py 1gram534.json google tfidf

python runClassification.py 2gram534.json google justc
python runClassification.py 2gram534.json google numoc
python runClassification.py 2gram534.json google tfidf

python runClassification.py 3gram534.json google justc
python runClassification.py 3gram534.json google numoc
python runClassification.py 3gram534.json google tfidf