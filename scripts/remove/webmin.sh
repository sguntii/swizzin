#! /bin/bash
# Webmin yeeter
# flying_sausages 2020 for swizzin

apt_remove webmin
rm -rf /etc/webmin
rm /etc/apt/sources.list.d/webmin.list

if is_installed nginx; then
	rm /etc/nginx/apps/webmin.conf
	systemctl reload nginx
fi

unmark_installed "webmin"
