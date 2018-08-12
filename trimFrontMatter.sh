#!/bin/bash

# this script trims the front matter from project guttenberg books

for file in ./*.txt; do
	sed -i '/-----------------------------------------------------------------/,$!d' $file
done
