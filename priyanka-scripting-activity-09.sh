#! /bin/bash


echo "Enter the file name"

read filename

if [[ -f $filename ]]
then
	echo "File exist"
	exit 1
else
	touch $filename
fi

