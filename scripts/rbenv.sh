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
	else
		echo "Current OS ($CURRENT_OS) not supported by the installation script"
	fi

	git clone https://github.com/sstephenson/rbenv.git "$RBENV_DIR"
else
	printf "rbenv is already installed."
fi

export PATH="$RBENV_DIR/bin:$PATH"
$RBENV_DIR/bin/rbenv init -

rbenv install 2.4.2
rbenv global 2.4.2
