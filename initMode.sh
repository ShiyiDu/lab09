#!/bin/bash

for pin in {0..4}
do
	gpio mode $pin out
	gpio write $pin 0
	echo "set pin${pin} as output done!"
done

gpio mode 5 up