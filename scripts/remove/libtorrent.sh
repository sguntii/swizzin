#!/bin/bash
#libtorrent remove script

if is_installed deluge || is_installed qbittorrent; then
	echo_error "It looks like Deluge or qBittorrent is still installed. Not proceeding."
	exit 1
fi

apt_remove --purge libtorrent-rasterbar*
dpkg -r libtorrent > /dev/null 2>&1
dpkg -r libtorrent-rasterbar > /dev/null 2>&1
dpkg -r python-libtorrent > /dev/null 2>&1
dpkg -r python3-libtorrent > /dev/null 2>&1
dpkg -r deluge-common > /dev/null 2>&1

unmark_installed "libtorrent"
