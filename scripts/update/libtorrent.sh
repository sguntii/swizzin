#!/bin/bash
# Update for new libtorrent package
# Author: liara
# Copyright (c) swizzin 2018

if is_installed deluge; then
	if ! is_installed libtorrent; then
		mark_installed "libtorrent"
	fi
fi
