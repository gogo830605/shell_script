#!/bin/bash
#Description: 2-1-14
#Write by No.30
#Version: v1.0.0

for ((i=1; i<=8; i++))
do
    for ((j=1; j<=8; j++))
    do
		if [ $i -ge 2 ] && [ $i -le 7 ] && [ $j -ge 2 ] && [ $j -le 7 ]
		then
			echo -n '  '
		else
        	echo -n '* '
		fi
    done
	echo ''
done
