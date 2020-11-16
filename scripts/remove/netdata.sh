#! /bin/bash
# Netdata uninstaller for swizzin

systemctl disable -q netdata > /dev/null 2>&1
systemctl stop -q netdata
rm -rf $(which netdata)
rm -rf /etc/netdata
rm -rf /var/log/netdata
#shellcheck source=sources/functions/lockfiles.sh
. /etc/swizzin/sources/functions/lockfiles.sh
unmark_installed "netdata"
