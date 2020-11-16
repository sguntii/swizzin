#!/bin/bash
# Swizzin :: Shellinabox uninstaller
# Author: liara
#
# Copyright (C) 2017 Swizzin
# Licensed under GNU General Public License v3.0 GPL-3
#################################################################################
systemctl stop -q shellinabox
systemctl disable -q shellinabox

apt_remove --purge shellinabox

rm -rf /etc/systemd/system/shellinabox.service
#shellcheck source=sources/functions/lockfiles.sh
. /etc/swizzin/sources/functions/lockfiles.sh
unmark_installed "shellinabox"
rm -rf /etc/nginx/apps/shell.conf
systemctl reload nginx
