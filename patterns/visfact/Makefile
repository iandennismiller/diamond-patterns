all: build open

build:
	visfact-make.py config.yaml

open:
	open build/argument-1.html

requirements:
	pip install -r requirements.txt
	python -c "import nltk; nltk.download('stopwords')"
	python -c "import nltk; nltk.download('punkt')"
	mkdir build src

.PHONY: build requirements all open

