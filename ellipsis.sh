#!/usr/bin/env bash

pkg.link() {
	fs.link_files common
}

pkg.install() {
	./scripts/rbenv.sh
}
