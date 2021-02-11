#!/bin/bash
# explain conditions in shell


#check if file exist or not
read -p "enter file path:" path 
if [ -a "$path" ]; then
  echo " file exist"
else
  echo " file not found"
fi
