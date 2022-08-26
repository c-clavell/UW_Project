README.md:
	touch README.md
	echo "# UW Project" > README.md
	echo "**$$(date)**" >> README.md
	echo >> README
	echo "*$$(wc -l guessinggame.sh | grep -o -E '[0-9]+')*"  >> README.md

clean:
	rm README.md