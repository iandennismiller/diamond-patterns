#!/bin/bash
# {{{ project.name }}}
# {{{ project.license }}}

source /usr/local/rvm/scripts/rvm

cd ~/{{{ project.login }}}
git pull
JEKYLL_ENV=production bundle exec jekyll build
rsync -acv --delete _site/ /var/www/{{{ project.login }}}/
