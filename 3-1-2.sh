#!/bin/bash
#Description: 3-1-2
#Write by No.30
#Version: v1.0.0

leftNum=1

while [ $leftNum -le 9 ]
do
	rightNum=1
	while [ $rightNum -le 9 ]
	do
		echo "$leftNum x $rightNum = $(expr $leftNum \* $rightNum)";
		(( rightNum++ ))
	done
	(( leftNum++ ))
done 

exit 0
