#!/bin/bash
#Description: 2-2-9
#Write by No.30
#Version: v1.0.0

read -p "'square meters' = 1, 'Ping' = 2 : " unit

if [ $unit -eq 1 ]
then
	read -p 'how much square meters : ' count
	echo "$( echo "$count * 0.3025" | bc) ping"
else
	read -p 'how much ping : ' count
	echo "$( echo "$count * 3.3058" | bc) square meters"
fi
