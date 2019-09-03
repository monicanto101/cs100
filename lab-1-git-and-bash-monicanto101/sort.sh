#!/bin/sh

declare -a nums=(8 14 -12 4 126 309 -23)
temp=-1
i=0
j=0

for (( i=0; i < ${#nums[@]} - 1; i++ ))
do
	for (( j=0; j < ${#nums[@]} - $i - 1; j++ ))
	do
		if [ ${nums[$j]} -gt ${nums[$j + 1]} ]; then
			temp=${nums[$j + 1]}
			nums[$j + 1]=${nums[$j]}
			nums[$j]=$temp
		fi
	done
done

echo "\nSorted:"
for (( i=0; i < ${#nums[@]}; i++ ))
do
	echo ${nums[$i]}
done