#!/bin/bash
text=text.sh
dir=new

touch $text
mkdir -p $dir

if [ -e "$text" ]; then 
   echo "file exist"
   else
   echo "file does not exist"
fi 

if [ -f "$text" ]; then 
   echo "regular fier"
   else
   echo "not reg file"
   
fi 


if [ -d "$dir" ]; then 
   echo "directory"
   else
   echo "not dir"
fi 