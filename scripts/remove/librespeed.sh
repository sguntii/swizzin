#!/bin/bash
# Librespeed uninstaller for swizzin
# Author: hwcltjn

function _removeLibreSpeed() {
	sudo rm -r /srv/librespeed
	sudo rm /etc/nginx/apps/librespeed.conf
	sudo #shellcheck source=sources/functions/lockfiles.sh
	. /etc/swizzin/sources/functions/lockfiles.sh
	unmark_installed "librespeed"
	systemctl reload nginx
}

_removeLibreSpeed
