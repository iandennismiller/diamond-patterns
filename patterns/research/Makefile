# Research Makefile

help:
	@echo "Use 'make all' to create presentation and article."

all: presentation article
	@echo "Done"

presentation:
	mkdir presentation
	cd presentation && diamond pattern presentation

article:
	mkdir article
	cd article && diamond pattern article

.PHONY: help all presentation article
