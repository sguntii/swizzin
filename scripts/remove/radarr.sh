#!/bin/sh
systemctl stop -q radarr
systemctl disable -q radarr
rm -rf /etc/systemd/system/radarr.service
rm -rf /opt/Radarr
rm -rf /etc/nginx/apps/radarr.conf
#shellcheck source=sources/functions/lockfiles.sh
. /etc/swizzin/sources/functions/lockfiles.sh
unmark_installed "radarr"
