# Diamond-Patterns Makefile

SHELL=/bin/bash
MOD_NAME=diamond_patterns
TEST_CMD=nosetests -w $(MOD_NAME) -c etc/tests.cfg

install:
	python setup.py install

dev:
	pip install -r .requirements-dev.txt

clean:
	rm -rf build dist *.egg-info *.pyc var/tests

docs:
	rm -rf build/sphinx
	sphinx-build -b html docs build/sphinx

watch:
	watchmedo shell-command -R -p "*.py" -c 'date; $(TEST_CMD); date' .

test: clean install
	$(TEST_CMD)

release:
	# first: python setup.py register -r https://pypi.python.org/pypi
	python setup.py sdist upload

# create a homebrew install script
homebrew:
	bin/poet-homebrew.sh
	cp /tmp/project_system.rb etc/project_system.rb

.PHONY: clean install test watch docs release dev homebrew
