#!/bin/bash
# Functions for managing lockfiles

#Checks if an application is marked as installed
# Returns 0 if installed, 1 if not installed
is_installed() {
	if [[ -f /install/.$1.lock ]]; then
		return 0
	else
		return 1
	fi
}

# Marks an application as installed
# If already installed, will kill parent script
mark_installed() {
	if ! is_installed "$1"; then
		touch /install/."$1".lock
	else
		echo_error "$1 already marked as installed"
		exit 1
	fi
}

# Marks an application as removed
# If not yet installed, will kill parent script
unmark_installed() {
	if is_installed "$1"; then
		rm /install/."$1".lock
	else
		echo_error "$1 was not previously marked as installed"
		exit 1
	fi
}
