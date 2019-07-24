# Diamond-Patterns Makefile

SHELL=/bin/bash
MOD_NAME=diamond_patterns
TEST_CMD=tox -c .tox.ini

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
	$(TEST_CMD)

release:
	# first: python setup.py register -r https://pypi.python.org/pypi
	python setup.py sdist upload

.PHONY: clean install test docs release dev
