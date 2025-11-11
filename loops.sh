#!/bin/bash
#FOR LOOP
for i in 1 2 3 4 5
do 
 echo "hello"
done
echo "-----------------------------"
for ((i=1; i<=5; i++))
do
  echo "hi"
done


#WHILE LOOP
echo "======================="
count=1
while [ $count -le 5 ];
do 
 echo "count is $count"
 count=$(($count + 1))
done

#UNTIL LOOP
echo "======================="
n=1
until [ $n -gt 5 ]
do 
  echo "value is $n"
  n=$((n + 1))
done

# BREAK AND CONTINUE
echo "======================="
for i in {1..10}
do 
 if [ $i -eq 3 ] 
 then echo "break at $i"
 break
fi 
echo "number is $i"
done

echo "============="


for i in {1..10}
do 
 if [ $i -eq 3 ] 
 then echo "skipping $i"
 continue
fi 
echo "number is $i"
done
