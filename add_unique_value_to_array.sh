#!/bin/bash
# add non redundant values to array
array=(1 2)
read -p "add array element: " var
if [ ${#array[@]} -eq 0 ];then
  array+=("$var")
  else
    for item in "${array[@]}"
    do
      if [ $var -eq $item ];then
        break
      else 
        if [ $var -ne $item ] && [ $item -eq ${array[-1]} ]; then
        array+=("$var")
        fi
      fi
    done
fi
echo "${array[@]}"

