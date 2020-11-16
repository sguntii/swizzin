#!/bin/bash
MASTER=$(cut -d: -f1 < /root/.master.info)
systemctl stop -q syncthing@${MASTER}
apt_remove --purge syncthing
rm /etc/systemd/system/syncthing@.service
rm -f /etc/nginx/apps/syncthing.conf
systemctl reload nginx
#shellcheck source=sources/functions/lockfiles.sh
. /etc/swizzin/sources/functions/lockfiles.sh
unmark_installed "syncthing"
