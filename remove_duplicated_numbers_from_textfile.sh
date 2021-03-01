#!/bin/bash
# search in word in mutiple files
record_number=2
read -p "Enter file path: " path
if [ ! -e $path ];then
  echo "file is not exist"
 else
  phonelist+=("$(awk -F":" "NR==1"'{print $1}' $path)")
  while [ ! -z $(awk -F":" "NR==$record_number"'{print $1}' $path) ];do
     pointer="$(awk -F":" "NR==$record_number"'{print $1}' $path)"
     for item in "${phonelist[@]}"
     do
        if [ $pointer -eq $item ];then
          # phonelist=( "${phonelist[@]/$item}" )
          break  
        else 
          if [ $pointer -ne $item ] && [ $item -eq ${phonelist[-1]} ]; then
          phonelist+=("$pointer")
          fi
        fi
     done
     record_number=$((record_number+1))
  done
fi
echo "${phonelist[@]}" >  newtest2.txt