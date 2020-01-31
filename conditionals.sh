#!/bin/bash

# [[ "STRING1" == "STRING2" ]]  --> True if strings are the same
# [[ "STRING1" != "STRING2" ]]  --> True if strings are NOT the same
#
# [[ NUM1 -eq NUM2 ]]  --> True if numbers are equal
# [[ NUM1 -ne NUM2 ]]  --> True if numbers are NOT equal
# [[ NUM1 -lt NUM2 ]]  --> True if NUM1 is less than NUM2
# [[ NUM1 -gt NUM2 ]]  --> True if NUM1 is greater than NUM2
# [[ NUM1 -ge NUM2 ]]  --> True if NUM1 is greater than OR equal to NUM2
#
# [[ THING =~ 'REGEX' ]]  --> True if THING matches the REGEX provided

integertest='^[0-9]+$'

if [[ $1 =~ $integertest ]] && [[ $2 =~ $integertest ]]; then
	if [[ $1 -eq $2 ]]; then
		echo "$1 and $2 are the same numbers!"
	elif [[ $1 -lt $2 ]]; then
		echo "$1 is less than $2!"
	else
		echo "$1 is more than $2!"
	fi
else
	echo "Those aren't numbers, silly!"
fi
