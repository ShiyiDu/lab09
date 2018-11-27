#!/bin/bash

last=1

while((1))
do
	let "now=$(gpio read 5)"
	if [ $now == $last ]; then
		sleep 0.02s
	else
		if [ $now == 1 ]; then
			echo "button released"
			let "last=$now"
		else
			echo "button pressed"
			let "last=$now"
		fi
	fi
	
done