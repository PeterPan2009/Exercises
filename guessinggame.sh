#!usr/bin/env bash
#File: guessinggame.sh

filenum=0
#counting all files in the directory
let filenum=$(ls -l | wc -l)

#removing one entry since that lists the total 
let filenum=filenum-1

function guessinggame {
while [[ count -ne filenum ]]
do
	if [[ guessnum -eq filenum ]]
	then
		num=0

	elif [[ guessnum -gt filenum ]]
	then 
		echo You entered $guessnum which is high, please guess again
		num=1

	elif [[ guessnum -lt filenum ]]
	then
		echo You entered $guessnum which is low, please guess again
		num=1
	fi


	if [[ num -eq 1 ]]
	then
		echo Please re-enter a number
		read guessnum
		fi
	count=$guessnum

done
if [[ count -eq filenum ]] || [[ num -eq 0 ]]
then
	echo Congratulations you guessed the correct number of files $filenum
	echo You win

fi

}


#asking user to make their guess
echo Please guess the number of files in this directory
read guessnum
guessinggame guessnum
