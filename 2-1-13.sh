#!/bin/bash
#Description: 2-1-13
#Write by No.30
#Version: v1.00


for ((i=8; i>=1; i--))
do
    for ((j=1; j<=$((i-1)); j++))
    do
        echo -n ' '
    done

	for ((j=1; j<=$((8-(i-1))); j++))
    do
    	echo -n '*'
    done 
    echo ""
done
