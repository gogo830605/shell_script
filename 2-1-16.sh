#!/bin/bash
#Description: 2-1-16
#Write by No.30
#Version: v1.0.0

for ((i=1; i<=7; i+=2))
do
    for ((j=1; j<=$(((7 - $i) / 2)); j++))
    do
		echo -n '  '
    done

	for ((j=1; j<=$i; j++))
    do
        echo -n '* '
    done

	for ((j=1; j<=$(((7 - $i) / 2)); j++))
    do
        echo -n '  '
	done

	echo ''
done

for ((i=5; i>=1; i-=2))
do
    for ((j=1; j<=$(((7 - $i) / 2)); j++))
    do
        echo -n '  '
    done

    for ((j=1; j<=$i; j++))
    do
        echo -n '* '
    done

    for ((j=1; j<=$(((7 - $i) / 2)); j++))
    do
        echo -n '  '
    done

    echo ''
done

