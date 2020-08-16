#!/bin/bash
direc=$(pwd)
nfiles=$(ls | wc -l)
function compare {
	[[ $nfiles -eq $guess ]]
	stat=$?
}
stat=1
while [[ $stat -ne 0 ]]
do
	echo "How many files are in the current directory?"
	read guess
	compare
	if [[ $guess -gt $nfiles ]]
	then
		echo "That was kind of high. Give it another shot."
	elif [[ $guess -lt $nfiles ]]
	then
		echo "That was kind of low. Give it another shot."
	fi
done
echo "Congrats! You just guessed the number of files in the current directory ($direc)"
