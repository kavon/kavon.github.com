
PROCESS=gcc -E -x c -P -C -I ./src/include/

website: mainLanding plogLanding

mainLanding: src/index.html
	$(PROCESS) $^ > index.html

plogLanding: src/plog/index.html
	$(PROCESS) $^ > plog/index.html

spellcheck: index.md
	aspell -c index.md
