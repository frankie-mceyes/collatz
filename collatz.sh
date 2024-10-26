#!/bin/bash

show_output=false
number=$1
count=$2

for arg in "$@"; do
    case $arg in
        --show)
            show_output=true
            ;;
        *)
            if [[ -z $number ]]; then
                number=$arg
            elif [[ -z $count ]]; then
                count=$arg
            fi
            ;;
    esac
done


echo "Starting from $number"

while [[ $count -gt 0 ]]; do
    starter=$number
    steps=0

    while [[ $number -ne 1 ]]; do
        if (( number % 2 == 0 )); then
            number=$(( number / 2 ))
        else
            number=$(( number * 3 + 1 ))
        fi
        echo -en "\r\033[K$number"
	if $show_output; then
            sleep 0.01
        fi
        steps=$(( steps + 1 ))
    done

    echo -en "\r\033[KFrom $starter to 1 in $steps steps!\n"
    number=$(( starter + 1 ))
    count=$(( count - 1 ))
done

