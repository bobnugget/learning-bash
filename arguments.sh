#!/bin/bash

# Remember:
# $0 = name of the running script
# $# = total number of parameters supplied
# $* = all parameters as a single string
# $1 = first parameter
# $2 = second parameter  (etc, etc, etc)

echo
echo
echo "My name is $0, and I always listen."
echo
echo "You told me $# things, the first two were: $1 and $2"
