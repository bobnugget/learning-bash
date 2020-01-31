#!/bin/bash

# This script shows how while loops and until loops function


num=0

while [[ $num -lt 5 ]]
do
	echo "Our number is currently $num"
	((num++))
done

echo
echo "Now let's start the downward count..."
echo

until [[ $num -lt 1 ]]
do
	echo "Our number is currently $num"
	let "num=num-1"
done

