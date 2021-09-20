#!/bin/bash

read -p "how many dirs you want: " dirs_count
read -p "how many files in each dir: " files_count 

while [ $dirs_count -gt 0 ];
do 
  mkdir dir${dirs_count};   #create dirs

  while [ $files_count -gt 0 ]              #create files
  do
    touch dir${dirs_count}/${files_count}.txt;
    files_count=$(($files_count-1))
  done

  dirs_count=$(($dirs_count-1))
done