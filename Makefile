
build: index.html

index.html: index.md
	multimarkdown index.md > index.html

spellcheck: index.md
	aspell -c index.md
