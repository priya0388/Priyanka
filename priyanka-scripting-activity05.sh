#!/bin/bash

echo "enter the number"
read n


while (true)
do
if [[ $n =~  ^[0-9]+$ ]]
then 
	echo $n|rev
	break

else
	echo "enter another number"
        read n	
fi
done
