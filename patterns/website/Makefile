# Website Makefile

all:
	@echo OK

# curl -L https://get.rvm.io | bash -s stable --auto-dotfiles --autolibs=enable --rails
# source ~/.rvm/scripts/rvm
# gem install bundler
requirements:
	chmod 755 _bin/*
	_bin/requirements.sh

new:
	_bin/template.py

serve:
	bundle exec jekyll serve

publish:
	_bin/publish.sh

artwork:
	_bin/artwork.sh

install:
	rsync -acv --delete _site/ ~/www/

incremental:
	bundle exec jekyll clean
	bundle exec jekyll serve --incremental

build:
	JEKYLL_ENV=production bundle exec jekyll build

production:
	JEKYLL_ENV=production bundle exec jekyll serve

git-hooks:
	_bin/git-hooks.sh

git-init:
	_bin/git-init.sh

js:
	java -jar ~/Library/Code/compiler.jar --js _site/js/main.js --js_output_file js/main.min.js

.PHONY: artwork depends new js publish serve incremental build production install all git-init git-hooks
