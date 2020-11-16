#!/bin/bash
#VSFTPd deyeeter by flying sausages for swizzin 2020

apt_remove vsftpd
rm /etc/vsftpd.conf

#shellcheck source=sources/functions/lockfiles.sh
. /etc/swizzin/sources/functions/lockfiles.sh
unmark_installed "vsftpd"
