function nbFiles {
	echo $(ls | wc -l)
}
function getUserInput {
	read userInput
	echo $userInput
}
echo "Guess how many files are in the current directory !"
while [[ input=$(getUserInput) -ne $(nbFiles) ]]
do
	if [[ $input -gt $(nbFiles) ]]
	then
		echo "Your guess was too high, try again !"
	elif [[ $input -lt $(nbFiles) ]]
	then
		echo "Your guess was too low, try again !"
	fi
done
echo "You guessed right !"
echo "Congratulations :)"
