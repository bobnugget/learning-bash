#!/bin/bash

# First, take whatever is given at print one per line
# (remember, $* is all arguments as one string)

echo "You told me:"
for stuff in $*
do
	echo $stuff
done

# Next, let's do a range..
echo
echo "Here is a range of numbers:"
for x in {1..8}
do
	echo $x
done

# And letters...
echo
echo "Here is a range of letters"
for letter in {a..f}
do
	echo $letter
done

# Lastly, a complicated C-style loop:
echo
echo "And here is a loop counter from 0-10 by 2's"
for ((i = 0 ; i <= 10 ; i=i+2))
do
	echo $i
done
