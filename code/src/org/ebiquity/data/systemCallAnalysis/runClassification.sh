#!/bin/bash
currDir=`pwd`
# python initClassification.py masterJsonOutputFile534.json
# python initClassification.py 1gram534.json 1gram
# python initClassification.py 2gram534.json 2gram
# python initClassification.py 3gram534.json 3gram

# Use only 1gram534.json files from now on the json structure has changed
# signature: python initClassification.py input_filename class_label_option feature_type_option
# input_filename: 1gram534.json|2gram534.json|3gram534.json 
# class_label_option: google|my 
# feature_type_option: 	
#	numoc: use frequency of a call for distance computation
#	justc: use just a call for distance computation
#	tfidf: use tf-idf weights of calls for distance computation
python initClassification.py 1gram534.json my justc
# python initClassification.py 1gram534.json my numoc
# python initClassification.py 1gram534.json my tfidf

# python initClassification.py 2gram534.json my justc
# python initClassification.py 2gram534.json my numoc
# python initClassification.py 2gram534.json my tfidf

# python initClassification.py 3gram534.json my justc
# python initClassification.py 3gram534.json my numoc
# python initClassification.py 3gram534.json my tfidf

# python initClassification.py 1gram534.json google justc
# python initClassification.py 1gram534.json google numoc
# python initClassification.py 1gram534.json google tfidf

# python initClassification.py 2gram534.json google justc
# python initClassification.py 2gram534.json google numoc
# python initClassification.py 2gram534.json google tfidf

# python initClassification.py 3gram534.json google justc
# python initClassification.py 3gram534.json google numoc
# python initClassification.py 3gram534.json google tfidf