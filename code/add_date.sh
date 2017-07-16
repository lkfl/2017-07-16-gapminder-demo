#!/bin/bash

# Bash script to add the date to the front of a folder of text files
# Lance Leong
# lancelote.leong@gmail.com
# July 15, 2017

echo "Prepending dates to all text files..."
sleep 2

cd data/02_cleaning/cleaning

for file in *.txt
do
	cp -v $file $file-2017-07-15 
done
