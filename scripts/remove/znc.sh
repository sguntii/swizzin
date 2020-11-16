#!/bin/bash
#ZNC Removal

systemctl disable -q znc
systemctl stop -q znc
sudo -u znc crontab -l | sed '/znc/d' | crontab -u znc -
apt_remove znc
userdel -rf znc
groupdel -f znc
#shellcheck source=sources/functions/lockfiles.sh
. /etc/swizzin/sources/functions/lockfiles.sh
unmark_installed "znc"
