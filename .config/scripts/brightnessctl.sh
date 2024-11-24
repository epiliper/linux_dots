#!/bin/bash

current=$(ddcutil getvcp 10 | awk '{gsub(",", ""); print $9}')
cmd=$1

if [ "$cmd" = "1" ]; then
	ddcutil setvcp 10 $((current-20))
else
	ddcutil setvcp 10 $((current+20))

fi
