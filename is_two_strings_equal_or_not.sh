#!/bin/bash
# explain conditions in shell

read -p "enter your string1:" string1;
read -p "enter your string2:" string2;
if [ "$string1" == "$string2" ]
then
  echo "words are equal "
else 
  echo " words are not equal"
fi
