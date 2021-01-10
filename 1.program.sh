#!/bin/bash
#this program read 10 integars and get the average 
index=0 
array=()
while [ "${#array[@]}" != 10 ];
do
  index=$((index+1))
  read -p " enter integer number $((index)): " number
  array+=($number)
done

for i in "${array[@]}"
do
  sum=$((i+sum))
done
echo "average is : " $(($sum/10))