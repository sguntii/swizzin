#!/bin/bash
# xmr-stak(-cpu) removal

user=$(cut -d: -f1 < /root/.master.info)
systemctl disable -q xmr > /dev/null 2>&1
systemctl stop -q xmr
su - ${user} -c "screen -X -S xmr quit" > /dev/null 2>&1
rm -rf /home/${user}/.xmr
rm -rf /etc/systemd/system/xmr.service
rm -rf /usr/local/bin/xmr-stak-cpu
rm -rf /usr/local/bin/xmr-stak
#shellcheck source=sources/functions/lockfiles.sh
. /etc/swizzin/sources/functions/lockfiles.sh
unmark_installed "xmr-stak"
#shellcheck source=sources/functions/lockfiles.sh
. /etc/swizzin/sources/functions/lockfiles.sh
unmark_installed "xmr-stak-cpu"
