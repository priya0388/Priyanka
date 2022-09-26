#!/bin/bash

my_arr=$(cat ./priyanka-scripting-activity-11.txt) #Reading Numner
for number in ${my_arr[@]};
do
	 echo $number
done|sort -nr|uniq #once lopp done sorted number with reverse and not duplicate

