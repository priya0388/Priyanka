#! /bin/bash

count=0
arr_num=()
while [[ $count -le 10 ]]
do
	echo "Enter number"
   read number
   if [[ !($number =~ [0-9]) ]];
   then
	   echo "Enter only number"
	   exit 1
   fi
   # Adding integer to an array

   arr_num+=($number)
   count=$((count+1))
   if [[ $count -ge 5 && $count -le 10 ]] 
   then
	 echo "You want to stop or continue"
	 read action
	 val=$(echo "${action}" |tr '[:upper:]' '[:lower:]')
	 if [[ $val == "stop" ]]
	 then
		 break
         fi
   fi
done

echo "The number you entered is ${arr_num[*]}"
mul=1
add=0
max=${arr_num[0]}
min=${arr_num[0]}

total_number=${#arr_num[@]}
for i in "${arr_num[@]}"
do
   mul=$((mul*$i))
   add=$((add+$i))
   if [[ $i -ge $max ]]
   then
   max=$i
   fi

   if [[ $i -le $min ]]
   then
   min=$i
   fi
done
avg=$((add/total_number))

echo "The addition of the number is $add"
echo "The product of number is $mul"
echo "The avg of number is $avg"
echo "The max number is $max"
echo "The min number is $min"
