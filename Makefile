# Makefile - generates README.md from guessinggame.sh

README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	echo "## Date and Time of Run" >> README.md
	@date >> README.md
	echo "" >> README.md
	echo "## Number of Lines in guessinggame.sh" >> README.md
	@wc -l < guessinggame.sh >> README.md
	echo "" >> README.md
	echo "This README was generated automatically by running \`make\`." >> README.md

.PHONY: clean
clean:
	rm -f README.md
