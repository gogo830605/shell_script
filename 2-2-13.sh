#!/bin/bash
#Description: 2-213 
#Write by No.30
#Version: v1.0.0

[ -z $2 ] && echo "Example : $0 332 12" && exit 1
if [[ ! $1 =~ ^[0-9]+$ ]] || [[ ! $2 =~ ^[0-9]+$ ]]; then
    echo "only number can be entered"
    exit 1
fi
echo "$1 + $2 = `expr $1 + $2`"

exit 0
