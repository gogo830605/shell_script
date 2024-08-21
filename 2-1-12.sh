#!/bin/bash
#Description: 2-1-12
#Write by No.30
#Version: v1.00

for ((i=8; i>=1; i--))
do
	for ((j=1; j<=i; j++))
  	do
		echo -n '*'
	done
	echo ""
done
