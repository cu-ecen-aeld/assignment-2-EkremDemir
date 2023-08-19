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


#Refer the inputs like below
writefile=$1
writestr=$2

#Create a path for the file if it does not exist

#extract the path of the file name
dir_name=$(dirname "$writefile")

if [[ ! -d "$dir_name" ]]; then
    #create dir
    mkdir -p "$dir_name"
    #check status if fie created or not
    if [[ $? -ne 0 ]]; then
        echo "ERROR: Could not create directory in $dir_name "
        exit 1
    fi
fi

#create file the overwrite the specified test by usimg redirect
echo "$writestr" >> "$writefile"

#check status of above operation

if [[ $? -ne 0 ]]; then
    echo "ERROR: Could not create file in specified path $writefile "
    exit 1
fi



