#!/usr/bin/env bash

pkg.link() {
	stow common -t ~
}

pkg.install() {
	./scripts/rbenv.sh
	./scripts/gem.sh
}
