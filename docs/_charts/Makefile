CHARTS = \
	launch-flowchart.png

MERMAID = ~/node_modules/.bin/mmdc

all: $(CHARTS)
	@echo done

%.png: %.mmd
	@echo compiling $<...
	$(MERMAID) -i "$(basename $<).mmd" -o $(basename $<).png
