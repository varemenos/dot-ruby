#!/usr/bin/env bash

gems=(
	sass
	scss_lint
	bundler
	jekyll
	rails
)

# source rbenv before executing npm installation commands
eval "$(rbenv init -)"

gem install ${gems[@]}
