#! /bin/bash
echo "At any time , hit CTRL + C to exit the script"
number_to_guess=$(($RANDOM%100))
while ((guess != number_to_guess)) ; do
	read -p "" guess # Asks the user for a number and put it in the variable "guess"
	echo Number given by user : $gues
	
	if ! (($guess =~[0-9]))
	then
		echo "Erreur, choose a number"

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
