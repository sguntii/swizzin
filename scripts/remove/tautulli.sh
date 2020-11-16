#!/bin/bash
systemctl stop -q tautulli
systemctl disable -q tautulli
rm -rf /opt/tautulli
#shellcheck source=sources/functions/lockfiles.sh
. /etc/swizzin/sources/functions/lockfiles.sh
unmark_installed "tautulli"
rm -f /etc/nginx/apps/tautulli.conf
systemctl reload nginx
rm /etc/systemd/system/tautulli.service
