#!/bin/bash
#Description: 3-2-5
#Write by No.30
#Version: v1.0.0


while true
do
	hostList=$(cat hostCheckList.txt)
	echo $hostList
	
	for ip in $hostList
	do
		ping -c 1 -i 0.2 -W 1 $ip &> /dev/null
		if [ $? -eq 1 ]
		then
			echo "host : ${ip} error"
			echo "$(date +"%Y-%m-%d %H:%M:%S") host : ${ip} error" >> hostError.txt
		fi
	done
	
	sleep 5
done

exit 0
