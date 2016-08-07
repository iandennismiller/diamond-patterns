# Ian Dennis Miller
# diamond makefile

all: install
	@echo done

clean:
	rm -rf build dist *.egg-info *.pyc
	rm -rf output
	mkdir output

install:
	python setup.py install

docs:
	rm -rf var/sphinx/build
	sphinx-build -b html docs var/sphinx/build

open:
	open var/sphinx/build/index.html

release:
	python setup.py sdist upload -r https://pypi.python.org/pypi

.PHONY: all clean docs open release install
