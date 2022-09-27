#! /bin/bash

echo "Enter 2 numbers a and b"

read a
read b

if [[ !($a =~ ^[0-9]+$) ]]
then
    echo "$a is not a Integer"
    exit 1
fi

if [[ !($b =~ ^[0-9]+$) ]]
then
  echo "$b is not a Integer"
  exit 1
fi

if (( $a > $b ))
then
	echo "True"
else
	echo "false"
fi
diff=$((a-b))
echo "The  difference is $diff"
