#!/bin/bash
#Description: 3-1-11
#Write by No.30
#Version: v1.0.0


function checkClass () {
	read -p "Please enter student class :" class
	if [ -z $class ]
    then
        if [ -f StudentsList.txt ]
        then
			class=$(tail -n 1 StudentsList.txt | cut -d ' ' -f 1)
            echo "class is $class"
        else
            checkClass
        fi
    else
        echo "class is $class"
    fi
}

function checkNumber () {
	read -p "Please enter student number :" number
	if [ -z $number ]
    then
        if [ -f StudentsList.txt ]
        then
			lastClass=$(tail -n 1 StudentsList.txt | cut -d ' '     -f 1)
			if [ $class == $lastClass ]
			then
				number=$(($(tail -n 1 StudentsList.txt | cut -d ' ' -f 3) + 1))
			else
				number=1
			fi
        else
            number=1
        fi
    fi

    echo "number is $number"
}

function checkName () {
	read -p "Please enter student name :" name
	if [ -z $name ]
	then
		checkName
	else
		echo "name is $name"
	fi
}

function checkSex () {
	read -p "Please enter student sex (1:boy;0:girl) :" sex
	if [ -z $sex ]
	then
		checkSex
	else
		if [ $sex -eq 0 ] || [ $sex -eq 1 ]
		then
			echo "sex is $sex"
		else
			echo 'Only 0 and 1 can be entered'
			checkSex
		fi
	fi
}

checkClass
checkNumber
checkName
checkSex

echo "$class  $number  $name  $sex" >> StudentsList.txt
exit 0


