#!/usr/bin/env bash

export RBENV_DIR="$HOME/.rbenv"

if [ ! -e "$RBENV_DIR/bin/rbenv" ]; then
	echo "Installing rbenv"

	# rbenv dependencies by archlinux
	if [[ $CURRENT_OS == 'OS X' ]]; then
		echo "installing ruby-build dependency"
		brew install ruby-build
	elif [[ $CURRENT_OS == 'Linux' ]]; then
		echo "installing ruby-build dependency"
		packer -S ruby-build
	fi

	git clone https://github.com/sstephenson/rbenv.git "$RBENV_DIR"
else
	printf "rbenv $(rbenv global) is already installed."
fi

[[ -s "$RBENV_DIR/bin/rbenv" ]] && eval "$(rbenv init -)"

rbenv install 2.4.2
rbenv global 2.4.2
