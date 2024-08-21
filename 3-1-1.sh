#!/bin/bash
#Description: 3-1-1
#Write by No.30
#Version: v1.0.0

read -p "Please enter File-Name:" varFileName

[ -e $varFileName ] && echo "/'$varFileName/' : No such file or directory" && exit 1

noLine=1

while read txtLine
do
	echo -e "\t $noLine $txtLine"
	let noLine=$noLine+1
done < $varFileName

exit 0
