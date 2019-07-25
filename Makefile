# Diamond-Patterns Makefile

SHELL=/bin/bash
MOD_NAME=diamond_patterns

install:
	python setup.py install

requirements:
	pip install -r requirements.txt

dev:
	pip install -r .requirements-dev.txt

clean:
	rm -rf build dist *.egg-info *.pyc var/tests

docs:
	sphinx-build -b html docs build/sphinx

test:
	tox -c .tox.ini

# update the manifest file with patterns
manifest:
	bin/manifest.py

release:
	python setup.py sdist bdist_wheel
	twine upload dist/*

.PHONY: clean install test docs release dev
