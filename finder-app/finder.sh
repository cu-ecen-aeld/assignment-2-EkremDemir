#!/bin/bash

#Check first and second elemnts are exist or not
if [[ -z "$1" ]]; then
	echo "ERROR: the directory is not specified"
	exit 1
fi

if [[ -z "$2" ]]; then
	echo "ERROR: the string is not specified"
	exit 1
fi

if [[ ! -d $1 ]]; then
	echo "The Specified directory $1 is not directory on th file system"
fi


#Refer the inputs like below
filesdir=$1
searchstr=$2

#find the number of files on the specified directort
number_of_files=$(find "$filesdir" -type f | wc -l)

#find the number of matching lines found in respective files

number_of_matching=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $number_of_files and the number of matching lines are $number_of_matching "

var=$(grep -r "$searchstr" "$filesdir")
echo $var
