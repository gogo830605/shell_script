#!/bin/bash
#Description: 2-1-15
#Write by No.30
#Version: v1.0.0

for ((i=1; i<=8; i++))
do
    for ((j=1; j<=8; j++))
    do
		if [ $i -le $((8 / 2)) ]
		then
			if [ $j -le $(($i - 1)) ] || [ $j -ge $((10 - $i)) ]
			then
				echo -n '  '
			else
        		echo -n '* '
			fi
		else
			if [ $j -le $((8 - $i)) ] || [ $j -ge $(($i + 1)) ]
            then
                  echo -n '  '
            else
                  echo -n '* '
            fi
		fi
    done
	echo ''
done
