##
# How to make a blog post:
# 1. Make a new markdown file: src/blog/my-cool-new-post.md
#
# 2. Update the src/blog/index.md to point to your new post 
#    (it be nice to autogen this index but we can do that later)
#
# 3. Run make, and this will generate blog/my-cool-new-post.html
##

PROCESS=gcc -E -x c -P -C -I ./src/include

BLOG_SRC_DIR := src/blog
BLOG_SOURCES := $(shell find $(BLOG_SRC_DIR) -name '*.md')
BLOG_OUT_DIR := blog
BLOG_GOALS := $(BLOG_SOURCES:$(BLOG_SRC_DIR)/%.md=$(BLOG_OUT_DIR)/%.html)

rebuild: clean website

website: index.html $(BLOG_GOALS)

index.html: src/index.md
	$(PROCESS) $^ | multimarkdown > index.html

$(BLOG_OUT_DIR)/%.html: $(BLOG_SRC_DIR)/%.md
	$(PROCESS) $^ | multimarkdown > $@

clean:
	rm -f index.html
	rm -f $(BLOG_GOALS)

# TODO this is kinda weak
spellcheck: index.md
	aspell -c index.md
