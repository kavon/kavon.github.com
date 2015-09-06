
PROCESS=gcc -E -x c -P -C -I ./src/include

website: mainLanding plogLanding

mainLanding: src/index.md
	$(PROCESS) $^ | multimarkdown > index.html

plogLanding: src/plog/index.md
	$(PROCESS) $^ | multimarkdown > plog/index.html

spellcheck: index.md
	aspell -c index.md
