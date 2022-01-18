#!/usr/bin/env bash


ENV \
	DRUSH_BACKDROP_VERSION=1.4.0

	# Drush modules
	drush dl registry_rebuild --default-major=7 --destination=$HOME/.drush >/dev/null; \
	mkdir $HOME/.drush/backdrop && curl -fsSL "https://github.com/backdrop-contrib/backdrop-drush-extension/archive/refs/tags/${DRUSH_BACKDROP_VERSION}.tar.gz" | tar xz -C $HOME/.drush/backdrop --strip-components 1; \
	drush cc drush