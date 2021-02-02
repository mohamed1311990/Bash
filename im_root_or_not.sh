#!/bin/bash
# explain conditions in shell

#check if i'm root or not
if [ "$whoami" == "root" ]; then
  echo " i'm root"
else
  echo " i'm not root"
fi