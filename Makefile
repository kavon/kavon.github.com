
PROCESS=gcc -E -x c -P -C -I ./src/include

website: mainLanding blogLanding

mainLanding: src/index.md
	$(PROCESS) $^ | multimarkdown > index.html

blogLanding: src/blog/index.md
	$(PROCESS) $^ | multimarkdown > blog/index.html

spellcheck: index.md
	aspell -c index.md
