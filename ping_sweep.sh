#!/bin/bash

if [ $1 == "" ]
then
echo "Usage: ./ping_sweep.sh [network]
echo "Example: ./ping_sweep.sh 192.168.20
else
for x in {1..254}
do
	ping -c 1 $1.$x | grep "64 bytes" | cut -d " " -f4 | sed 's/.$//'
	test $? -gt 128 && break;
done
fi


