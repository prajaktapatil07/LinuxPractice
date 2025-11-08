#!/bin/bash
#number divisible by 3 and 5 but not divisible by 15..same logic for divided by2 even odd numbers etc

#Author prajakta

for i in {1..100}; do
	if ( [ `expr $i % 3` == 0 ] || [ `expr $i % 5` == 0 ] ) && [ `expr $i % 15` != 0 ];
	then echo $i
	fi;
done

