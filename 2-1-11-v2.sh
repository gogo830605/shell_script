#!/bin/bash
#Description: 2-1-11
#Write by No.30
#Version: v2.0.0

for ((i=1; i<=7; i+=3))
do
	for ((j=1; j<=9; j++))
	do
		for ((k=0; k<=2; k++))
		do
			echo -n "$((i + k)) x $j = $(((i + k) * $j))	"
		done
		echo ''
	done
	echo ''
done
