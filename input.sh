#!/bin/bash

# NOTE: The "-p" test will evaluate as true if the file exists and is a pipe,
#       so if data is piped into STDIN, /dev/stdin will show as true.
#       The "-f" test will evaluate as true if the file exists and is regular file.
#	So if STDIN is given as a file, this will show as true.

if [[ -p /dev/stdin ]] || [[ -f /dev/stdin ]]; then
	echo "I received input from stdin"
	read info
else
	echo "I didn't receive anything from stdin"
	echo
	read -p "So give me data: " info
fi

echo
echo
echo "The data you provided is: $info"
