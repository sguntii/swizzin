#!/bin/bash

if ! is_installed sonarr; then
	echo_error "Sonarr not detected. Exiting!"
	exit 1
fi

box install sonarrv3
