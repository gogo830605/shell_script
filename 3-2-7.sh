#!/bin/bash
#Description: 3-2-7
#Write by No.30
#Version: v1.0.0

answer=$((1000 + RANDOM % 9000))
insert=''

until [[ $answer == $insert ]]
do
	a=0
	b=0
	read -p "insert your answer : " insert

	[[ ! $insert =~ ^[0-9]{4}$ ]] && echo 'Only four numbers can be entered' && continue

	bAnswer=$answer
	bInsert=$insert
	# 比對 A 的數量
	for (( i=0; i<4; i++ ))
	do
		if [ ${insert:$i:1} -eq ${answer:$i:1} ]
		then
			bAnswer=${bAnswer/${answer:$i:1}/}
			bInsert=${bInsert/${insert:$i:1}/}
			((a++))
		fi
	done

	# 比對 B 的數量
	for (( i=0; i<${#bInsert}; i++ ))
	do
		currentChar=${bInsert:$i:1}
    	if [[ $bAnswer == *$currentChar* ]]; then
        	((b++))
        	# 删除 $bAnswer 中的匹配字符
        	bAnswer=${bAnswer/${currentChar}/}
    	fi
	done

	echo "${a}A${b}B"	
done 

echo 'Congratulation!!!'
exit 0
