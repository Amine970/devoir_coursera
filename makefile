all: clean README.md
README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	date >> README.md
	echo "Number of lines in the program -> " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
clean:
	rm README.md
		
