###########
# comment out this flag if you're debugging the preprocessing. it's
# only here because of complaints about single quote characters.
FLAGS=-Wno-invalid-pp-token
PROCESS=gcc $(FLAGS) -E -x c -P -C -traditional-cpp -I ./src/include

#BLOG_SRC_DIR := src/blog
#BLOG_SOURCES := $(shell find $(BLOG_SRC_DIR) -name '*.md')
#BLOG_OUT_DIR := blog
#BLOG_GOALS := $(BLOG_SOURCES:$(BLOG_SRC_DIR)/%.md=$(BLOG_OUT_DIR)/%.html)

rebuild: clean website

website: index.html $(BLOG_GOALS)

index.html: src/index.md
	$(PROCESS) $^ | multimarkdown > index.html

#$(BLOG_OUT_DIR)/%.html: $(BLOG_SRC_DIR)/%.md
#	$(PROCESS) $^ | multimarkdown > $@

clean:
	rm -f index.html
#	rm -f $(BLOG_GOALS)

# TODO this is kinda weak
spellcheck: index.md
	aspell -c index.md
