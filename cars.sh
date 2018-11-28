#! /bin/bash
#cars.sh
#Nicholas Mirchandani

while true
do
	echo -e --------------------
	echo -e "1) Add a car"
	echo -e "2) List the cars"
	echo -e "3) Quit the Program"
	echo -e --------------------
	echo -e #blank echo for formatting
	read command
	case "$command" in
    		"1") #Add a Car
			echo "What year is the car you'd like to add?"
			read year
			echo "What is the make of the car you'd like to add?"
			read make
			echo "What is the model of the car you'd like to add?"
			read model
			echo $year:$make:$model >> My_old_cars
			echo -e #blank echo for formatting
		;;
    		"2") #Lists the cars
			sort My_old_cars | tr ':' ' '
			echo -e #blank echo for formatting
		;;
    		"3") clear
			echo -e "Goodbye!"
			break
		;;
     		*) echo "Sorry, I do not know what you want.";;
 esac
done
