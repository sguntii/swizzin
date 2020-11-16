#!/bin/bash
# Librespeed uninstaller for swizzin
# Author: hwcltjn

function _removeLibreSpeed() {
	sudo rm -r /srv/librespeed
	sudo rm /etc/nginx/apps/librespeed.conf
	sudo
	unmark_installed "librespeed"
	systemctl reload nginx
}

_removeLibreSpeed
