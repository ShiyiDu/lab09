#!/bin/bash

count=0

while((1))
do
	let "now=$(gpio read 5)"
	if [ $now == $last ]; then
		sleep 0.01s
	else
		if [ $now == 1 ]; then
			echo "button released"
			let "last=$now"
		else
			((count++))
			./setbits.sh $count
			echo "button pressed"
			let "last=$now"
		fi
	fi
	
done