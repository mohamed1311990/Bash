#!/bin/bash
# explain conditions in shell


#comapre 2 numbers
read -p "enter your number1:" number1;
read -p "enter your number2:" number2;
if [ "$number1" -eq "$nubmer2" ]; then
  echo "numbers are equal";
elif [ "$number1" -gt "$nubmer2" ]; then
 echo "number1 greater than number2";
elif [ "$number1" -lt "$number2" ]; then
 echo "number1 less than number2"
fi
