#!/bin/bash 
a="prajakta"
cdb="patil"
c="$a $b" 
echo "$c"

d=${c:9}
echo "length ${#c}"
echo "${c#*t}"