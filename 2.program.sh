#!/bin/bash
#this program read 6 integars put it in array and read one another integer  
#then muitple the 6 integers in this number and replace their values
index=0 
array=()
while [ "${#array[@]}" != 6 ];
do
  index=$((index+1))
  read -p " enter integer number $((index)): " number
  array+=($number)
done

read -p "enter your multiple integer: " multipler 

for i in "${array[@]}"
do
  var=$((var+1))
  value=$((i*multipler))
  array[index]=$value
  echo "array index number $var =: " "${array[index]}"
  index=$((index+1))
done
