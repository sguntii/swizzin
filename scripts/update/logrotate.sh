#!/usr/bin/env bash

#Install logrotate definition for swizzin if it does not exist
if [ -d /root/logs ]; then
    echo_warn "Please note that swizzin logs are being permanently moved to /var/log/swizzin"
    echo_log_only "About to move logs"
    export log="/var/log/swizzin/box.log"
    mv /root/logs/swizzin.log /root/logs/box.log.1
    if [ -f /root/logs/install.log ]; then
        mv /root/logs/install.log /root/logs/setup.log
    fi
    mv /root/logs/* /var/log/swizzin
    rm -rf /root/logs
    echo_log_only "Logs moved to new location"
fi

if [ ! -e "/etc/logrotate.d/swizzin" ]; then
    #shellcheck source=sources/functions/logrotate
    . /etc/swizzin/sources/functions/logrotate
    install_swiz_logrotate
fi
