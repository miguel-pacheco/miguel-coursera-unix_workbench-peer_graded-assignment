all: README.md
README.md: guessinggame.sh
	echo "#Peer-graded Assignment: Bash, Make, Git, and GitHub#" > README.md
	echo "" >> README.md
	echo "**make** was run on:" >> README.md
	date -R >> README.md
	echo "" >> README.md
	numlines=$(cat guessinggame.sh | wc -l)
	echo "**guessinggame.sh** has the following number of lines of code:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
