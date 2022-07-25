#!/bin/bash -x

function is_Palindrome()
{
num=$n
rev=0

while [ $num -gt 0 ]
do
	rem=$(($num%10))
	rev=$(($rev*10+$rem))
	num=$((num/10))
done
echo  "reverse number is $rev"

if (( rev == n ))
then
	echo "is palindrome"
else
	echo "is not palindrome"
fi
}

echo "Enter a number: "
read n
is_Palindrome $n
