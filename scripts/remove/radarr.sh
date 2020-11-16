#!/bin/sh
systemctl stop -q radarr
systemctl disable -q radarr
rm -rf /etc/systemd/system/radarr.service
rm -rf /opt/Radarr
rm -rf /etc/nginx/apps/radarr.conf

unmark_installed "radarr"
