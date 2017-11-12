#!/usr/bin/env bash

gems=(
	sass
	scss_lint
	bundler
	jekyll
	rails
)

# source rbenv before executing npm installation commands
[[ -s $HOME/.rbenv/bin/rbenv ]] && . ~/.rbenv/bin/rbenv

gem install ${gems[@]}
