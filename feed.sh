#!/bin/bash

count=0

while [ true ];
do
	sleep 2 # This is vitally important
	echo "feed" > /dev/horo
	cat /dev/horo
	count=$count+1
        if [ count == 30 ];
        then
		sleep 2
 		echo "stats" > dev/horo
		echo "\n\n----------\n"
		cat /dev/horo
		echo "\n----------\n\n"
	fi
done
