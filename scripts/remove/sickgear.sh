#!/bin/bash
#
# Uninstaller for SickGear
#
systemctl disable --now -q sickgear
sudo rm /etc/nginx/apps/sickgear.conf > /dev/null 2>&1
sudo rm /etc/systemd/sickgear.service > /dev/null 2>&1
sudo #shellcheck source=sources/functions/lockfiles.sh
. /etc/swizzin/sources/functions/lockfiles.sh
unmark_installed "sickgear"
systemctl reload nginx
rm -rf /opt/sickgear
rm -rf /opt/.venv/sickgear
if [ -z "$(ls -A /opt/.venv)" ]; then
	rm -rf /opt/.venv
fi
#shellcheck source=sources/functions/lockfiles.sh
. /etc/swizzin/sources/functions/lockfiles.sh
unmark_installed "sickgear"
