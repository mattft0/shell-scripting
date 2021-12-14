#! /bin/bash
echo "At any time, hit CTRL + C to exit the script"
number_to_guess=$(($RANDOM%100+1))
echo "I have in mind a number in between 1 and 100, can you find it?"

while true; do
	read -p"" "Number giver by user : " guess  # Asks the user for a number and put it in the variable "guess"

	if ! [[ $guess =~ ^[0-9]+$ ]];
	then
		echo "Error, choose a number"

	elif (($guess<$number_to_guess))
	then
		echo "The number to guess is higher"

	elif (($guess>$number_to_guess))
	then
		echo "The number to guess is lower"

	elif (($guess==$number_to_guess))
	then
		echo "You just found the number, it was indeed $number_to_guess"
		exit
	fi
done
