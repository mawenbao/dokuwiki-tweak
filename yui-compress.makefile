# Makefile for markdown conversion

JAVA = java
JAVA_FLAGS = -jar
YUI_JAR = /usr/local/lib/openjdk-6/yuicompressor-2.4.7.jar
YUI_FLAGS =
SOURCES_JS := $(wildcard *.js)
SOURCES_CSS = $(wildcard *.css)
SOURCES = $(SOURCES_JS) $(SOURCES_CSS)
OBJECTS_JS = $(patsubst %.js, %.min.js, $(SOURCES_JS))
OBJECTS_CSS = $(patsubst %.css, %.min.css, $(SOURCES_CSS))
OBJECTS = *.min.js *.min.css

all: js css

js: $(OBJECTS_JS)

css: $(OBJECTS_CSS)

$(OBJECTS_JS): %.min.js: %.js
	$(JAVA) $(JAVA_FLAGS) $(YUI_JAR) $(YUI_FLAGS) -o $@ $<

$(OBJECTS_CSS): %.min.css: %.css
	$(JAVA) $(JAVA_FLAGS) $(YUI_JAR) $(YUI_FLAGS) -o $@ $<

.PHONY: clean
clean:
	rm -f $(OBJECTS)
