#!/bin/bash
#VSFTPd deyeeter by flying sausages for swizzin 2020

apt_remove vsftpd
rm /etc/vsftpd.conf

unmark_installed "vsftpd"
