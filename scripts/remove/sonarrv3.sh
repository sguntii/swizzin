#!/bin/bash

apt_remove --purge sonarr

rm -rf /var/lib/sonarr
rm -rf /usr/lib/sonarr

if is_installed nginx; then
	rm /etc/nginx/apps/sonarrv3.conf
	systemctl reload nginx >> $log 2>&1
fi

unmark_installed "sonarrv3"
