#! /bin/bash


echo "Enter the file name"
read filename
echo "Number of file to write"
read number

if [[ -f $filename ]]
then
echo "File exist, exiting with error"
exit 1
else
touch $filename
fi

RANDOM=$$

for (( i=1; i<=$number; i++ ))
do
echo $i
echo $RANDOM >> $filename
done

