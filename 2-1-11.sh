#!/bin/bash
#Description: 2-1-11
#Write by No.30
#Version: v1.0.0

for ((i=1; i<=9; i++))
do
	for ((j=1; j<=9; j++))
	do
		echo "$i x $j = $(($i * $j))"
	done
done
