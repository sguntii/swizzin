#!/bin/bash

systemctl disable --now airsonic -q
deluser airsonic --system --quiet
rm -rf /opt/airsonic

if is_installed nginx; then
	rm /etc/nginx/apps/airsonic.conf
	systemctl reload nginx
fi

unmark_installed "airsonic"
