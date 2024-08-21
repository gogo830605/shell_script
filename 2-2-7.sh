#!/bin/bash
#Description: 2-2-7
#Write by No.30
#Version: v1.0.0

if [ $# -ne 2 ]
then
	echo "value errr!! ex: $0 174 60"
	exit 1
fi

height=$(echo "scale=2; $1/100" | bc)
weight=$2
bmi=$(echo "scale=2; $weight / ($height ^ 2)" | bc)

echo $bmi
