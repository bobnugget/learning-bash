#!/bin/bash

# Get range
echo "Give the range to check (1-255 recommended):"
read -p "10.10.10." ipstart
read -p "10.10.10." ipend

# Populate ARP table
for (( i=$ipstart ; i<=$ipend ; i++ ))
do
	ping -c 1 10.10.10.$i > /dev/null 2>&1 &
done

# Allow pings to finish, while entertaining the user
echo "Let's allow the computer to do all those pings..."
x=5
while [[ x -gt 0 ]]
do
	sleep 1
	echo "T-minus $x"
	let x=x-1
done

# Put arp results into file for parsing
arp -a | cut -d " " -f 4  > results.txt


# Display results
echo "Here are the MAC addresses I found in our network:"
grep ":" results.txt
