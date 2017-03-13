#!/bin/bash
# (cc) 2016 diamond-patterns

# This script should be run as root

# ensure rvm is installed
curl -sSL https://get.rvm.io | bash -s stable --ruby
rvm install 2.3.0
rvm use 2.3.0
rvm rubygems latest

# ensure bundler is installed
gem install bundler

# ensure pip is current
pip install -U pip

# ensure virtualenvwrapper is installed
pip install -U virtualenv virtualenvwrapper
