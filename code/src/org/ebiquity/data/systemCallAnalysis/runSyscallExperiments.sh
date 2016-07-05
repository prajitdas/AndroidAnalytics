#!/usr/bin/bash
#Temporary solution to run the experiment for 1 app a 100 times and compare
for i in {1..300}
do
    python syscallAnalysis.py prajitdas 15irk8yvf3 fake google
done
