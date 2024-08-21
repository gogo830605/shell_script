#!/bin/bash
#Description: 3-2-8
#Write by No.30
#Version: v1.0.0


function getDice () {
	dice[1]=$(( RANDOM % 6 + 1 ))
	dice[2]=$(( RANDOM % 6 + 1 ))
	dice[3]=$(( RANDOM % 6 + 1 ))
	dice[4]=$(( RANDOM % 6 + 1 ))

	#dice[1]=3
	#dice[2]=3
	#dice[3]=3
	#dice[4]=3
	echo ${dice[@]}
}

function getPoint () {	

	local point
	for (( i=1; i<=4; i++))
	do
		dice2[1]=${dice[1]}
		dice2[2]=${dice[2]}
		dice2[3]=${dice[3]}
		dice2[4]=${dice[4]}
		unset dice2[$i]

		local checkPonit18=0
		local checkDice=0
		for x in ${dice2[@]}
		do
			if [ ${dice[${i}]} -eq ${x} ]
			then
				checkDice=1
			fi
		done

		if [ $checkDice -eq 0 ]
		then
			point[$i]=${dice[${i}]}
		fi
	done

	totalPoint=0
	if [[ ${dice[*]} == '1 1 1 1' || ${dice[*]} == '2 2 2 2' || ${dice[*]} == '3 3 3 3' || ${dice[*]} == '4 4 4 4' || ${dice[*]} == '5 5 5 5 ' || ${dice[*]} == '6 6 6 6' ]]
	then
		totalPoint=18
	else
		if [ ${#point[@]} -eq 2 ]
		then
			for p in ${point[@]}
			do
				((totalPoint+=p))
			done
		fi
	fi
	echo $totalPoint
}

read -p "total bet : " totalBet

[[ ! $totalBet =~ ^[0-9]+$ ]] && echo 'total bet only number can be enterd' && exit 1

round=1

until [ $totalBet -le 0 ]
do
	echo "Round $round"
	dealerPoint=0
	while [ $dealerPoint -eq 0 ]
	do
		echo 'Dealer throw dice...'
		getDice
		getPoint
		dealerPoint=$(getPoint)
		echo "Dealer point is $dealerPoint"
	done

	read -p "How much do you want to bet : " bet

	playerPoint=0
	while [ $playerPoint -eq 0 ]
	do
	
		read -p 'Type any key to throw dice...'
		getDice
		playerPoint=$(getPoint)
		echo "Your point is $playerPoint"
	done

	if [ $dealerPoint -eq $playerPoint ]	
	then
		result='No loss, No win'
	else
		if [ $dealerPoint -gt $playerPoint ]
		then
			((totalBet-=bet))
			result='You loss'
		else
			((totalBet+=bet))
			result='You win'
		fi
	fi

	((round++))
	echo "$result , Your total bet is $totalBet"
	echo '======================'
done











