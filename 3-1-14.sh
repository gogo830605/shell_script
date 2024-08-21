#!/bin/bash
#Description: 3-1-14
#Write by No.30
#Version: v1.0.0

read -p "Please enter ID:" id

function checkId ()
{
	echo $id
	if [[ $id =~ ^[A-Z][1|2][0-9]{8}$ ]]
	then
		return 0
	else
		return 1
	fi
}
checkId 
if [ $? -eq 0 ]
then
	echo 'ID pass'
	exit 0
else
	echo 'ID error'
	exit 1
fi

