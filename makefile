all: readme

readme:
	today="Generated on $(date)"
	touch README.md
	echo "# Can you guess the number of files in the current directory?" > README.md
	echo >> README.md
	echo "Generated on" >> README.md
	date >> README.md
	echo >> README.md
	echo "The guessinggame.sh code has the following number of lines" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md