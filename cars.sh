#! /bin/bash
#cars.sh
#Nicholas Mirchandani

clear #Clears are used to keep only relevant details on screen
while true
do
	echo -e "COMMANDS"
	echo -e --------------------
	echo -e "1) Add a car"
	echo -e "2) List the cars"
	echo -e "3) Quit the Program"
	echo -e --------------------
	echo -e #blank echo's are for formatting
	read -n 1 -s -p "" command #Requires 1 character to be pressed and doesn't care about special characters.  Input is stored into the command variable

	echo -e

	case "$command" in
    		"1") #Add a Car
			clear
			echo -e "ADDING A CAR"
			echo -e "--------------------\n"
			echo "What year is the car you'd like to add?"
			read -r year
			echo "What is the make of the car you'd like to add?"
			read -r make
			echo "What is the model of the car you'd like to add?"
			read -r model
			echo $year:$make:$model >> My_old_cars
			echo -e
			echo "Congratulations!  Your car, a "$year" "$make" "$model", has been added!"
			echo -e "\n--------------------\n"
			read -n 1 -s -r -p "Press any key to return to menu..." #Requires 1 character to be pressed, hides user input, and doesn't care about special characters to allow the user to press any key to continue.
			clear
		;;
    		"2") #Lists the cars
			clear
			echo -e "LIST OF CARS"
			echo "--------------------"
			sort My_old_cars | tr ':' ' ' #sorts cars by year and then replaces colons with spaces.
			echo -e "--------------------\n"
			read -n 1 -s -r -p "Press any key to return to menu..." #Same as before
			clear
		;;
    		"3") #Exits the program
			clear
			echo -e "FAREWELL"
			echo -e "--------------------\n"
			read -n 1 -s -r -p "Press any key to exit..." #Same as before
			clear
			break #breaks out of the while loop and ultimately ends the program.
		;;
     		*) #Default case
			clear
		;;
	esac
done
