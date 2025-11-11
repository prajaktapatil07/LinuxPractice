#!/bin/bash
marks=59
if [ "$marks" -ge 80 ]
then 
  echo "grade A"
elif [ "$marks" -ge 60 ]
then  
   echo "grade b"
else 
   echo "fail"
fi

#nested if-else
echo "==========="
user="ad"
pass="1234"

if [ "$user" = "admin" ]
 then 
  if [ "$pass" = "1234" ]
   then 
   echo "login success"
   else 
   echo "login failed"
  fi
 else 
 echo "invalid user"
fi


#case statement
echo "====================="
read -p "Please provide day = " day

case $day in
 "Mon") echo "Start of week" ;;
 "Fri") echo "Weekend is neer" ;;
 "Sun") echo "Holiday" ;;
 *) echo "weekday"
 esac