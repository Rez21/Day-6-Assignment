#!/bin/bash -x
read -p "Lower bound number: " low
read -p "Upper bound number: " up

for (( n= low; n<=up; n++ ))
do
	 for((i=2; i<=$n/2; i++))
		do
  		ans=$(( n%i ))
  		if [ $ans -eq 0 ]
  		then
    		echo "$n is not a prime number."
    		exit 0
  		fi
	  done
echo "$n is a prime number."
done
