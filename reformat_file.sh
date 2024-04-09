#!/bin/bash

file_name=$1

cat $file_name | tr '[:upper:]' '[:lower:]' | sed -e 's/[[:punct:]]//g' | sed -e 's/\t\t*/\n/g' | sed -e 's/  */\n/g' | grep -v -e '^$' | sort > sorted_file_$file_name

#sort sorted_file_$file_name > sorted_file_$file_name
