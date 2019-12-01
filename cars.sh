#!/bin/bash
#cars.sh
#Kenneth Cho
echo "Welcome to the cars program"
echo "type the number 1 to enter a new car"
echo "type the number 2 to display the list of cars"
echo "type the number 3 to quit and exit the program"
read -r USR
case $USR in
	[1])
		echo "entering a new car"
		echo "enter a year for the car"
		read -r year
		echo "enter the maker of the car"
		read -r make
		echo "enter the model of the car"
		read -r model
		NAME="$year:$make:$model"
		echo "$NAME" >> "My_old_cars"
		sort -n -o "My_old_cars"
		;;
	[2])
		echo "displaying car list"
		cat "My_old_cars"
		;;
	[3])
		exit 1
		;;
esac


